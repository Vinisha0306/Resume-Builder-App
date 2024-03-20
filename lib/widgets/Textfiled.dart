import 'package:flutter/material.dart';

Widget TextFields({required String text, required String hintText}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      TextField(
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
        ),
      ),
    ],
  );
}
