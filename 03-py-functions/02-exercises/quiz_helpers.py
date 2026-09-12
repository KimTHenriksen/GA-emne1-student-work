def ask_question(question_text):
    """Shows a question and returns the users answer."""
    answer = input(question_text)
    return answer

def check_answer(answer, correct_answer):
    """Check if the answer is correct and return True or False."""
    if answer.lower() == correct_answer.lower():
        return True
    else:
        return False

def show_feedback(is_correct):
    """Shows feedback, correct or wrong answer."""
    if is_correct:
        print("Correct")
    else:
        print("Wrong")