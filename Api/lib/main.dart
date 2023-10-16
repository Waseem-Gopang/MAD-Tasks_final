import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Weather App')),
          backgroundColor: Colors.pink,
        ),
        body: const Center(
          child: WeatherWidget(),
        ),
      ),
    );
  }
}

class WeatherWidget extends StatefulWidget {
  const WeatherWidget({super.key});

  @override
  _WeatherWidgetState createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget> {
  Map<String, dynamic> weatherData = {};

  @override
  void initState() {
    super.initState();
    fetchWeatherData();
  }

  Future<void> fetchWeatherData() async {
    const apiKey = 'f38b2601eaaa0e3f74582026a23c2dbe';
    const city = 'Kumb';

    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey');

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        weatherData = data;
      });
    } else {
      setState(() {
        weatherData = {
          'error': 'Failed to fetch weather data',
        };
      });
    }
  }

  double kelvinToCelsius(double kelvin) {
    return kelvin - 273;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        if (weatherData.isEmpty)
          const CircularProgressIndicator()
        else if (weatherData.containsKey('error'))
          Text('Error: ${weatherData['error']}')
        else
          Text('City: ${weatherData['name']}'),
        Text(
            'Temperature: ${kelvinToCelsius(weatherData['main']['temp']).toStringAsFixed(2)}°C'),
        Text('Weather: ${weatherData['weather'][0]['main']}'),
      ],
    );
  }
}
