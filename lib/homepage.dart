
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/detail_page.dart';
import 'package:flutter_application_1/halaman3.dart';

class HomePage extends StatelessWidget {
  final String nama = "Adelia Bahri";
  final String umur = "17";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman 1")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                   DetailPage(nama: nama, umur: umur,)),
                  );
              },
              child: Text('Pergi Ke Halaman 2'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => Halaman3()),
                  );
              },
              child: Text('Pergi Ke Halaman 3'),
            ),
          ],
        ),
      ),
    );

  }
}