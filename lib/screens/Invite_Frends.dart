import 'package:duo_project/const/style_decorations.dart';
import 'package:duo_project/data/contact_data.dart';
import 'package:duo_project/widgets/search_box_file.dart';
import 'package:flutter/material.dart';


class Invaite_Screen extends StatefulWidget {
  @override
  _Invaite_ScreenState createState() => _Invaite_ScreenState();
}

class _Invaite_ScreenState extends State<Invaite_Screen> {
  @override
  Widget build(BuildContext context) {
    var _size=MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: _size/18,),
                Container(
                  //color: Colors.red,
                  height: _size/6,
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.backspace_rounded),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(width: _size/10,),
                      Text("Invite friends",
                        style: TextStyle(fontSize: _size/17),
                      ),

                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(right: _size/25,left: _size/25 ,top: _size/50),
                    //height: 50,
                    decoration: DSearch_bar_box_decoration,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.search),
                        ),
                        SizedBox(
                          width: _size*2/3,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search contacts or dial",
                            ),
                          ),
                        ),
                        //drop_down_widget()
                      ],
                    )
                ),
                Container(
                  height: _size*5,
                  child: ListView.builder(
                      itemCount: list_contacts_name.length,
                      itemBuilder: (BuildContext ctxt, int index) {
                        return new Card_contact(list_contacts_name[index]["name"],list_contacts_name[index]["phonenumber"]);
                      }
                  ),
                )
              ],
            ),
          ),
      ),
    );
  }
}

class Card_contact extends StatelessWidget {

  var name;
  var mobile;
  Card_contact(name,mobile){
    this.mobile=mobile;
    this.name=name;
  }
  @override
  Widget build(BuildContext context) {
    var _size=MediaQuery.of(context).size.width;
    return Column(
      children: [
      Container(
      width: _size,
      height: _size/7,
      child: Row(
        children: [
          SizedBox(width: _size/20,),
          Container(
            child: Center(
              child: Icon(Icons.account_circle_outlined,
                size: _size/10,
                color: Colors.blue,
              ),
            ),
            width: _size/5,
            height: _size/5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.blue,
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 0), // changes position of shadow
                ),
              ],
            ),
          ),
          SizedBox(width: _size/20,),
          Column(
            children: [
              SizedBox(height: _size/40,),
              Text(name),
              SizedBox(height: _size/30,),
              Text(mobile)
            ],
          ),
          Expanded(
            child: Container(),
          ),
          Text("Invite",style: TextStyle(color: Colors.blue,fontSize: _size/25,fontWeight: FontWeight.bold),),
          SizedBox(width: _size/20,)
        ],
      ),
    ),
      SizedBox(height: _size/20,)
      ],
    );
  }
}

