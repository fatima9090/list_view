import 'package:flutter/material.dart';

import 'main.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Slider',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyImageSlider(),
    );
  }
}

class MyImageSlider extends StatelessWidget {
  const MyImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    // List of images (local + network)
    final List<Map<String, dynamic>> images = [
      {'path': 'images/x.jpg', 'isNetwork': false},
      {
        'path': 'https://static.vecteezy.com/system/resources/thumbnails/036/324/708/small/ai-generated-picture-of-a-tiger-walking-in-the-forest-photo.jpg',
        'isNetwork': true
      },
      {'path': 'images/k.jpg', 'isNetwork': false},
      {
        'path': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2yoa7VKqMNJmR0hwvOqvE-mWJDSU53ffZIA&s',
        'isNetwork': true
      },
      {'path': 'images/b.jpg', 'isNetwork': false},
      {
        'path': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoBuMvSuYezLE9rwI-zOJeIOmcIGfDPqOvFA&s',
        'isNetwork': true
      },
    ];

    return Scaffold(
      backgroundColor: Color(0xFF66CCCC),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text('Image Slider', style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical, // Enables up/down scrolling
        child: Column(
          children: List.generate(images.length, (index) {
            return Center(
              child: SizedBox(
                height: 350, // Adjust height
                width: 300, // Adjust width
                child: PageView.builder(
                  scrollDirection: Axis.horizontal, // Enables left-right swipe
                  itemCount: images.length,
                  itemBuilder: (context, pageIndex) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 20.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: images[pageIndex]['isNetwork']
                          ? Image.network(images[pageIndex]['path'], fit: BoxFit.cover)
                          : Image.asset(images[pageIndex]['path'], fit: BoxFit.cover),
                    );
                  },
                ),
              ),
            );
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
        },
        child: const Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}
