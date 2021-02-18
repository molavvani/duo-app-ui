import 'package:duo_project/const/style_decorations.dart';
import 'package:duo_project/const/style_text.dart';
import 'package:flutter/material.dart';


class squer_button_widget extends StatelessWidget {
  IconData _icon;
  String _butten_text;
  Color _color;
  double _width;
  double _height;
  String  _screen_name;
  squer_button_widget(this._icon,this._butten_text,this._color,this._width,this._height,this._screen_name);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: _width,
      height: _height,
      child: RaisedButton(
        color: Colors.white,
        shape: botten_RoundedRectangleBorder(_color),
        onPressed: (){
          Navigator.pushNamed(context, _screen_name);
        },
        child: FittedBox(
          fit: BoxFit.contain,
          child: Row(
            children: [
              Icon(_icon,color: _color,),
              Text(_butten_text,
                style: contact_text_style(_color),
              )
            ],
          ),
        ),
      ),
    );
  }
}