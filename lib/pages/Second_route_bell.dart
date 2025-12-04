import 'package:flutter/material.dart';
class SecondRouteBell extends StatelessWidget {
  const SecondRouteBell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Notifications')),
        body: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
        )
        );}

}
