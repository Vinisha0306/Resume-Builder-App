import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/routes_utils.dart';

class Build_Option_Page extends StatefulWidget {
  const Build_Option_Page({super.key});

  @override
  State<Build_Option_Page> createState() => _Build_Option_PageState();
}

class _Build_Option_PageState extends State<Build_Option_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Build Option',
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: MyRoutes.BuildOptions.map(
              (e) => GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, e['routes']);
                },
                child: Card(
                  color: Colors.blue.shade200,
                  child: ListTile(
                    leading: Image.asset(
                      e['icon'],
                      width: 40,
                    ),
                    title: Text(
                      e['title'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, e['routes']);
                      },
                      icon: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
              ),
            ).toList(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(MyRoutes.PDFPage);
        },
        child: Text('PDF'),
      ),
    );
  }
}
