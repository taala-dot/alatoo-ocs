import 'package:alatoo_ocs/pages/bell_button.dart';
import 'package:flutter/material.dart';
import 'package:alatoo_ocs/pages/menu_profile_button.dart';
import 'package:alatoo_ocs/pages/messenger_button.dart';
import 'table_calendar.dart';
class OcsApp extends StatefulWidget {
  const OcsApp({super.key});

  @override
  State<OcsApp> createState() => _OcsAppState();

}

class _OcsAppState extends State<OcsApp> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor:Colors.tealAccent,
        automaticallyImplyLeading: true,
          title: const SizedBox(),
        actions: [
          // GestureDetector(
          //   onTap: (){},
          //   child:
          //   Icon(Icons.person,
          //         size: 50,),
          // ),




          MessengerButton(scaffoldKey: _scaffoldKey),

         const MenuProfileButton(), //logo profile





         Transform.translate(offset: Offset(-4,0),
         child:  SizedBox(
           height: kToolbarHeight,
           child: VerticalDivider(
             thickness: 1,
             color: Colors.black,
           ),
         ),
         ),
          Switch(
              value: light,
              onChanged: (bool value){
                setState(() {
                  light = value;
                });
              }),
        ],


        flexibleSpace: SafeArea(
          child: Stack(
            children: [
              Positioned(
                left: 0.0,
                right: 20.0,
                top: 3,
                child: Center(
                  child: BellButton(scaffoldKey: _scaffoldKey),
                ),
              ),
            ],
          ),
        ),


      ),

      body:



      Container(child: TableCalendar(),

        color: Colors.white70,
      ),

      drawer: Drawer(


        child: ListView(
          children: const [
            DrawerHeader(
                child: Text("Somethinng"),
                decoration: BoxDecoration(color: Colors.blueAccent,)

        ),
            ListTile(title: Text("Home"),
            )
          ],
        ),

      ),
      endDrawer:
      Drawer(
          child: Center(
            child: ElevatedButton.icon(
                onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("notifications clicked")));},
              label: const Text("Messages"),
            ),
          ),
      ),

    );
  }
}
