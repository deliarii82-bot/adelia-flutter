import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List & Grid View'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Menu Aplikasi'),
            ListTile(
              leading: Icon(Icons.contact_mail), title: Text('Akses Contact 1'),
            ),
            ListTile(
              leading: Icon(Icons.contact_mail), title: Text('Akses Contact 2'),
            ),
            ListTile(
              leading: Icon(Icons.contact_mail), title: Text('Akses Contact 3'),
            ),
            Text('Warna Horizontal'),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(width: 100, color: Colors.blue),
                  Container(width: 100, color: Colors.red),
                  Container(width: 100, color: Colors.yellow),
                  Container(width: 100, color: Colors.green),
                ],
              ),
            ),
            Text('Grid Item'),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: List.generate(6, (index) {
                return Card(
                  color: const Color.fromARGB(255, 115, 246, 146),
                  child: Center(child: Text('Item ${index +1}')),
                );
              }),
            )                     
          ],
        ),
      ),
    );
  }
}