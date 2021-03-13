import 'package:flutter/material.dart';

class WeatherLocation {
  final String city;
  final String dateTime;
  final String temparature;
  final String weatherType;
  final String iconUrl;
  final int wind;
  final int rain;
  final int humidity;

  WeatherLocation({
    @required this.city,
    @required this.dateTime,
    @required this.temparature,
    @required this.weatherType,
    @required this.iconUrl,
    @required this.wind,
    @required this.rain,
    @required this.humidity,
  });


}
final locationList = [
  WeatherLocation(
   city: 'Islamabad',
   dateTime: '07:5 PM - Monday, 9 Nov 2021',
  temparature: '24\u2103',
  weatherType: 'Night',
  iconUrl: 'assets/moon.svg',
  wind: 10,
  rain: 2,
  humidity: 10,
  ),

  WeatherLocation(
    city: 'Gilgit',
    dateTime: '02:5 PM - Monday, 9 Nov 2021',
    temparature: '15\u2103',
    weatherType: 'Cloudy',
    iconUrl: 'assets/cloudy.svg',
    wind: 10,
    rain: 2,
    humidity: 10,
  ),

  WeatherLocation(
    city: 'London',
    dateTime: '10:5 PM - Monday, 9 Nov 2021',
    temparature: '10\u2103',
    weatherType: 'Sunny',
    iconUrl: 'assets/sun.svg',
    wind: 10,
    rain: 2,
    humidity: 10,
  ),

  WeatherLocation(
    city: 'Sudney',
    dateTime: '01:50 AM - Monday, 9 Nov 2021',
    temparature: '10\u2103',
    weatherType: 'Rainy',
    iconUrl: 'assets/rain.svg',
    wind: 10,
    rain: 2,
    humidity: 10,
  ),
];
