import 'package:flutter/material.dart';
import 'home.dart';


class UserMain extends StatefulWidget {
  UserMain({Key? key}) : super(key: key);

  @override
  _UserMainState createState() => _UserMainState();
}

class _UserMainState extends State<UserMain> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Home(),
    );
  }
}