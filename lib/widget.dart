import 'package:flutter/material.dart';
snack(context,text) {
  var snackBar = SnackBar(content: Text(text,),
  backgroundColor:Colors.red,
 
  
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
