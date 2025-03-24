import 'package:flutter/material.dart';

import 'hor_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vertical Image List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        debugShowCheckedModeBanner: false,
        home: MyImagePage(),
    );
  }
}

extension ImageExtension on Image {
  Widget wrappedBorder() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 5),
      ),
      child: this,
    );
  }
}

class MyImagePage extends StatelessWidget {
  const MyImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Images',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Color(0xFF66CCCC), 
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(height: 30),
                ImageExtension(Image(
                  image: AssetImage('images/cat.jpeg'),
                  width: 400,
                  height: 400,
                  fit: BoxFit.cover,
                )).wrappedBorder(),

                SizedBox(height: 30),
                ImageExtension(Image.asset(
                  'images/Bgnu.jpeg',
                  width: 400,
                  height: 400,
                  fit: BoxFit.cover,
                )).wrappedBorder() ,
                SizedBox(height: 30),
                ImageExtension(Image.asset(
                  'images/x.jpg',
                  width: 400,
                  height: 400,
                  fit: BoxFit.cover,
                )).wrappedBorder(),
                SizedBox(height: 30),
                ImageExtension(Image.asset(
                  'images/w.jpg',
                  width: 400,
                  height: 400,
                  fit: BoxFit.cover,
                )).wrappedBorder() ,
                SizedBox(height: 30),
                ImageExtension(Image.asset(
                  'images/k.jpg',
                  width: 400,
                  height: 400,
                  fit: BoxFit.cover,
                )) .wrappedBorder(),
                SizedBox(height: 30),
                ImageExtension(Image.asset(
                  'images/flutter.jpg',
                  width: 400,
                  height: 400,
                  fit: BoxFit.cover,
                )) .wrappedBorder(),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyImagePageState()),
          );
        },
         child: const Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}
