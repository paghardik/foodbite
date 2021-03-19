import 'package:flutter/material.dart';

class CounterDisplayWidget extends StatelessWidget {
  final String count;
  final String label;
  const CounterDisplayWidget({
    Key key,
    this.count,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            count,
            style: TextStyle(
              fontSize: 20,
              color: const Color(0xff5663ff),
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 20,
              color: const Color(0xcc6e7faa),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
