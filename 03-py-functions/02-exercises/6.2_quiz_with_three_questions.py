def ask_question(question_text):
    answer = input(question_text)
    return answer

def check_answer(answer, correct_answer):
    if answer.lower() == correct_answer.lower():
        return True
    else:
        return False

def show_feedback(is_correct):
    if is_correct:
        print("Correct")
    else:
        print("Wrong")

def run_quiz():
    score = 0


# Quiz questions

    answer = ask_question("What is the capital city of Norway?: ")
    is_correct = check_answer(answer, "Oslo")
    show_feedback(is_correct)

    if is_correct:
        score += 1


    answer = ask_question("What is the capital city of Sweden?: ")
    is_correct = check_answer(answer, "Stockholm")
    show_feedback(is_correct)

    if is_correct:
        score += 1

    answer = ask_question("What is the capital city of Denmark?: ")
    is_correct = check_answer(answer, "Copenhagen")
    show_feedback(is_correct)

    if is_correct:
        score += 1

    print(f"Your score is {score} out of 3")

run_quiz()



