import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfoli_web/const.dart';
import 'package:url_launcher/url_launcher.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  Future<void> _launchUrl(String url) async {
    Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residence",
                      text: "India",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Mysore",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: "21",
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),

                    TextButton(
                      onPressed: () {
                        _launchUrl(
                            'https://drive.google.com/file/d/11Pgjn7VS2MlKzMCn7_49uyVkhnjpOQKr/view?usp=sharing');
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "RESUME",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .color,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset(
                              "assets/icons/icon_link.svg",
                              height: 20,
                              width: 20,
                              // color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Social Icons
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              _launchUrl(
                                  'https://linkedin.com/in/vaishnavi-jamadarkhana/');
                            },
                            icon: SvgPicture.asset(
                              "assets/icons/linkedin.svg",
                              height: 24, // Specify height and width
                              width: 24,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              _launchUrl('https://github.com/Vaishnavi8507');
                            },
                            icon: SvgPicture.asset(
                              "assets/icons/github.svg",
                              height: 24,
                              width: 24,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              _launchUrl(
                                  'https://leetcode.com/u/vaishnavijamadarkhana7283/');
                            },
                            icon: SvgPicture.asset(
                              "assets/icons/leetcode.svg",
                              height: 24,
                              width: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
