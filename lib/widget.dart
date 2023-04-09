import 'package:flutter/material.dart';
snack(context,text) {
  var snackBar = SnackBar(content: Text(text,),
  backgroundColor:Color(0xff6B59D3),
 
  
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
