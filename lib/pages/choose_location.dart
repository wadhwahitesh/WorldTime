import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {


  @override
  Widget build(BuildContext context) {
    print("build state run");
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Location"),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        elevation: 0,
      ),
      body: Text("Choose Location"),
      backgroundColor: Colors.grey[200],
    );
  }
}
