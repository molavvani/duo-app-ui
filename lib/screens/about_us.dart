import 'package:flutter/material.dart';



class about_us_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: RaisedButton(
          child: Text("comming soon!",
            style: TextStyle(
              color: Colors.red,
            ),
          ),
            onPressed: (){
          Navigator.pop(context);
        }),
      ),
    );
  }
}
