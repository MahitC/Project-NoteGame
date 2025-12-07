import os
import json
import requests
import dotenv

dotenv.load_dotenv()

OPENROUTER_API_KEY = os.getenv('OPENROUTER_API_KEY')
OPENROUTER_API_URL = "https://openrouter.ai/api/v1/chat/completions"

def call_mistral_api(prompt, max_tokens=4000):
    """Call Mistral 7B Instruct via OpenRouter API."""
    if not OPENROUTER_API_KEY:
        raise ValueError("OPENROUTER_API_KEY environment variable is not set")
    
    headers = {
        "Authorization": f"Bearer {OPENROUTER_API_KEY}",
        "Content-Type": "application/json",
        "HTTP-Referer": "https://github.com/your-repo",  # Optional: replace with your app URL
        "X-Title": "NoteGame Question Generator"  # Optional: replace with your app name
    }
    
    payload = {
        "model": "mistralai/mistral-7b-instruct:free",
        "messages": [
            {
                "role": "system",
                "content": "You are an expert educational content creator. Your task is to analyze study notes and create well-structured multiple-choice questions that test understanding of the material."
            },
            {
                "role": "user",
                "content": prompt
            }
        ],
        "max_tokens": max_tokens,
        "temperature": 0.7
    }
    
    try:
        response = requests.post(OPENROUTER_API_URL, headers=headers, json=payload, timeout=60)
        response.raise_for_status()
        result = response.json()
        
        if 'choices' in result and len(result['choices']) > 0:
            return result['choices'][0]['message']['content']
        else:
            raise Exception("Unexpected API response format")
    
    except requests.exceptions.RequestException as e:
        raise Exception(f"API request failed: {str(e)}")

def split_text_into_sections(text, target_sections=5):
    """Split text into exactly target_sections (default 5) logical sections."""
    # First, try to identify natural section breaks
    initial_sections = []
    lines = text.split('\n')
    current_section = []
    
    for line in lines:
        line = line.strip()
        if not line:
            continue
        
        # Check if line looks like a heading
        is_heading = (
            len(line) < 100 and 
            (line.isupper() or (line and line[0].isdigit()) or 
             line.startswith('#') or line.startswith('Chapter') or 
             line.startswith('Section') or line.startswith('Part'))
        )
        
        # If we hit a heading and have content, start a new section
        if is_heading and current_section:
            initial_sections.append('\n'.join(current_section))
            current_section = [line]
        else:
            current_section.append(line)
    
    # Add the last section
    if current_section:
        initial_sections.append('\n'.join(current_section))
    
    # If we didn't find good sections, split by paragraphs
    if len(initial_sections) == 0:
        paragraphs = [p.strip() for p in text.split('\n\n') if p.strip()]
        if paragraphs:
            initial_sections = paragraphs
        else:
            initial_sections = [text]
    
    # Now ensure we have exactly target_sections sections
    words = text.split()
    total_words = len(words)
    words_per_section = total_words // target_sections
    
    # If we have too many sections, merge them
    if len(initial_sections) > target_sections:
        merged_sections = []
        current_merged = []
        current_word_count = 0
        
        for section in initial_sections:
            section_words = len(section.split())
            
            # If adding this section would exceed target and we have enough sections, start new
            if (current_word_count + section_words > words_per_section * 1.2 and 
                current_merged and len(merged_sections) < target_sections - 1):
                merged_sections.append('\n\n'.join(current_merged))
                current_merged = [section]
                current_word_count = section_words
            else:
                current_merged.append(section)
                current_word_count += section_words
        
        # Add the last merged section
        if current_merged:
            merged_sections.append('\n\n'.join(current_merged))
        
        # If still too many, force merge to exactly target_sections
        if len(merged_sections) > target_sections:
            words_per_final = total_words // target_sections
            final_sections = []
            current_final = []
            current_final_words = 0
            
            for section in merged_sections:
                section_words = len(section.split())
                if (current_final_words + section_words > words_per_final * 1.1 and 
                    current_final and len(final_sections) < target_sections - 1):
                    final_sections.append('\n\n'.join(current_final))
                    current_final = [section]
                    current_final_words = section_words
                else:
                    current_final.append(section)
                    current_final_words += section_words
            
            if current_final:
                final_sections.append('\n\n'.join(current_final))
            
            merged_sections = final_sections[:target_sections]
        
        sections = merged_sections
    # If we have too few sections, split them further
    elif len(initial_sections) < target_sections:
        # Split larger sections to reach target_sections
        sections = []
        words_per_section = total_words // target_sections
        
        for section in initial_sections:
            section_words = section.split()
            section_word_count = len(section_words)
            
            # If section is large enough to split, do so
            if section_word_count > words_per_section * 1.5 and len(sections) < target_sections - 1:
                # Split this section
                split_point = words_per_section
                first_part = ' '.join(section_words[:split_point])
                second_part = ' '.join(section_words[split_point:])
                
                if first_part.strip():
                    sections.append(first_part)
                if second_part.strip() and len(sections) < target_sections:
                    sections.append(second_part)
            else:
                sections.append(section)
        
        # If still not enough, split by word count evenly
        if len(sections) < target_sections:
            words_per_section = total_words // target_sections
            sections = []
            
            for i in range(target_sections):
                start_idx = i * words_per_section
                if i == target_sections - 1:
                    # Last section gets all remaining words
                    section_words = words[start_idx:]
                else:
                    section_words = words[start_idx:start_idx + words_per_section]
                sections.append(' '.join(section_words))
    else:
        sections = initial_sections
    
    # Final check: ensure exactly target_sections
    if len(sections) != target_sections:
        # Force split by word count
        words_per_section = total_words // target_sections
        sections = []
        
        for i in range(target_sections):
            start_idx = i * words_per_section
            if i == target_sections - 1:
                section_words = words[start_idx:]
            else:
                section_words = words[start_idx:start_idx + words_per_section]
            sections.append(' '.join(section_words))
    
    return sections[:target_sections]

