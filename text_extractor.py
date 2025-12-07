import os
import PyPDF2
from docx import Document

def limit_text_to_words(text, min_words=1500, max_words=2000):
    """Limit text to a target word count between min_words and max_words."""
    words = text.split()
    word_count = len(words)
    
    # If text is already within range, return as is
    if min_words <= word_count <= max_words:
        return text
    
    # If text is too short, return what we have (but warn)
    if word_count < min_words:
        print(f"Warning: Text has only {word_count} words, less than target {min_words}")
        return text
    
    # If text is too long, truncate to max_words
    if word_count > max_words:
        truncated_words = words[:max_words]
        truncated_text = ' '.join(truncated_words)
        print(f"Text truncated from {word_count} words to {max_words} words")
        return truncated_text
    
    return text

def extract_text_from_pdf(filepath):
    """Extract text from a PDF file."""
    text = ""
    try:
        with open(filepath, 'rb') as file:
            pdf_reader = PyPDF2.PdfReader(file)
            for page in pdf_reader.pages:
                text += page.extract_text() + "\n"
    except Exception as e:
        raise Exception(f"Error reading PDF: {str(e)}")
    return text

def extract_text_from_docx(filepath):
    """Extract text from a Word document."""
    text = ""
    try:
        doc = Document(filepath)
        for paragraph in doc.paragraphs:
            text += paragraph.text + "\n"
    except Exception as e:
        raise Exception(f"Error reading Word document: {str(e)}")
    return text

def extract_text_from_file(filepath):
    """Extract text from a file based on its extension and limit to 1500-2000 words."""
    file_ext = filepath.rsplit('.', 1)[1].lower()
    
    if file_ext == 'pdf':
        text = extract_text_from_pdf(filepath)
    elif file_ext in ['doc', 'docx']:
        text = extract_text_from_docx(filepath)
    else:
        raise ValueError(f"Unsupported file type: {file_ext}")
    
    # Limit text to 1500-2000 words
    text = limit_text_to_words(text, min_words=1500, max_words=2000)
    
    return text

