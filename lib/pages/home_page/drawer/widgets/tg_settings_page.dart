import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool a = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const SizedBox(height: 10),
        settings(icon: CupertinoIcons.person_2_alt, text: 'New Group'),
        const SizedBox(height: 10),
        settings(icon: Icons.add_comment_sharp, text: 'New Chanel'),
        const SizedBox(height: 10),
        settings(icon: Icons.slow_motion_video_rounded, text: 'My Stories'),
        const SizedBox(height: 10),
        settings(icon: Icons.perm_contact_cal_outlined, text: 'Contacts'),
        const SizedBox(height: 10),
        settings(icon: CupertinoIcons.phone, text: 'Calls'),
        const SizedBox(height: 10),
        settings(icon: Icons.save_alt_rounded, text: 'Saved Messages'),
        const SizedBox(height: 10),
        settings(icon: Icons.settings_outlined, text: 'Settings'),
        const SizedBox(height: 10),
        SwitchListTile(
            title: const Row(
              children: [
                Icon(
                  CupertinoIcons.moon,
                  color: Colors.white,
                ),
                SizedBox(width: 10  ,),
                Text(
                  'Night Mode',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            value: a,
            onChanged: (value) {
              setState(() {
                a = value;
              });
            })
      ],
    );
  }

  Row settings({required IconData icon, required String text}) {
    return Row(
      children: [
        const SizedBox(width: 10),
        Icon(
          icon,
          color: Colors.white,
        ),
        const SizedBox(width: 20),
        Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
