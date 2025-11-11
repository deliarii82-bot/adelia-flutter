
import 'package:flutter/material.dart';
import 'package:flutter_application_1/halaman3.dart';

class DetailPage extends StatelessWidget{
   final String nama;
   final String umur;
  const DetailPage({super.key, required this.nama, required this.umur});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman 2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Selamat Datang $nama'),
            SizedBox(height: 10),
            Text('Umur Saya $umur'),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Kembali Ke Halaman Sebelumnya"),
             ),
             SizedBox(height: 10,),
             ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => Halaman3())
                );
              },
              child: Text("Pergi Ke Halaman 3")
            )
          ],
        ),
      ),
    );
  }
}