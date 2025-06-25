import os
from datetime import datetime
from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    version = os.getenv("APP_VERSION", "unknown")
    current_time = datetime.now().strftime("%H:%M:%S")
    return f"<h1>Ora curentă: {current_time}</h1><h2>Versiune: {version}</h2>"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
