book = {
    "title": "Python Crash Course",
    "author": "Eric Matthes",
    "pages": 514,
    "available": True
}

print(f"Author {book["author"]} has written the book {book["title"]}.")

book["available"] = False
book["year of publication"] = 2023

print(book)