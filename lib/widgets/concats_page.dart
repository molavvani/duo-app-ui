import 'package:duo_project/const/style_decorations.dart';
import 'package:duo_project/const/style_text.dart';
import 'package:duo_project/data/contact_data.dart';
import 'package:flutter/material.dart';




class contact_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  child: Text(list_contacts_name[index]["phonenumber"],
                    style: contact_text_style(Colors.blue),
                  )
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                ),
              ),
              Text(list_contacts_name[index]["name"],
                style: contact_text_style(Colors.blue),
              ),
            ],
          ),
        );
      }),
    );
  }
}