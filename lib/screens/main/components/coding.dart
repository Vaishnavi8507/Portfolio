import 'package:flutter/material.dart';
import 'package:portfoli_web/components/animated_progress_indicator.dart';

import '../../../const.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.85,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.70,
          label: "Python",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: "HTML",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.85,
          label: "CSS",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.65,
          label: "JavaScript",
        ),
      ],
    );
  }
}
