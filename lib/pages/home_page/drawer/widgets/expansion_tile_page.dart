import 'package:flutter/material.dart';

class ExpansionTilePage extends StatelessWidget {
  const ExpansionTilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text(
        'Nozimjon',
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Text(
          'Set Emoji Status',
          style: TextStyle(color: Colors.blue),
        ),
      ),
      children: [
        const SizedBox(
          height: 10,
        ),
        epansionChild(),
        const SizedBox(
          height: 10,
        ),
        epansionChild(),
        const SizedBox(
          height: 10,
        ),
        epansionChild(),
        const SizedBox(
          height: 10,
        ),
        const DecoratedBox(
          decoration: BoxDecoration(),
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 25,
                height: 25,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 22,
              ),
              Text(
                'Add Account',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  DecoratedBox epansionChild() {
    return const DecoratedBox(
      decoration: BoxDecoration(),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: SizedBox(
              width: 30,
              height: 30,
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
            width: 20,
          ),
          Text(
            'Flutter',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
