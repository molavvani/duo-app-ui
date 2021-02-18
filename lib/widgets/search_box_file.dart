

import 'package:duo_project/const/style_decorations.dart';
import 'package:flutter/material.dart';

class Search_bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screen_size=MediaQuery.of(context).size.width;
    return Positioned(
      top: 0,
      right: 0,
      left: 0,
      child: Container(
          margin: EdgeInsets.only(right: screen_size/25,left: screen_size/25 ,top: screen_size/10),
          height: 50,
          decoration: DSearch_bar_box_decoration,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.search),
              ),
              SizedBox(
                width: screen_size*2/3,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search contacts or dial",
                  ),
                ),
              ),
              drop_down_widget()
            ],
          )
      ),
    );
  }
}




class drop_down_widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(

      itemBuilder: (BuildContext context){
        return [
          PopupMenuItem(
            child: Text("settings"),
            value: "settings",
          ),
          PopupMenuItem(
            child: Text("Invite freinds"),
            value: "Invite freinds",

          ),
          PopupMenuItem(
            child: Text("Privacy on Duo"),
            value: "Privacy on Duo",
          ),
          PopupMenuItem(
            child: Text("about us"),
            value: "about us",
          ),
        ];
      },
      onSelected: (value){
        if(value == "about us"){
          Navigator.pushNamed(context, 'about_us');
        }
      },
    );
  }
}




