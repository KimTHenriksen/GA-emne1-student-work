def show_match_result(home_team, away_team, home_score, away_score):
    if home_score > away_score:
        print(f"{home_team} win")
    elif home_score == away_score:
        print("The match is even.")
    else:
        print(f"{away_team} win")



show_match_result("Bergen", "Stavanger", 5, 2)
show_match_result("Bergen", "Stavanger", 1, 2)
show_match_result("Bergen", "Stavanger", 4, 4)
