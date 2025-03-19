from flask import flask, jsonfy

app = Flask(_name_)

@app.route("/")

def home():
    return "Bienvenido"

@app.route("/healt")
def healt():
    return jsonfy({"Status:ok"})

if _name_ == "_main_":
    app.run(host"0.0.0.0", port=8080)