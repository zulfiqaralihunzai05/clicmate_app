import 'package:clicmate_app/widgets/single_weather.dart';
import 'package:clicmate_app/widgets/slider_dot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:clicmate_app/models/weather_locations.dart';
import 'package:google_fonts/google_fonts.dart';


class WeatherApp extends StatefulWidget {
  @override
  _WeatherAppState createState() => _WeatherAppState();

}

class _WeatherAppState extends State<WeatherApp> {
  int _currentPage = 0;
  String bgImg;

  _onPageChanged(int index){
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    if(locationList[_currentPage].weatherType == 'Sunny'){
      bgImg = 'assets/sunny.jpg';
    }else if(locationList[_currentPage].weatherType == 'Cloudy'){
      bgImg = 'assets/cloudy.jpeg';
    }else if(locationList[_currentPage].weatherType == 'Rainy'){
      bgImg = 'assets/rainy.jpg';
    }else if(locationList[_currentPage].weatherType == 'Night'){
      bgImg = 'assets/night.jpg';
    }
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            print('searchBar clicked');
          },
          icon: Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: GestureDetector(
              onTap: () {
                print('Menu clicked');
              },
              child: SvgPicture.asset(
                'assets/menu.svg',
                height: 30,
                width: 30,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Container(
          child: Stack(
            children: [
              Image.asset(
                bgImg,
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.black38),
              ),
              Container(
                margin: EdgeInsets.only(top: 95, left: 15),
                child: Row(
                  children: [
                    for(int i= 0; i<locationList.length; i++)
                      if(i == _currentPage)
                        SliderDot(true)
                      else 
                        SliderDot(false)

                  ],
                ),
              ),
              PageView.builder(
                onPageChanged: _onPageChanged,
                scrollDirection: Axis.horizontal,
                itemCount: locationList.length,
                itemBuilder: (ctx, i) => SingleWeather(i),
              )
            ],
          )),
    );
  }
}

