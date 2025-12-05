import 'Second_route_bell.dart';
import 'package:flutter/material.dart';

class BellButton extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const BellButton({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (context) => const SecondRouteBell(),
          ),
        );
      },
      icon: const Icon(Icons.notifications),
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
    );
  }
}
