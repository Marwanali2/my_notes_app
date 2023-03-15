import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  CustomTextField({this.label, this.hintText,this.onChanged,this.keyboardType,this.maxLines=1});
  String?label;
  String?hintText;
  int?maxLines;
  Function(String)?onChanged;
  TextInputType?keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if(value!.isEmpty){
          return 'Required*';
        }
      },
      style: const TextStyle(color: Colors.black),
      keyboardType: keyboardType,
      maxLines: maxLines,
      decoration: InputDecoration(

        enabled: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 25),
        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey,),borderRadius: BorderRadius.circular(20)),//
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: const Color.fromRGBO(255, 205, 124,1)),borderRadius: BorderRadius.circular(20)),
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey),borderRadius: BorderRadius.circular(20)),

        label: Text(
          "$label",
          style: TextStyle(color: Colors.cyanAccent),
        ),
        hintText: "$hintText",
        hintStyle: TextStyle(color: Colors.black),
      ),
      onChanged:onChanged ,
    );
  }
}
