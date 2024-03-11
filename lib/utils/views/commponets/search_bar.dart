import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget search({required context, required size}) {
  return Container(
    height: size.height * 0.05,
    alignment: Alignment.center,
    child: TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 15,
            color: Colors.orange,
          ),
        ),
        hintText: "Ex. Vinisha",
        hintStyle: TextStyle(
            fontSize: size.height * 0.016, color: Colors.grey.shade500),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            width: 1,
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            width: 2,
            color: Colors.grey,
          ),
        ),
      ),
    ),
  );
}
