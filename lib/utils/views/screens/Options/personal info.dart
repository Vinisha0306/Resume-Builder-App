import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_builder_app/utils/views/commponets/personal.dart';

import '../../../Global.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

bool _selectedvalue = true;
bool password = true;

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Personal info',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.indigo,
        ),
        body: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    _selectedvalue = false;
                    setState(() {});
                  },
                  child: Container(
                    height: size.height * 0.07,
                    width: size.width * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      border: _selectedvalue == false
                          ? const Border(
                              bottom: BorderSide(width: 6, color: Colors.white),
                            )
                          : const Border(),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'Profile Photo',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _selectedvalue = true;
                    setState(() {});
                  },
                  child: Container(
                    height: size.height * 0.07,
                    width: size.width * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      border: _selectedvalue == true
                          ? const Border(
                              bottom: BorderSide(width: 5, color: Colors.white),
                            )
                          : const Border(),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'Profile Details',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Info(
                selectedvalue: _selectedvalue,
                context: context,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  hintText: "Enter Password",
                  labelText: "Password",
                  hintStyle: TextStyle(
                    color: Colors.grey.shade400,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      password = !password;
                      setState(() {});
                    },
                    icon: Icon(password
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined),
                  ),
                ),
                password: password),
            Visibility(
              visible: _selectedvalue == false,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: size.height * 0.1,
                          foregroundImage: Global.global.image != null
                              ? FileImage(Global.global.image!)
                              : null,
                        ),
                        IconButton(
                          onPressed: () async {
                            ImagePicker picker = ImagePicker();

                            XFile? file = await picker.pickImage(
                                source: ImageSource.camera);

                            if (file != null) {
                              Global.global.image = File(file.path);
                              setState(() {});
                            }
                          },
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Colors.indigo,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.06,
                    ),
                    const Text(
                      'Add Your Profile Photo',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.45,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
