import 'package:flutter/material.dart';

import 'getter.dart';

class GetterClass extends StatelessWidget {
   GetterClass({Key? key}) : super(key: key);
  Recipe recipe = Recipe(40, 54);

  void getData() {
    print(recipe.milkShake);

  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Container();
  }
}
