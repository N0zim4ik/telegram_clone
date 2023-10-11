import 'package:flutter/material.dart';
import 'package:telegram/pages/home_page/drawer/drawer_page.dart';
import 'package:telegram/pages/home_page/widgets/center_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: const Color(0xFF17212CFF),
        title: DecoratedBox(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  20,
                ),
              ),
              color: Colors.black45),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixText: '   ',
              hintText: 'Search',
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.lock_open),
              ),
            ),
          ),
        ),
      ),
      drawer: DrawerPage(),
      body: const CenterScreen(),
    );
  }
}
