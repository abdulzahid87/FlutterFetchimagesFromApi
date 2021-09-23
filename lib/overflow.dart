import 'package:flutter/material.dart';

class OverflowProblem extends StatelessWidget {

  const OverflowProblem({Key? key}) : super(key: key);

  final personNextToMe = 'That reminds me about the time when I was ten and our neighbour, her name was Mrs. Mable, and she said...';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.airline_seat_legroom_reduced),
        Expanded(
          child: Text(personNextToMe),
        ),
        Icon(Icons.airline_seat_legroom_reduced)
      ],
    );
  }
}
