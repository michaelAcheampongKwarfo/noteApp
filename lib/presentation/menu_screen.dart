import 'package:flutter/material.dart';
import 'package:note_app/services/app_info.dart';
import 'package:note_app/shared/shared_colors.dart';
import 'package:note_app/shared/shared_container.dart';
import 'package:note_app/shared/shared_menu_buttons.dart';
import 'package:note_app/shared/shared_page.dart';
import 'package:note_app/shared/shared_profile_container.dart';
import 'package:note_app/shared/shared_text.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SharedText(
          text: 'Menu',
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SharedProfileContainer(
              imagePath: 'imagePath',
              username: 'username',
              email: 'email',
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const Divider(
                color: SharedColors.greyColor,
                thickness: 2.0,
              ),
            ),
            SharedMenubutton(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SharedPage(
                      title: 'Vision Statement',
                      message: versionStatement,
                    ),
                  ),
                );
              },
              iconData: Icons.perm_device_information_outlined,
              text: 'Version',
            ),
            SharedMenubutton(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SharedPage(
                      title: 'About Us Statement',
                      message: aboutUsStatement,
                    ),
                  ),
                );
              },
              iconData: Icons.info_outline,
              text: 'About Us',
            ),
            SharedMenubutton(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SharedPage(
                      title: 'Privacy Policy Statement',
                      message: privacyPolicyStatement,
                    ),
                  ),
                );
              },
              iconData: Icons.lock_outlined,
              text: 'Privacy Policy',
            ),
            SharedMenubutton(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SharedPage(
                      title: 'Terms of Serviced Statement',
                      message: termsOfServicesStatement,
                    ),
                  ),
                );
              },
              iconData: Icons.gavel_outlined,
              text: 'Terms Of Services',
            ),
            SharedMenubutton(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SharedPage(
                      title: 'Community Standard Statement',
                      message: communityStandardStatement,
                    ),
                  ),
                );
              },
              iconData: Icons.groups_3_outlined,
              text: 'Community Standard',
            ),
            SharedMenubutton(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SharedPage(
                      title: 'Open Source Statement',
                      message: openSourceStatement,
                    ),
                  ),
                );
              },
              iconData: Icons.code_outlined,
              text: 'Open Source Software',
            ),
            SharedMenubutton(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SharedPage(
                      title: 'Contact Us Statement',
                      message: contactUsStatement,
                    ),
                  ),
                );
              },
              iconData: Icons.contact_page_outlined,
              text: 'Contact Us',
            ),
            SharedMenubutton(
              onTap: () {},
              iconData: Icons.logout_outlined,
              text: 'Log Out',
            ),
            const SharedContainer(
              string: 'NoteApp CopyRight ©️ 2023-2024.\nAll Rights reserved',
              fontSize: 14.0,
            )
          ],
        ),
      ),
    );
  }
}
