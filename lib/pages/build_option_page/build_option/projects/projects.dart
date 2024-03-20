import 'package:flutter/material.dart';

import '../../../../widgets/Textfiled.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

bool c = false;
bool cpp = false;
bool flutter = false;
bool dart = false;

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Projects',
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
      backgroundColor: Color.fromARGB(255, 100, 149, 237),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFields(
                  text: 'Project Title',
                  hintText: 'Resume Builder App',
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Technologies',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: c,
                      onChanged: (value) {
                        setState(() {
                          c = value!;
                        });
                      },
                    ),
                    const Text('C Programming'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: cpp,
                      onChanged: (value) {
                        setState(() {
                          cpp = value!;
                        });
                      },
                    ),
                    const Text('C++'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: flutter,
                      onChanged: (value) {
                        setState(() {
                          flutter = value!;
                        });
                      },
                    ),
                    const Text('Flutter'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: dart,
                      onChanged: (value) {
                        setState(() {
                          dart = value!;
                        });
                      },
                    ),
                    const Text('Dart'),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFields(
                  text: 'Roles',
                  hintText: 'Organize team members , Code analysis',
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFields(
                  text: 'Technologies',
                  hintText: '5- Programming',
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFields(
                  text: 'Project Descripation',
                  hintText: 'Enter Your Project Descripition',
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Save',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
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
}
