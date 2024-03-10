import functions_framework
from flask import abort

from weather import get_weather


@functions_framework.http
def handle_request(request):
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
