from api.weather import format_weather


def test_format_weather():
    # Test case 1: Sunny weather
    city = "Los Angeles"
    data = {"weather": [{"description": "sunny"}], "main": {"temp": 25}}
    expected = (
                "The weather in Los Angeles is sunny "
                "with a temperature of 25 Celcius."
                )
    assert format_weather(city, data) == expected

    # Test case 2: Cloudy weather
    city = "London"
    data = {"weather": [{"description": "cloudy"}], "main": {"temp": 15}}
    expected = (
                "The weather in London is cloudy "
                "with a temperature of 15 Celcius."
                )
    assert format_weather(city, data) == expected

    # Test case 3: Rainy weather
    city = "Seattle"
    data = {"weather": [{"description": "rainy"}], "main": {"temp": 10}}
    expected = (
                "The weather in Seattle is rainy "
                "with a temperature of 10 Celcius."
                )
    assert format_weather(city, data) == expected
