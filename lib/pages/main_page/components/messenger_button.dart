import 'package:flutter/material.dart';

class MessengerButton extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const MessengerButton({super.key, required this.scaffoldKey});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right:3.0,left: 0.0),
      child: IconButton(onPressed: (){scaffoldKey.currentState?.openEndDrawer();   },
          icon: Icon(Icons.messenger)),
    );}
}
