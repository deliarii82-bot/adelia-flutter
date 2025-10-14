import 'package:flutter/material.dart';

class SpacedAndLongList extends StatelessWidget {
  const SpacedAndLongList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> longItems =
        List<String>.generate(100, (i) => 'Item ${i + 1}');
    final List<Color> spacedColors = [
      Color.fromARGB(255, 247, 181, 230),
      Color.fromARGB(255, 254, 152, 228),
      Color.fromARGB(255, 250, 96, 211),
      Color.fromARGB(255, 233, 69, 192),
      Color.fromARGB(255, 187, 4, 141),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Spaced & Long List'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 247, 44, 186),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Bagian 1: Spaced List
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '1. List dengan Spasi Merata',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Column(
              children: List.generate(spacedColors.length, (index) {
                return Card(
                  color: spacedColors[index],
                  margin: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 8), // kasih spasi antar card
                  child: SizedBox(
                    height: 80,
                    child: Center(
                      child: Text(
                        'Item ${index + 1}',
                        style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),

            // Bagian 2: Long List
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '2. List Panjang 100 Item',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 400, // biar scrollable di dalam section
              child: ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: longItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.star),
                    title: Text(
                      longItems[index],
                      style: const TextStyle(
                        color:  Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}