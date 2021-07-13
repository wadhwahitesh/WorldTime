import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime{
  late String location; //location time for UI
  late String time; //time in that location
  late String flag; //url to flag image
  late String url; //changing part in url

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async{
    try {
      var full_url = Uri.parse('http://worldtimeapi.org/api/timezone/$url');
      Response response = await get(full_url);
      Map data = jsonDecode(response.body);
      //print(data);
      String datetime = data['datetime'];
      DateTime now = DateTime.parse(datetime);
      time = DateFormat.jm().format(now.toLocal());
    } catch (e) {
      // TODO
      print("error message: $e");
      time = "could not get time data";  //for not keeping time null
    }
//set time property

  }


}