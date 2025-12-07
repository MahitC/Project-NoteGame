extends Control

# -------------------- DATA --------------------
var data: Dictionary = JSON.parse_string("""{
  "sections": [
    {
      "questions": [
        {
          "correct_answer": "B",
          "explanation": "The ANC was originally founded as the South African Native National Congress (SANNC) in 1912 in Bloemfontein.",
          "options": {
            "A": "1902",
            "B": "1912",
            "C": "1922",
            "D": "1944"
          },
          "question": "When was the African National Congress (ANC) originally founded?"
        },
        {
          "correct_answer": "B",
          "explanation": "The early strategy of the ANC was focused on reversing the tide of segregation after the Union of South Africa in 1910.",
          "options": {
            "A": "To overthrow the South African government",
            "B": "To reverse the tide of segregation",
            "C": "To establish a communist regime",
            "D": "To form alliances with European colonial powers"
          },
          "question": "What was the main goal of the ANC's early strategy?"
        },
        {
          "correct_answer": "B",
          "explanation": "World War II brought an economic boom that reinvigorated the ANC.",
          "options": {
            "A": "The Great Depression",
            "B": "World War II",
            "C": "The election of the Nationalist Party",
            "D": "The Defiance Campaign"
          },
          "question": "Which event reinvigorated the ANC in the 1940s?"
        },
        {
          "correct_answer": "B",
          "explanation": "Anton Lembede was a key leader of the ANC Youth League, which led to the rise of important leaders like Walter Sisulu, Nelson Mandela, and Oliver Tambo.",
          "options": {
            "A": "Albert Luthuli",
            "B": "Anton Lembede",
            "C": "Walter Sisulu",
            "D": "Oliver Tambo"
          },
          "question": "Who was a key leader of the ANC Youth League formed in 1944?"
        },
        {
          "correct_answer": "B",
          "explanation": "The Youth League rejected the cautious, constitutional approach of the old ANC in favor of more aggressive tactics.",
          "options": {
            "A": "They fully supported it",
            "B": "They rejected it",
            "C": "They ignored it",
            "D": "They modified it slightly"
          },
          "question": "What was the ANC Youth League's stance on the old ANC's approach?"
        },
        {
          "correct_answer": "B",
          "explanation": "The election of the Nationalist Party in 1948 led the ANC to become more aggressive in its opposition to apartheid.",
          "options": {
            "A": "The ANC was banned",
            "B": "The Nationalist Party was elected",
            "C": "The Defiance Campaign was launched",
            "D": "The ANC adopted a communist agenda"
          },
          "question": "What significant event occurred in 1948 that influenced the ANC's approach?"
        },
        {
          "correct_answer": "C",
          "explanation": "Chief Albert Luthuli was placed in charge of the ANC in 1952 and continued the direction set by the Youth League.",
          "options": {
            "A": "Nelson Mandela",
            "B": "Oliver Tambo",
            "C": "Chief Albert Luthuli",
            "D": "Walter Sisulu"
          },
          "question": "Who was placed in charge of the ANC in 1952?"
        },
        {
          "correct_answer": "B",
          "explanation": "Chief Albert Luthuli initiated the Resist Apartheid Campaign, which opposed forced evictions from Sophiatown and elsewhere.",
          "options": {
            "A": "The Defiance Campaign",
            "B": "The Resist Apartheid Campaign",
            "C": "The Program of Economic Advancement",
            "D": "The Sophiatown Eviction Protest"
          },
          "question": "What was one of the key campaigns initiated by Chief Albert Luthuli?"
        },
        {
          "correct_answer": "B",
          "explanation": "Luthuli's Seventh Day Adventist upbringing influenced his commitment to the use of non-violence and moral example as a means of opposing apartheid.",
          "options": {
            "A": "His military training",
            "B": "His Seventh Day Adventist upbringing",
            "C": "His political alliances with communist groups",
            "D": "His education in Europe"
          },
          "question": "What influenced Chief Albert Luthuli's commitment to non-violence?"
        },
        {
          "correct_answer": "B",
          "explanation": "The 'Program of Economic Advancement' was developed to address issues of extreme poverty and homelessness among Africans.",
          "options": {
            "A": "Military training for ANC members",
            "B": "Addressing issues of extreme poverty and homelessness",
            "C": "Establishing diplomatic relations with foreign governments",
            "D": "Creating a separate state for Africans"
          },
          "question": "What was the primary focus of the ANC's 'Program of Economic Advancement'?"
        }
      ],
      "section_number": 1,
      "section_title": "Section 1"
    },
    {
      "questions": [
        {
          "correct_answer": "B",
          "explanation": "Albert Luthuli was elected President General of the ANC in 1952, making him a prominent figure in the anti-apartheid movement.",
          "options": {
            "A": "Nelson Mandela",
            "B": "Albert Luthuli",
            "C": "Oliver Tambo",
            "D": "Walter Sisulu"
          },
          "question": "Who was elected President General of the ANC in 1952?"
        },
        {
          "correct_answer": "C",
          "explanation": "Luthuli advocated for non-violent resistance as the only viable strategy to convince whites of the injustice of apartheid.",
          "options": {
            "A": "Armed resistance",
            "B": "Negotiation with the government",
            "C": "Non-violent resistance",
            "D": "Economic boycotts"
          },
          "question": "What was the main strategy advocated by Albert Luthuli in his writing 'The Road to Freedom is via the Cross'?"
        },
        {
          "correct_answer": "B",
          "explanation": "The Chieftaincy of Groutville was designated as a native reserve under the Native Lands Act of 1913.",
          "options": {
            "A": "Natives' Representation Act of 1936",
            "B": "Native Lands Act of 1913",
            "C": "Group Areas Act of 1950",
            "D": "Suppression of Communism Act of 1950"
          },
          "question": "Under which act was the Chieftaincy of Groutville designated as a native reserve?"
        },
        {
          "correct_answer": "A",
          "explanation": "Luthuli's refusal to resign from the ANC led to him being banned for two years under the Suppression of Communist Act, which restricted his activities.",
          "options": {
            "A": "He was banned for two years under the Suppression of Communist Act",
            "B": "He was arrested and sentenced to life imprisonment",
            "C": "He was forced into exile",
            "D": "He was stripped of his chieftaincy"
          },
          "question": "What was the consequence of Albert Luthuli's refusal to resign from the ANC?"
        },
        {
          "correct_answer": "B",
          "explanation": "Albert Luthuli burned his passbook as part of the Sharpville protest, symbolizing resistance against apartheid laws.",
          "options": {
            "A": "Defiance Campaign",
            "B": "Sharpville Protest",
            "C": "Rivonia Trial",
            "D": "Treason Trial"
          },
          "question": "Which protest involved Albert Luthuli burning his passbook?"
        },
        {
          "correct_answer": "B",
          "explanation": "Albert Luthuli won the Nobel Peace Prize in 1961 for his non-violent activism against apartheid.",
          "options": {
            "A": "1956",
            "B": "1961",
            "C": "1964",
            "D": "1967"
          },
          "question": "In what year did Albert Luthuli win the Nobel Peace Prize?"
        },
        {
          "correct_answer": "B",
          "explanation": "The decision to adopt armed struggle was a failure of the ANC as it played into the hands of the South African government, which labeled the ANC as a terrorist organization.",
          "options": {
            "A": "Lack of international support",
            "B": "Decision to adopt armed struggle",
            "C": "Failure to organize protests",
            "D": "Inability to attract members"
          },
          "question": "What was one of the failures of the ANC mentioned in the study notes?"
        },
        {
          "correct_answer": "A",
          "explanation": "The Rivonia Trial in 1964, where senior ANC leaders were jailed, led to the movement going quiet for an extended period.",
          "options": {
            "A": "The Rivonia Trial",
            "B": "The Treason Trial",
            "C": "The Sharpville Massacre",
            "D": "The Bantu Education Act"
          },
          "question": "What event led to the ANC becoming inactive for an extended period?"
        },
        {
          "correct_answer": "C",
          "explanation": "The South African Communist Party (SACP) was founded in 1921 and was inspired by the Bolshevik Revolution in Russia.",
          "options": {
            "A": "African National Congress (ANC)",
            "B": "Pan Africanist Congress (PAC)",
            "C": "South African Communist Party (SACP)",
            "D": "Congress of the People (COP)"
          },
          "question": "Which organization was founded in 1921 and inspired by the Bolshevik Revolution in Russia?"
        },
        {
          "correct_answer": "B",
          "explanation": "The South African Communist Party (SACP) experienced major growth during World War II, as it gained support for its anti-fascist stance.",
          "options": {
            "A": "1920s",
            "B": "During World War II",
            "C": "1950s",
            "D": "1960s"
          },
          "question": "What was a major growth period for the South African Communist Party (SACP)?"
        }
      ],
      "section_number": 2,
      "section_title": "Section 2"
    },
    {
      "questions": [
        {
          "correct_answer": "A",
          "explanation": "The Rand Revolt was sparked by the Smuts government's proposal to cut costs by lowering wages of white workers and suspending the color bar, which disallowed blacks from certain positions.",
          "options": {
            "A": "The Smuts government's proposal to lower wages of white workers and suspend the color bar",
            "B": "The SACP's shift to supporting Black majority rule",
            "C": "The National Party's campaign against the 'red' and 'black' perils",
            "D": "The ANC's alliance with the SACP"
          },
          "question": "What was the primary cause of the Rand Revolt in 1922?"
        },
        {
          "correct_answer": "A",
          "explanation": "The SACP initially picked the side of Whites, meaning they were part of a racist movement at that time, as noted in the study notes.",
          "options": {
            "A": "Because the SACP was originally a racist movement",
            "B": "Because the SACP believed in class struggle over racial equality",
            "C": "Because the Comintern ordered them to support the White workers",
            "D": "Because the ANC requested their support"
          },
          "question": "Why did the SACP initially side with White workers during the Rand Revolt?"
        },
        {
          "correct_answer": "A",
          "explanation": "By 1928, the SACP's membership had shifted to a majority of Black members, and the party began calling for Black majority rule.",
          "options": {
            "A": "The SACP became predominantly Black and called for Black majority rule",
            "B": "The SACP merged with the ANC",
            "C": "The SACP was declared illegal by the Smuts government",
            "D": "The SACP shifted its focus to armed conflict"
          },
          "question": "What significant change occurred in the SACP's membership by 1928?"
        },
        {
          "correct_answer": "B",
          "explanation": "The SACP worked closely with trade unions and helped establish the African Mine Workers' Union (AMWU), whose first president, JB Marks, was a leading black Communist.",
          "options": {
            "A": "The African National Congress (ANC)",
            "B": "The African Mine Workers' Union (AMWU)",
            "C": "The National Party",
            "D": "The Congress of Democrats"
          },
          "question": "Which organization did the SACP help establish in the 1920s?"
        },
        {
          "correct_answer": "A",
          "explanation": "The National Party campaigned against the 'red' (communist) and 'black' (African nationalism) perils in the 1948 election, leading to stricter action and the strengthening of apartheid.",
          "options": {
            "A": "The 'red' (communist) and 'black' (African nationalism) perils",
            "B": "The 'white' and 'brown' immigration perils",
            "C": "The 'economic' and 'social' perils",
            "D": "The 'foreign' and 'domestic' investment perils"
          },
          "question": "What were the two 'Perils' that the National Party campaigned against in the 1948 election?"
        },
        {
          "correct_answer": "B",
          "explanation": "The SACP played a role in the Congress of the People through the 'front' of the white-dominated Congress of Democrats, as noted in the study notes.",
          "options": {
            "A": "The SACP openly led the Congress of the People",
            "B": "The SACP operated through the 'front' of the white-dominated Congress of Democrats",
            "C": "The SACP refused to participate in the Congress of the People",
            "D": "The SACP was the sole organizer of the Congress of the People"
          },
          "question": "What was the role of the SACP in the Congress of the People?"
        },
        {
          "correct_answer": "B",
          "explanation": "Arthur Goldreich, Denis Goldberg, Joe Slovo, and Lionel Bernstein were all members of the MK high command, as noted in the study notes.",
          "options": {
            "A": "Nelson Mandela and Walter Sisulu",
            "B": "Arthur Goldreich, Denis Goldberg, Joe Slovo, and Lionel Bernstein",
            "C": "Albert Luthuli and Oliver Tambo",
            "D": "Govan Mbeki and Chris Hani"
          },
          "question": "Which SACP members were part of the MK high command?"
        },
        {
          "correct_answer": "C",
          "explanation": "Tambo, Kotane, and Slovo all went to the Soviet Union to receive guerrilla training in 1964, as noted in the study notes.",
          "options": {
            "A": "Cuba",
            "B": "China",
            "C": "The Soviet Union",
            "D": "Zimbabwe"
          },
          "question": "Where did SACP leaders Tambo, Kotane, and Slovo go for guerrilla training in 1964?"
        },
        {
          "correct_answer": "B",
          "explanation": "The SACP remained ideologically true to its revolutionary heritage, arguing that capitalism had given rise to the system of exploitation and racial oppression.",
          "options": {
            "A": "The SACP supported capitalism as a means to achieve racial equality",
            "B": "The SACP argued that capitalism had given rise to exploitation and racial oppression",
            "C": "The SACP believed in a mixed economy with elements of capitalism and socialism",
            "D": "The SACP sought to reform capitalism rather than overthrow it"
          },
          "question": "What was the SACP's ideological stance regarding capitalism?"
        },
        {
          "correct_answer": "C",
          "explanation": "WH Andrews, aka 'Comrade Bill,' was leading the SACP during the Rand Revolt, as noted in the study notes.",
          "options": {
            "A": "Joe Slovo",
            "B": "JB Marks",
            "C": "WH Andrews, aka 'Comrade Bill'",
            "D": "Josiah Gumede"
          },
          "question": "Who was the leader of the SACP during the Rand Revolt?"
        }
      ],
      "section_number": 3,
      "section_title": "Section 3"
    },
    {
      "questions": [
        {
          "correct_answer": "C",
          "explanation": "MK was created to conduct sabotage operations, targeting government infrastructure like power stations and police stations, while avoiding loss of human life.",
          "options": {
            "A": "To engage in full-scale warfare against the South African government",
            "B": "To conduct peaceful negotiations with the apartheid regime",
            "C": "To carry out sabotage operations to disrupt government infrastructure",
            "D": "To organize mass protests and civil disobedience"
          },
          "question": "What was the primary objective of Umkhonto We Sizwe (MK) when it was created in 1961?"
        },
        {
          "correct_answer": "A",
          "explanation": "The Sharpeville Massacre demonstrated the government's willingness to use extreme force, prompting the creation of MK as a response.",
          "options": {
            "A": "The Sharpeville Massacre",
            "B": "The Defiance Campaign",
            "C": "The formation of the PAC",
            "D": "The adoption of the Program of Action by the ANC"
          },
          "question": "Which event directly influenced the creation of Umkhonto We Sizwe (MK) in 1961?"
        },
        {
          "correct_answer": "C",
          "explanation": "Nelson Mandela was a key figure in the formation and early leadership of MK, playing a crucial role in its establishment and operations.",
          "options": {
            "A": "Walter Sisulu",
            "B": "Chief Luthuli",
            "C": "Nelson Mandela",
            "D": "Anton Lembede"
          },
          "question": "Who was the most influential figure in the early years of Umkhonto We Sizwe (MK)?"
        },
        {
          "correct_answer": "B",
          "explanation": "MK's members were largely inexperienced in armed struggle, and the organization lacked the necessary training and expertise to achieve significant success.",
          "options": {
            "A": "Lack of funding and resources",
            "B": "Inexperience in armed struggle and untrained members",
            "C": "Opposition from the African National Congress (ANC)",
            "D": "Government crackdowns and increased penalties for sabotage"
          },
          "question": "What was the main reason for the limited success of Umkhonto We Sizwe (MK)?"
        },
        {
          "correct_answer": "B",
          "explanation": "Mandela was a prominent member of the ANC Youth League and played a key role in organizing the Defiance Campaign, which was a precursor to the formation of MK.",
          "options": {
            "A": "He was the President of the ANC",
            "B": "He was a member of the ANC Youth League and helped organize the Defiance Campaign",
            "C": "He was the ANC's chief negotiator with the government",
            "D": "He was the ANC's spokesperson for international relations"
          },
          "question": "What role did Nelson Mandela play in the African National Congress (ANC) before the formation of MK?"
        },
        {
          "correct_answer": "B",
          "explanation": "MK targeted government infrastructure such as power stations, post offices, and police stations to disrupt the apartheid regime's operations.",
          "options": {
            "A": "Military bases and government offices",
            "B": "Power stations, post offices, and police stations",
            "C": "Residential areas and public transportation",
            "D": "Schools and hospitals"
          },
          "question": "Which of the following was a target of Umkhonto We Sizwe (MK) sabotage operations?"
        },
        {
          "correct_answer": "C",
          "explanation": "The General Laws Amendment Act increased penalties for sabotage, which made it more difficult for MK to carry out its operations.",
          "options": {
            "A": "It legalized MK's activities, allowing them to operate more freely",
            "B": "It provided MK with additional funding and resources",
            "C": "It increased penalties for sabotage, making it harder for MK to operate",
            "D": "It led to the disbandment of MK"
          },
          "question": "What was the significance of the General Laws Amendment Act (1962) for Umkhonto We Sizwe (MK)?"
        },
        {
          "correct_answer": "B",
          "explanation": "While MK's operations were short-lived and largely unsuccessful, its legacy was to inspire later resistance movements and keep the spirit of resistance alive.",
          "options": {
            "A": "It successfully overthrew the apartheid government",
            "B": "It inspired later resistance movements in the 1970s and kept the spirit of resistance alive",
            "C": "It led to the immediate release of Nelson Mandela and other political prisoners",
            "D": "It ended the apartheid system through negotiations with the government"
          },
          "question": "What was the legacy of Umkhonto We Sizwe (MK) in the struggle against apartheid?"
        },
        {
          "correct_answer": "C",
          "explanation": "Mandela studied at the University of Fort Hare, an institution known for its political activism, before being expelled for his involvement in a student protest.",
          "options": {
            "A": "University of Cape Town",
            "B": "University of the Witwatersrand",
            "C": "University of Fort Hare",
            "D": "University of Johannesburg"
          },
          "question": "Where did Nelson Mandela study before being expelled for participating in a student protest?"
        },
        {
          "correct_answer": "B",
          "explanation": "Mandela was motivated by his opposition to the ANC's passive approach and sought to advocate for more active resistance against the apartheid regime.",
          "options": {
            "A": "To seek personal political power and influence",
            "B": "To oppose the passive approach of the ANC's old guard and advocate for more active resistance",
            "C": "To negotiate with the apartheid government for gradual reforms",
            "D": "To focus on economic development and social welfare programs"
          },
          "question": "What was the primary motivation behind Nelson Mandela's involvement in the ANC?"
        }
      ],
      "section_number": 4,
      "section_title": "Section 4"
    },
    {
      "questions": [
        {
          "correct_answer": "B",
          "explanation": "Mandela was arrested and given a six-month banning order from ANC activity, which gave him the time to open the law firm with Oliver Tambo.",
          "options": {
            "A": "His election as ANC president",
            "B": "A six-month banning order from ANC activity",
            "C": "The Defiance Campaign",
            "D": "The Treason Trials"
          },
          "question": "What significant event led to Nelson Mandela opening South Africa’s first Black law firm in Johannesburg?"
        },
        {
          "correct_answer": "C",
          "explanation": "Mandela was a known Africanist prior to 1952, heavily influenced by Lembede.",
          "options": {
            "A": "Communism",
            "B": "Capitalism",
            "C": "Africanism",
            "D": "Libertarianism"
          },
          "question": "Which political ideology heavily influenced Nelson Mandela before 1952?"
        },
        {
          "correct_answer": "A",
          "explanation": "Mandela was a vocal opponent of communism, criticizing the communist-organized May Day stay-at-home strike of 1950.",
          "options": {
            "A": "He was a vocal opponent of communism",
            "B": "He was a strong supporter of communism",
            "C": "He was indifferent to communism",
            "D": "He was a member of the SACP"
          },
          "question": "What was Nelson Mandela’s initial stance on communism?"
        },
        {
          "correct_answer": "B",
          "explanation": "Over time, Mandela became a firm believer in a non-racial approach as his politics swung left.",
          "options": {
            "A": "He became more conservative",
            "B": "He swung left and embraced a non-racial approach",
            "C": "He abandoned the ANC",
            "D": "He became a strong supporter of apartheid"
          },
          "question": "What political shift occurred in Mandela’s beliefs over time?"
        },
        {
          "correct_answer": "B",
          "explanation": "Mandela drafted the ‘M Plan’ in 1953, which included contingency measures for the movement in case the ANC was banned and forced underground.",
          "options": {
            "A": "The Freedom Charter",
            "B": "The M Plan",
            "C": "The Defiance Campaign",
            "D": "The Congress Alliance"
          },
          "question": "What strategic plan did Nelson Mandela draft in 1953?"
        },
        {
          "correct_answer": "B",
          "explanation": "Mandela was a main defendant in the Treason Trials but was eventually acquitted.",
          "options": {
            "A": "He was sentenced to life imprisonment",
            "B": "He was acquitted",
            "C": "He was exiled",
            "D": "He was banned from practicing law"
          },
          "question": "What was the outcome of the Treason Trials for Nelson Mandela?"
        },
        {
          "correct_answer": "D",
          "explanation": "Mandela addressed a huge crowd at the All-in African Conference, urging the government to establish a democratic convention representing all South Africans.",
          "options": {
            "A": "To negotiate with the South African government",
            "B": "To draft the Freedom Charter",
            "C": "To plan an armed struggle",
            "D": "To address a huge crowd and urge the government to establish a democratic convention"
          },
          "question": "What was the purpose of the All-in African Conference organized by the ANC in 1961?"
        },
        {
          "correct_answer": "C",
          "explanation": "Mandela went into hiding after his speech at the All-in African Conference, knowing the government would come after him.",
          "options": {
            "A": "The Defiance Campaign",
            "B": "The Treason Trials",
            "C": "His speech at the All-in African Conference",
            "D": "The drafting of the Freedom Charter"
          },
          "question": "Which event led to Mandela going into hiding?"
        },
        {
          "correct_answer": "B",
          "explanation": "Mandela drew closer to the SACP and was influenced by leading communists such as Moses Kotane, Yusuf Dadoo, and JB Marks.",
          "options": {
            "A": "FW de Klerk and Oliver Tambo",
            "B": "Moses Kotane, Yusuf Dadoo, and JB Marks",
            "C": "Luthuli and Lembede",
            "D": "The leaders of the Defiance Campaign"
          },
          "question": "Who were the influential communists that Mandela worked with, leading to his shift in politics?"
        },
        {
          "correct_answer": "C",
          "explanation": "The negotiations between Mandela and PM FW de Klerk led to the Convention for a Democratic South Africa (CODESA) in 1990.",
          "options": {
            "A": "The establishment of apartheid",
            "B": "The creation of the Congress Alliance",
            "C": "The Convention for a Democratic South Africa (CODESA)",
            "D": "The Treason Trials"
          },
          "question": "What was the result of the negotiations between Mandela and PM FW de Klerk in 1990?"
        }
      ],
      "section_number": 5,
      "section_title": "Section 5"
    }
  ],
  "total_sections": 5
}""")

