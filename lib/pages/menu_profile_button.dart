import 'package:flutter/material.dart';

class MenuProfileButton extends StatelessWidget {
  const MenuProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    
    //   Padding(padding:const EdgeInsets.only(right:10.0,left: 5.0),
    //   child:IconButton(
    //     onPressed: (){},
    //     icon: const Icon(Icons.person),
    //     iconSize: 40,
    //     padding: EdgeInsets.zero,
    //   ),
    // );

    //

    return PopupMenuButton(
      icon: Icon(Icons.person,size: 40,),

        itemBuilder: (context){
          List<PopupMenuEntry> list = [];
          list.add(
            PopupMenuItem(
                child: Text('Profile')
            )
                
          );
          list.add(
            PopupMenuItem(
                child: Text("Grades")
            )
          );
          list.add(
            PopupMenuItem(
                child: Text("Calendar"))
          );
          list.add(
            PopupMenuItem(
                child: Text("Messages") )
          );
          list.add(
              PopupMenuItem(
                  child: Text("Private files"))
          );
          list.add(
              PopupMenuItem(
                  child: Text("Reports") )
          );


          return list;
        }
    );
  }
}
