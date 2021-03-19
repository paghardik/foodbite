import 'package:flutter/material.dart';
import 'package:foodbite/presentation/ui/profile/widgets/counter_display_widget.dart';

class CounterDisplay extends StatelessWidget {
  CounterDisplay({
    Key key,
  }) : super(key: key);

  final divider = SizedBox(
    height: 40,
    child: VerticalDivider(
      color: Colors.grey.withOpacity(0.5),
      thickness: 1,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CounterDisplayWidget(
          count: "250",
          label: "Reviews",
        ),
        divider,
        CounterDisplayWidget(
          count: "100k",
          label: "Followers",
        ),
        divider,
        CounterDisplayWidget(
          count: "30",
          label: "Following",
        ),
      ],
    );
  }
}
