import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/views/commponets/personal.dart';

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
          title: const Text('Personal info'),
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
                      color: const Color.fromARGB(255, 31, 90, 172),
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
                      color: const Color.fromARGB(255, 31, 90, 172),
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
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16),
                          height: size.height * 0.3,
                          width: size.height * 0.2,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2,
                                offset: Offset(1, 1),
                                color: Colors.grey,
                              ),
                            ],
                            shape: BoxShape.circle,
                          ),
                        ),
                        Positioned(
                          right: 3,
                          child: FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Colors.indigo,
                            child: const Icon(Icons.add),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.5,
                    )
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
