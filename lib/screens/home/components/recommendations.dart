import 'package:flutter/material.dart';
import 'package:portfoli_web/models/experience.dart';
import 'package:portfoli_web/screens/home/components/recommendation_card.dart';

import '../../../const.dart';

class Experience extends StatelessWidget {
  const Experience({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Experience",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: defaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demo_experiences.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: ExperienceCard(
                    experience: demo_experiences[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
