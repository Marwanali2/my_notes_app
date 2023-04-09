import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.label,
    this.hintText,
    this.onChanged,
    this.keyboardType,
    this.maxLines = 1,
  });

  String? label;
  String? hintText;
  int? maxLines;
  Function(String)? onChanged;
  TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Required*';
        } else {
          return null;
        }
      },
      style: const TextStyle(color: Colors.white),
      keyboardType: keyboardType,
      maxLines: maxLines,
      decoration: InputDecoration(
        enabled: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 25,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        //
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color.fromRGBO(255, 205, 124, 1)),
          borderRadius: BorderRadius.circular(20),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(20),
        ),

        label: Text(
          "$label",
          style: const TextStyle(
            color: Colors.cyanAccent,
          ),
        ),
        hintText: "$hintText",
        hintStyle: const TextStyle(
          color: Colors.black,
        ),
      ),
      onChanged: onChanged,
    );
  }
}