def generate_questions_for_section(section_text, section_number):
    """Generate 10 questions for a given section of text."""
    prompt = f"""Analyze the following study notes and create exactly 10 multiple-choice questions that test understanding of the key concepts.

For each question, provide:
1. A clear, concise question
2. 4 answer options (A, B, C, D)
3. The correct answer (A, B, C, or D)
4. A brief explanation of why the correct answer is right

Format your response as a JSON array with this exact structure:
[
  {{
    "question": "Question text here?",
    "options": {{
      "A": "Option A text",
      "B": "Option B text",
      "C": "Option C text",
      "D": "Option D text"
    }},
    "correct_answer": "A",
    "explanation": "Brief explanation of the correct answer"
  }}
]

Study Notes:
{section_text}

Return ONLY the JSON array, no additional text or markdown formatting."""

    try:
        response = call_mistral_api(prompt, max_tokens=4000)
        
        # Try to extract JSON from the response
        # Sometimes the API returns markdown code blocks or special tokens
        response = response.strip()
        
        # Remove Mistral's special tokens like <s>
        if response.startswith('<s>'):
            response = response[3:].strip()
        if response.startswith('</s>'):
            response = response[4:].strip()
        if response.endswith('</s>'):
            response = response[:-4].strip()
        
        # Remove markdown code blocks
        if response.startswith('```json'):
            response = response[7:]
        if response.startswith('```'):
            response = response[3:]
        if response.endswith('```'):
            response = response[:-3]
        response = response.strip()
        
        # Try to find the JSON array in the response
        # Look for the first '[' and try to extract complete JSON
        start_idx = response.find('[')
        if start_idx == -1:
            raise ValueError("No JSON array found in response")
        
        # Find the matching closing bracket
        bracket_count = 0
        end_idx = start_idx
        for i in range(start_idx, len(response)):
            if response[i] == '[':
                bracket_count += 1
            elif response[i] == ']':
                bracket_count -= 1
                if bracket_count == 0:
                    end_idx = i + 1
                    break
        
        # Extract the JSON portion
        json_str = response[start_idx:end_idx]
        
        # If we didn't find a complete JSON, try to fix incomplete JSON
        if bracket_count > 0:
            # JSON might be incomplete, try to close it
            json_str += ']' * bracket_count
            # Try to remove incomplete last object
            last_brace = json_str.rfind('{')
            if last_brace > 0:
                # Check if the last object is incomplete
                last_obj = json_str[last_brace:]
                if last_obj.count('{') > last_obj.count('}'):
                    # Remove incomplete last object
                    json_str = json_str[:last_brace].rstrip(',') + ']'
        
        # Parse JSON
        questions = json.loads(json_str)
        
        # Validate and ensure we have exactly 10 questions
        if not isinstance(questions, list):
            raise ValueError("Response is not a list")
        
        # Ensure each question has the required fields
        validated_questions = []
        for q in questions[:10]:  # Take up to 10 questions
            if all(key in q for key in ['question', 'options', 'correct_answer', 'explanation']):
                if 'A' in q['options'] and 'B' in q['options'] and 'C' in q['options'] and 'D' in q['options']:
                    if q['correct_answer'] in ['A', 'B', 'C', 'D']:
                        validated_questions.append(q)
        
        if len(validated_questions) < 5:
            raise ValueError(f"Only generated {len(validated_questions)} valid questions")
        
        return validated_questions[:10]  # Return up to 10 questions
    
    except json.JSONDecodeError as e:
        print(f"JSON parsing error: {str(e)}")
        print(f"Response was: {response[:500]}")
        raise Exception("Failed to parse questions from API response")
    except Exception as e:
        print(f"Error generating questions: {str(e)}")
        raise

def generate_questions_from_text(text):
    """Generate questions from the entire text, organizing by sections (exactly 5 sections)."""
    # Split text into exactly 5 sections
    sections = split_text_into_sections(text, target_sections=5)
    
    print(f"Split text into {len(sections)} sections (target: 5)")
    
    all_sections_data = []
    
    for i, section in enumerate(sections, 1):
        if len(section.strip()) < 100:  # Skip very short sections
            continue
        
        print(f"Generating questions for section {i}...")
        try:
            questions = generate_questions_for_section(section, i)
            
            section_data = {
                "section_number": i,
                "section_title": f"Section {i}",
                "questions": questions
            }
            
            all_sections_data.append(section_data)
            print(f"Generated {len(questions)} questions for section {i}")
        
        except Exception as e:
            print(f"Error generating questions for section {i}: {str(e)}")
            continue
    
    if not all_sections_data:
        raise Exception("Failed to generate questions from the document")
    
    return {
        "sections": all_sections_data,
        "total_sections": len(all_sections_data)
    }

