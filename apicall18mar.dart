import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class weatherapp extends StatefulWidget {
  const weatherapp({Key? key, required String title}) : super(key: key);

  @override
  State<weatherapp> createState() => _weatherappState();
}

class _weatherappState extends State<weatherapp> {
  final myController = TextEditingController();
  final key = "<your API Key>";
  String? temp;
  String? humidity;
  String? windspeed;
  String? clouds;
  Future <String> fetchSite() async {
    String uri = "https://api.openweathermap.org/data/2.5/weather?q=${myController.text}&appid=$key";
    print(uri);
    print("hello");
    final response = await http.get(Uri.parse(uri));   //('https://flutter.dev');
    if (response.statusCode == 200) {
      print(response.body.toString());
      final wd =  jsonDecode(response.body.toString());// response.body.toString();
      temp = wd["main"]["temp"].toString();
      humidity = wd["main"]["humidity"].toString();
      windspeed = wd["wind"]["speed"].toString();
      clouds = wd["clouds"]["all"].toString();
    } else {
      throw Exception('Unable to fetch Site from the REST API');
    }
    return response.body.toString();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Weather App Demo", style: GoogleFonts.aBeeZee(fontSize: 25)),
        backgroundColor: Colors.purple,
      ),
      body:Container(
        child: SafeArea(
          child: Column(
            children: [
            SizedBox(height:20),
              TextField(controller: myController,
                  decoration:   InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter City Name"
                  ),
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                    fetchSite();
                });
              }, child: Text("OK"),),

              Text("Temp:$temp",style: GoogleFonts.aBeeZee(fontSize: 25)),
              Text("Humidity: $humidity",style: GoogleFonts.aBeeZee(fontSize: 25)),
              Text("WindSpeed: $windspeed m/h", style: GoogleFonts.aBeeZee(fontSize: 25)),
              Text("Clouds:$windspeed %", style: GoogleFonts.aBeeZee(fontSize: 25))
            ],
          )
        )
        ),
    );
  }
}