var current_section := 0
var current_question := 0

# -------------------- READY --------------------
func _ready() -> void:
	if data == null:
		push_error("JSON failed to parse!")
		return

	$NextSectionButton.visible = false
	display_question()

# -------------------- DISPLAY QUESTION --------------------
func display_question() -> void:
	var section = data["sections"][current_section]
	var questions = section["questions"]
	var q = questions[current_question]

	# Set question text
	$Question.text = q["question"]

	# Set option button text
	$Button.text  = "A: " + q["options"]["A"]
	$Button2.text = "B: " + q["options"]["B"]
	$Button3.text = "C: " + q["options"]["C"]
	$Button4.text = "D: " + q["options"]["D"]

	# Show Next Section button only on the 10th question
	$NextSectionButton.visible = current_question == 9

# -------------------- HANDLE OPTION BUTTON PRESS --------------------
func _on_option_pressed(button: Button) -> void:
	var section = data["sections"][current_section]
	var q = section["questions"][current_question]
	var correct_answer = q["correct_answer"]  # 'A', 'B', 'C', or 'D'

	# Determine which letter was pressed
	var pressed_letter := ""
	if button == $Button:
		pressed_letter = "A"
	elif button == $Button2:
		pressed_letter = "B"
	elif button == $Button3:
		pressed_letter = "C"
	elif button == $Button4:
		pressed_letter = "D"

	# Give feedback
	if pressed_letter == correct_answer:
		print("Correct!")
	else:
		print("Wrong! Correct answer was: ", correct_answer)

	# Move to next question
	next_question()

# -------------------- NEXT QUESTION --------------------
func next_question() -> void:
	var total_questions = data["sections"][current_section]["questions"].size()

	if current_question < total_questions - 1:
		current_question += 1
		display_question()
	else:
		print("End of section — press Next Section")
		$NextSectionButton.visible = true

# -------------------- NEXT SECTION --------------------
func _on_next_section_button_pressed() -> void:
	var total_sections = data["total_sections"]

	if current_section < total_sections - 1:
		current_section += 1
		current_question = 0
		$NextSectionButton.visible = false
		display_question()
	else:
		print("No more sections available.")

# -------------------- CONNECT ALL BUTTONS --------------------
func _on_button_pressed() -> void:
	_on_option_pressed($Button)

func _on_button_2_pressed() -> void:
	_on_option_pressed($Button2)

func _on_button_3_pressed() -> void:
	_on_option_pressed($Button3)

func _on_button_4_pressed() -> void:
	_on_option_pressed($Button4)
