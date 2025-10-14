import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Profil Adel",
        style: TextStyle(color: Colors.white, fontFamily: 'Roboto'),
        ),       
        backgroundColor: Colors.red,
      ),
     body: Padding(
      padding: EdgeInsets.only(top: 10),
       child: Column(
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(800.0),
              child: Image.asset('image/imut 2.jpg'),
            ),
          ),
          SizedBox(height: 10,),        
          Text("Adelia Bahri", style: TextStyle(
            fontSize: 35,
          ),),
          Text("Pelajar", style: TextStyle(
            fontSize: 24,
          ),),
          Text("SMK YPC TASIKMALAYA", style: TextStyle(fontSize: 10,),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(onPressed: () {},
              icon: const Icon(Icons.call,color: Colors.amberAccent,),
              label: const Text('call'),
              ),
               ElevatedButton.icon(onPressed: () {},
              icon: const Icon(Icons.map,color: Colors.amberAccent,),
              label: const Text('map'),
              ),
               ElevatedButton.icon(onPressed: () {},
              icon: const Icon(Icons.share,color: Colors.amberAccent,),
              label: const Text('share'),
              ),
            ],
          )
        ],
       ),        
      ),
    );
  }
}