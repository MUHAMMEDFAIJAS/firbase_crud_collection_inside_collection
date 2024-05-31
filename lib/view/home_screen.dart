import 'package:flutter/material.dart';
import 'package:testing/view/addscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Addscreen(),
          ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
