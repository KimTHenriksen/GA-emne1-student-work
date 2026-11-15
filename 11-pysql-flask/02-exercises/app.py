from flask import Flask, render_template, request
from database import get_cities

import mysql.connector

# Task 10. Find and correct errors.
# Error: NameError
# I removed request from the Flask import.
# Python could not find request.
# I fixed it by adding request back to the import.

app = Flask(__name__)
app.url_map.strict_slashes = False

@app.route("/")
def index():
    return render_template("index.html", heading="World exploring Jinja")

# Task 10. Find and correct errors
# changed from index.html to indexx.html
# Error: TemplateNotFound
# Flask cannot find indexx.html because the filename is wrong.
# I fixed it by changing it back to index.html.

@app.route("/about")
def about():
    return render_template("about.html", author="Kim T Henriksen")


@app.route("/greet")
def greet():
    name = request.args.get("name", "Guest")
    return render_template("greet.html", name=name)

@app.route("/cities")
def cities():
    code = request.args.get("country", "").strip().upper()
    if not code.isalpha() or len(code) != 3:
        return "Invalid country code.", 400
    try:
        rows = get_cities(code)
    except mysql.connector.Error:
        app.logger.exception("Database error")
        return "Database unavailable. Try again later.", 503
    return render_template("cities.html", code=code, rows=rows)

# Task 10 - Wrong URL parameter
# I changed country to countries.
# Flask could not find the country parameter.
# The browser showed "Invalid country code."
# I fixed it by changing countries back to country.
