from flask import Flask, request, abort
from weather import get_weather

app = Flask(__name__)

@app.route('/')
def handle_request():
    if request.method == "GET":
        city = request.args.get("city")
        if not city:
            return abort(404, "Please provide a city.")

        success, response = get_weather(city)
        if success:
            return response
        else:
            return abort(500, response)
    else:
        return abort(403)

if __name__ == '__main__':
    app.run()