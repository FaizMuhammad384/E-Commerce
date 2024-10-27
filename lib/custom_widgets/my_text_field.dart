import 'package:flutter/material.dart';


class MyTextField extends StatelessWidget {

  final String? labelText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final void Function(String)? onChanged;

@override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xff000000).withOpacity(.15),
            offset: Offset(0, 2),
            spreadRadius: 0,
            blurRadius: 4,
          ),
        ],
        borderRadius: BorderRadius.circular(4),
      ),
      child: TextFormField(
        cursorColor: Color(0xff222222),
        style: TextStyle(
          fontFamily: "MetroPolis",
          color: Color(0xff2D2D2D),
          fontWeight: FontWeight.w500,
          fontSize: 15,
        ),
        validator: validator,
        controller: controller,
        keyboardType: keyboardType,
        onChanged: onChanged,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
            labelText: labelText,
            filled: true,
            fillColor: Colors.white,
            suffixIcon: suffixIcon,
            labelStyle: TextStyle(
              fontFamily: "MetroPolis",
              color: Color(0xff9B9B9B),
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(4),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(4),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(4),
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 0)
        ),
      ),
    );
  }

  const MyTextField({
    this.labelText,
    this.controller,
    this.validator,
    this.keyboardType,
    this.suffixIcon,
    this.onChanged
  });
}
