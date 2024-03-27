import 'package:flutter/material.dart';

class TechnicalSkills extends StatefulWidget {
  const TechnicalSkills({super.key});

  @override
  State<TechnicalSkills> createState() => _TechnicalSkillsState();
}

List Technical = ['', ''];
List<TextEditingController> TechnicalSkill = [
  TextEditingController(),
  TextEditingController(),
];

class _TechnicalSkillsState extends State<TechnicalSkills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Techical Skills',
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
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text(
                'Enter Your Technical Skills',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              ...List.generate(
                Technical.length,
                (index) => Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: TechnicalSkill[index],
                        decoration: const InputDecoration(
                          hintText: 'Coding',
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Technical.removeAt(index);
                        TechnicalSkill.removeAt(index);
                        setState(() {});
                      },
                      icon: Icon(Icons.delete),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  Technical.add('');
                  TechnicalSkill.add(TextEditingController());
                  setState(() {});
                },
                child: const Text(
                  'Add',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
