import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage ({super.key});

  @override
  State<CounterPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CounterPage> {
  int counter = 1;

  void increment(){
    setState(() {
      counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nilai : $counter", style: const TextStyle(color: Colors.yellow, fontWeight:FontWeight.bold),),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed:increment, 
              style: ElevatedButton.styleFrom(), child: Text("Tambah Nilai"),
            ),
          ],
        ),
      ),
    );
  }
}