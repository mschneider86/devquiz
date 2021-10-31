import 'package:flutter/material.dart';

class ScoreCardWidget extends StatelessWidget {
  const ScoreCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            color: Colors.red,
          ),
          Column(
            children: [
              Text("Vamos começar"),
              Text("Complete os desafios e avance em conhecimento"),
            ],
          ),
        ],
      ),
    );
  }
}
