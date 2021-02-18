
import 'package:flutter/material.dart';

final DSearch_bar_box_decoration = BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(10),
  boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 5,
      blurRadius: 7,
      offset: Offset(0, 3),
    )
  ]
);




contact_image_box( int index){
  return BoxDecoration(
      shape: BoxShape.circle,
      color: index%6==0?Colors.lightBlue: index%2==0 ? Colors.amber:index%3==0 ? Colors.green:Colors.purple,
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(0,0),
          blurRadius: 6,
          spreadRadius: 0.5,
        )
      ]
  );
}




//botton_RoundedRectangleBorder
botten_RoundedRectangleBorder(Color _color){
  return RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(0),
    side: BorderSide(color: _color),
  );
}

