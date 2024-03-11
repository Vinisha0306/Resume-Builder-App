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
        title: Text('Build Option'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: MyRoutes.BuildOptions.map(
              (e) => Card(
                color: Colors.blue.shade200,
                child: ListTile(
                  // leading: Image.asset(
                  //   e['icon'],
                  //   height: 40,
                  // ),
                  title: Text(
                    e['title'],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, e['routes']);
                    },
                    icon: const Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
            ).toList(),
          ),
        ),
      ),
    );
  }
}
