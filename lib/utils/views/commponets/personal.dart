import 'package:flutter/material.dart';
import '../../Global.dart';

GlobalKey<FormState> formkey = GlobalKey<FormState>();

Widget Info(
    {required bool selectedvalue,
    required decoration,
    required bool password,
    required context}) {
  return Expanded(
    child: Visibility(
      visible: selectedvalue,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Let’s start with your header',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const Text(
                  'Include your full name and at least one way for employers to reach you.'),
              Form(
                key: formkey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // name
                      TextFormField(
                        onSaved: (val) {
                          Global.global.Name = val;
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return 'Must Enter Name';
                          } else {
                            return null;
                          }
                        },
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.person),
                          hintText: "Enter name",
                          labelText: "Name",
                          hintStyle: TextStyle(
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ),
                      // email
                      TextFormField(
                        onSaved: (val) {
                          Global.global.email = val;
                        },
                        validator: (val) {
                          val!.isEmpty
                              ? "Must enter email"
                              : RegExp(r'''^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$''')
                                      .hasMatch(val)
                                  ? null
                                  : "Invalid email";
                        },
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email),
                          hintText: "Enter Email",
                          labelText: "Email",
                          hintStyle: TextStyle(
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ),

                      // Contact
                      TextFormField(
                        onSaved: (val) {
                          Global.global.contact = val;
                        },
                        validator: (val) {
                          val!.isEmpty
                              ? 'Must Enter Contact Number'
                              : val.length < 10
                                  ? 'Must Enter 10 Digit'
                                  : null;
                        },
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        maxLength: 10,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.call),
                          hintText: "Enter Contact",
                          labelText: "Contact",
                          hintStyle: TextStyle(
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ),
                      // Address
                      TextFormField(
                        onSaved: (val) {
                          Global.global.address = val;
                        },
                        validator: (val) {
                          val!.isEmpty ? 'Must Enter Address' : null;
                        },
                        textInputAction: TextInputAction.next,
                        maxLines: 2,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.location_on_sharp),
                          hintText: "Enter Address",
                          labelText: "Address",
                          hintStyle: TextStyle(
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ),
                      // password
                      TextFormField(
                        onSaved: (val) {
                          Global.global.password = val;
                        },
                        validator: (val) {
                          val!.isEmpty ? 'Must Enter Password' : null;
                        },
                        textInputAction: TextInputAction.done,
                        obscureText: password,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: decoration,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              bool validated = formkey.currentState!.validate();
                              if (validated) {
                                formkey.currentState!.save();
                              }
                              ScaffoldMessenger.of(context).showSnackBar(
                                MySnackBar(
                                  color: validated ? Colors.green : Colors.red,
                                  context: validated
                                      ? 'Form Saved'
                                      : 'Failed To Validate Form',
                                ),
                              );
                            },
                            child: const Text('Save'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              formkey.currentState!.reset();
                            },
                            child: const Text('Reset'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

SnackBar MySnackBar({required color, required context}) {
  return SnackBar(
    content: Text(context),
    behavior: SnackBarBehavior.floating,
    backgroundColor: color,
  );
}
