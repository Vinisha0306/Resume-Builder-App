import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/routes_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: Colors.white,
      appBar: AppBar(
        title: Text('Resume App'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.BuildOptionPage);
        },
        icon: Icon(Icons.add),
        label: Text('Create'),
        backgroundColor: Color.fromARGB(255, 100, 149, 237),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text('No any Resume is created'),
      ),
    );
  }
}
