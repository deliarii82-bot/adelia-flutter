import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(leading: Icon(Icons.alarm), title: Text('Alarm')),
          ),
            ListTile(leading: Icon(Icons.contact_mail), title: Text('Contact')),
            ListTile(leading: Icon(Icons.music_note), title: Text('Music')),          
        ],
      ),
    );
  }
}