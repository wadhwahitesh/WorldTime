import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};
  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Column(
            children: [
              TextButton.icon(onPressed: (){
                Navigator.pushNamed(context, '/location');
              },
                  icon: Icon(Icons.edit_location),
                  label: Text("Edit Location" ),
                style: TextButton.styleFrom(
                  primary: Colors.black,
                ),
                  ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(data["location"],
                  style: TextStyle(
                    fontSize: 28,
                    letterSpacing: 2,
                  ),
                  ),

                ],
              ),
              SizedBox(height: 20),
              Text(
                data["time"],
                style: TextStyle(
                  fontSize: 66,
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
