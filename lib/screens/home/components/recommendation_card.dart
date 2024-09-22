import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfoli_web/models/experience.dart'; // Make sure to import your Experience model here
import 'package:url_launcher/url_launcher.dart';

import '../../../const.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    Key? key,
    required this.experience,
  }) : super(key: key);

  final Experience experience;

  Future<void> _launchUrl(String url) async {
    Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                experience.name ?? '',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(width: 8),
              if (experience.link != null) // Check if a link is provided
                GestureDetector(
                  onTap: () {
                    _launchUrl(
                        experience.link!); // Open the link when icon is clicked
                  },
                  child: SvgPicture.asset(
                    'assets/icons/link.svg',
                    height: 20,
                    color: Colors.blue,
                  ),
                ),
            ],
          ),
          Text(experience.source ?? ''),
          const SizedBox(height: defaultPadding),
          Text(
            experience.text ?? '',
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}
