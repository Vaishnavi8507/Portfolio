import 'package:flutter/material.dart';
import 'package:portfoli_web/models/Project.dart'; // Ensure the Project model is imported
import 'package:portfoli_web/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../const.dart';

class ProjectCard extends StatelessWidget {
  //var link;

  const ProjectCard({
    Key? key,
    required this.project,
    // required this.link,
  }) : super(key: key);

  final Project project;

  Future<void> _launchUrl(String url) async {
    Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Spacer(),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ),
          Spacer(),
          TextButton(
            onPressed: () {
              if (project.link != null) {
                _launchUrl(
                    project.link!); // Open the link specific to the project
              } else {
                // Handle cases where no link is provided (optional)
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('No link available')),
                );
              }
            },
            child: const Text(
              "Explore >>",
              style: TextStyle(color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
