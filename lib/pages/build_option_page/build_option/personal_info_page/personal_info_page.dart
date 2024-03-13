import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../utils/Global.dart';
import 'components/personal.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

int _selectedindex = 0;
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
                    _selectedindex = 1;
                    setState(() {});
                  },
                  child: Container(
                    height: size.height * 0.07,
                    width: size.width * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      border: _selectedindex == 1
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
                    _selectedindex = 0;
                    setState(() {});
                  },
                  child: Container(
                    height: size.height * 0.07,
                    width: size.width * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      border: _selectedindex == 0
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
            Expanded(
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
                      IndexedStack(
                        index: _selectedindex,
                        children: [
                          //0
                          Info(
                              context: context,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.password),
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
                          //1
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: size.height * 0.03,
                                ),
                                Stack(
                                  children: [
                                    Align(
                                      alignment: const Alignment(0, 0),
                                      child: CircleAvatar(
                                        radius: size.height * 0.1,
                                        foregroundImage: Global.global.image !=
                                                null
                                            ? FileImage(Global.global.image!)
                                            : null,
                                      ),
                                    ),
                                    Align(
                                      alignment: const Alignment(0.3, 1),
                                      child: IconButton(
                                        onPressed: () async {
                                          ImagePicker picker = ImagePicker();

                                          XFile? file = await picker.pickImage(
                                              source: ImageSource.camera);

                                          if (file != null) {
                                            Global.global.image =
                                                File(file.path);
                                            setState(() {});
                                          }
                                        },
                                        icon: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                        style: const ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                            Colors.indigo,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Text(
                                  'Add Your Profile Photo',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
