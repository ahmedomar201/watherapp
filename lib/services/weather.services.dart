import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/model/weather.model.dart';

class weatherService {
  String baseUrl = "http://api.weatherapi.com/v1";

  String apiKey = "942a0b3a51ef478b869114503230903";

  Future<WeatherModel> getWeather({required String cityName}) async {
    Uri url = Uri.parse("$baseUrl/current.json?key=$apiKey&q=$cityName&aqi=no");

    http.Response response = await http.get(url);

    Map<String, dynamic> data = jsonDecode(response.body);

    WeatherModel weatherModel = WeatherModel.fromJson(data);

    return weatherModel;
  }
}
