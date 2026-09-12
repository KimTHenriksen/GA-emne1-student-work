import quiz_helpers

def run_quiz():
    score = 0

    answer = quiz_helpers.ask_question("What is the capital city of Norway?: ")
    is_correct = quiz_helpers.check_answer(answer, "Oslo")
    quiz_helpers.show_feedback(is_correct)

    if is_correct:
        score += 1


    answer = quiz_helpers.ask_question("What is the capital city of Sweden?: ")
    is_correct = quiz_helpers.check_answer(answer, "Stockholm")
    quiz_helpers.show_feedback(is_correct)

    if is_correct:
        score += 1

    answer = quiz_helpers.ask_question("What is the capital city of Denmark?: ")
    is_correct = quiz_helpers.check_answer(answer, "Copenhagen")
    quiz_helpers.show_feedback(is_correct)

    if is_correct:
        score += 1

    print(f"Your score is {score} out of 3")

run_quiz()



