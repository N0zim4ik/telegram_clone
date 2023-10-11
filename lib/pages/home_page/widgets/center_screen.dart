import 'package:flutter/material.dart';

class CenterScreen extends StatefulWidget {
  const CenterScreen({super.key});

  @override
  State<CenterScreen> createState() => _CenterScreenState();
}

class _CenterScreenState extends State<CenterScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        childPages(),
        childPages(),
        childPages(),
        childPages(),
        childPages(),
        childPages(),
        childPages(),
        childPages(),
        childPages(),
        childPages(),
        childPages(),
        childPages(),
        childPages(),
      ],
    );
  }
}

MaterialButton childPages() {
  return MaterialButton(
    onPressed: () {},
    child: const SizedBox(
      width: double.infinity,
      height: 70,
      child: DecoratedBox(
        decoration: BoxDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80'),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Flutter',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'hello world',
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 20,
                ),
                Text('09:14'),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
