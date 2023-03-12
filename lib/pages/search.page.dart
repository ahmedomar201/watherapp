import 'package:flutter/material.dart';
import 'package:weather_app/model/weather.model.dart';
import 'package:weather_app/services/weather_service.dart';

class SearchPage extends StatelessWidget {
  String? cityName;

  WeatherModel? weatherModel;

  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Search a city'),
      ),
      body: Center(
        child: TextFormField(
          controller: searchController,
          keyboardType: TextInputType.text,
          onFieldSubmitted: (data) async {
            cityName = data;
            WeatherService service = WeatherService();

            WeatherModel weather =
                await service.getWeather(cityName: cityName!);
            weatherModel = weather;

            Navigator.pop(context);
          },
          decoration: InputDecoration(
            labelText: "Search",
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 5, //<-- SEE HERE
                color: Colors.greenAccent,
              ),
            ),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return "enter text to search ";
            }
            return null;
          },
        ),
      ),
    );
  }
}
