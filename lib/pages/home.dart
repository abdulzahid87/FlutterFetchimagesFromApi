import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lphs/api/gridview.dart';

import '../getter.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridViewDemo(),
    );
  }
}
