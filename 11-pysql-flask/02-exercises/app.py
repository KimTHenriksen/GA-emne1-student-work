from flask import Flask, render_template, request

app = Flask(__name__)
app.url_map.strict_slashes = False

@app.route("/")
def index():
    return render_template("index.html", heading="World exploring Jinja")


@app.route("/about")
def about():
    return render_template("about.html", author="Kim T Henriksen")


@app.route("/greet")
def greet():
    name = request.args.get("name", "Guest")
    return render_template("greet.html", name=name)
