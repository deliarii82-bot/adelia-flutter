import 'package:flutter/material.dart';

class SpacedList extends StatelessWidget {
  const SpacedList({super.key});

  @override
  Widget build(BuildContext context) {
  int itemCount = 4;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'List Panjang',
          style: TextStyle(color: const Color.fromARGB(225, 236, 234, 234)),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, Constraints){
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: Constraints.maxHeight),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  itemCount, (index) => Card(
                    color: const Color.fromARGB(255, 229, 88, 118),
                    margin: EdgeInsets.all(16),
                    child: SizedBox(
                      height: 100,
                      child:Center( 
                      child: Text(
                        'item $index'
                      ),
                      ),
                    ),
                  )
                )                
              ),
            ),
          );
        }
      ),
    );
  }
}