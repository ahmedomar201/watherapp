import 'package:flutter/material.dart';
import 'package:weather_app/model/weather.model.dart';
import 'package:weather_app/pages/search.page.dart';

class HomePage extends StatelessWidget {
  WeatherModel? weatherModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchPage()));
            },
            icon: Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      body: weatherModel == null
          ? Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'there is no weather 😔 start',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    'searching now 🔍',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  )
                ],
              ),
            )
          : Container(
              color: Colors.orange,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "cairo",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "updated: 12-8-2020",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network(
                        "https://media.istockphoto.com/id/1124567572/vector/cute-flat-sun-icon.jpg?s=1024x1024&w=is&k=20&c=JYtBT8k9RG84vTDYGAJnuwAGfz-XEwtlHOwCQqNs6jE=",
                        height: 80,
                        width: 80,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "30",
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            "Max temp:30",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "min temp:26",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "clear",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
    );
  }
}
