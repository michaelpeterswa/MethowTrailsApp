import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'text_section.dart';
import 'package:dio/dio.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var resp = getHttp();
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Methow Trails Grooming Report'),
        backgroundColor: Color.fromRGBO(150, 0, 255, 1),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner("https://cdn.shopify.com/s/files/1/1824/2601/products/Nikki_frumkin_winter_in_the_north_cascades_1024x1024.jpg?v=1506350645"),
            TextSection("Weather Conditions:",
                resp.toString()),
            //TextSection("Temperature:",
              //  "this is the body"),
            TextSection("Recommended Trail:",
                "this is the body"),
            TextSection("Recommended Trail:",
                "this is the body"),
            TextSection("Recommended Trail:",
                "this is the body"),
            TextSection("Recommended Trail:",
                "this is the body"),
          ]),
    );
  }

  Future<Response> getHttp() async {
    try {
      Response response = await Dio().get("http://mt.cascades.dev/api");
      print(response);
      return response;
    } catch (e) {
      print(e);
    }
  }

}