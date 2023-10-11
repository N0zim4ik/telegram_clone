import 'package:flutter/material.dart';
import 'package:telegram/pages/home_page/drawer/widgets/tg_settings_page.dart';

import 'widgets/expansion_tile_page.dart';
import 'widgets/top_image.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.indigo,
      child: Column(
        children: [
          TopImage(),
          ExpansionTilePage(),
          SettingsPage(),
        ],
      ),
    );
  }
}
