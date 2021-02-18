

import 'package:duo_project/const/style_decorations.dart';
import 'package:duo_project/const/style_text.dart';
import 'package:duo_project/data/contact_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Creat_group_screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double _size=MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: Container(
          height: _size/8,
          width: _size/4,
          margin: EdgeInsets.only(bottom: _size/30),
          child: RaisedButton(
            elevation: 20,
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Next",style: contact_text_style(Colors.white),),
                Icon(Icons.navigate_next,color: Colors.white,),
              ],
            ),
            onPressed: (){
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: BorderSide(color: Colors.blue)
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.width*list_contacts_name.length/4.3,
              child: ListView.builder(physics: NeverScrollableScrollPhysics(),itemCount: list_contacts_name.length,itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/8,
                        height: MediaQuery.of(context).size.width/8,
                        decoration:contact_image_box(index),
                        child:Center(
                          child: Icon(Icons.person,color: Colors.white,),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(list_contacts_name[index]["name"],
                                style: contact_text_style(Colors.black),
                              ),
                              Text(list_contacts_name[index]["phonenumber"],
                                style: contact_text_style(Colors.black),
                              ),
                            ],
                          )
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                      _check_box(),
                    ],
                  ),
                );
              }),
            ),
            Container(
              margin: EdgeInsets.only(top: _size/18),
              child: Column(
                children: [
                  Container(
                    height: _size/7,
                    width: _size,
                    color: Colors.white,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.cancel,color: Colors.grey,),
                          onPressed:(){
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(width: _size/13,),
                        Text("Select up to 31 people",
                          style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: _size/20),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: _size/10,
                    width: _size,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0,_size/20),
                          color: Colors.grey,
                          spreadRadius: -20,
                          blurRadius: 10
                        )
                      ]
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: _size/5.2,),
                        Text("Search contacts or dial",style: TextStyle(color: Colors.grey,fontSize: _size/25),),
                        Expanded(child: Container(),),
                        Container(
                          margin: EdgeInsets.only(right: _size/30),
                            child: Icon(
                                Icons.border_all,
                              color: Colors.grey,
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}






class _check_box extends StatefulWidget {
  @override
  __check_boxState createState() => __check_boxState();
}

class __check_boxState extends State<_check_box> {
  var _ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: _ischecked, onChanged: (value){
      setState(() {
        _ischecked=!_ischecked;
      });
    });
  }
}

