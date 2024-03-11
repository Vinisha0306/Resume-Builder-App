import 'package:flutter/material.dart';
import '../../Global.dart';

GlobalKey<FormState> formkey = GlobalKey<FormState>();

Widget Info(
    {required bool selectedvalue,
    required decoration,
    required bool password}) {
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
              // Info(context: context, size: size, text: 'First Name')
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
                              formkey.currentState!.save();
                            },
                            child: Text('Save'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              formkey.currentState!.reset();
                            },
                            child: Text('Reset'),
                          ),
                        ],
                      ),
                      Text('${Global.global.Name}'),
                      Text('${Global.global.email}'),
                      Text('${Global.global.contact}'),
                      Text('${Global.global.address}'),
                      Text('${Global.global.password}'),
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
