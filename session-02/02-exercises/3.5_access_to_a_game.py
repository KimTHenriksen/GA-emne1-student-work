has_username = True
accepted_rules = True
is_blocked = False

if has_username and accepted_rules and not is_blocked:
    print("Access")
else:
    print("Not access")