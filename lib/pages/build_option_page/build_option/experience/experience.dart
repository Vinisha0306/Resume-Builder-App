import 'package:flutter/material.dart';

import '../../../../widgets/Textfiled.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

bool value = false;
String? employed;
String? employ;

class _ExperienceState extends State<Experience> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Experience',
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
                text: "Company Name",
                hintText: "Narola Infotech",
              ),
              const SizedBox(
                height: 15,
              ),
              TextFields(
                text: 'Filed Of Your Post',
                hintText: 'Quality Test Engineer',
              ),
              const SizedBox(
                height: 15,
              ),
              TextFields(
                text: 'Roles(Optional)',
                hintText:
                    'Working With Team Members to come up with new concepts and product analysis ',
              ),
              const SizedBox(
                height: 15,
              ),
              const Text("Employed status"),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile(
                      title: const Text('Previously Employed'),
                      value: 'Previously',
                      groupValue: employed,
                      onChanged: (value) {
                        employed = value;
                        setState(() {
                          employ = 'true';
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile(
                      title: Text('Currently Employed'),
                      value: 'Currently',
                      groupValue: employed,
                      onChanged: (value) {
                        employed = value;
                        setState(() {
                          employ = 'false';
                        });
                      },
                    ),
                  ),
                ],
              ),
              const Divider(),
              Visibility(
                visible: employ == "true",
                child: Row(
                  children: [
                    Expanded(
                      child: TextFields(
                        text: 'Join Date',
                        hintText: "DD/MM/YYYY",
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextFields(
                        text: 'Exit Date',
                        hintText: 'DD/MM/YYYY',
                      ),
                    )
                  ],
                ),
              ),
              Visibility(
                visible: employ == "false",
                child: Row(
                  children: [
                    Expanded(
                      child: TextFields(
                        text: 'Join Date',
                        hintText: "DD/MM/YYYY",
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
