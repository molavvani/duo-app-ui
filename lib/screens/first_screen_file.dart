
import 'package:duo_project/widgets/concats_page.dart';
import 'package:duo_project/widgets/search_box_file.dart';
import 'package:duo_project/widgets/tow_botten.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Invite_Frends.dart';
import 'about_us.dart';
import 'creat_group.dart';

class first_screen extends StatefulWidget {
  @override
  _first_screenState createState() => _first_screenState();
}

class _first_screenState extends State<first_screen> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'about_us':(context) => about_us_screen(),
        'create_group':(context) =>Creat_group_screen(),
        'nothing':(context)=>first_screen(),
        'Invaite_Screen':(context)=>Invaite_Screen()
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            camera_contact(),
            Search_bar(),
          ],
        ),
      ),
    );
  }
}





class camera_contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _size=MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(

            width: _size,
            height: _size*2.7/2,

            child: Container(
              color: Colors.lightBlue,
            )

          ),
         SizedBox(height: _size/20,),
         tow_botton(), SizedBox(height: _size/20,),
         Text_connect_on_duo(),
         contact_page(),
        ],
      ),
    );
  }
}







class Text_connect_on_duo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _size=MediaQuery.of(context).size.width;
    return Container(
      width: _size,
        margin: EdgeInsets.only(left: _size/20),
        child: Text("CONNECT ON DUO",
          style: TextStyle(
            fontSize: _size/30,
            fontWeight: FontWeight.w500
          ),
        ),
    );
  }
}


















