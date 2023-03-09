import 'package:flutter/material.dart';
import 'package:weather_app/services/weather.services.dart';

class SearchPage extends StatelessWidget {

  String? cityName;



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
          onFieldSubmitted: (data) {
            cityName=data;
            weatherService service=weatherService();
            service.getWeather(cityName:cityName!);
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
