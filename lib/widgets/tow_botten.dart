import 'package:duo_project/const/style_decorations.dart';
import 'package:duo_project/const/style_text.dart';
import 'package:duo_project/widgets/squer_button_widget.dart';
import 'package:flutter/material.dart';





class tow_botton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double _size=MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        squer_button_widget(Icons.supervisor_account,"Create group",Colors.blue,_size/2.5,_size/10,'create_group'),
        squer_button_widget(Icons.sms,"Invite friends",Colors.blue,_size/2.5,_size/10,'Invaite_Screen'),
      ],
    );
  }
}




