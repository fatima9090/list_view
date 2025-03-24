import 'package:flutter/material.dart';

import 'no_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horizontal Image List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyImagePageState(),
    );
  }
}

class MyImagePageState extends StatelessWidget {
  const MyImagePageState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Images',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Color(0xFF66CCCC),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            String url = '';

            if (index == 0) {
              url =
              'https://static.vecteezy.com/system/resources/thumbnails/036/324/708/small/ai-generated-picture-of-a-tiger-walking-in-the-forest-photo.jpg';
            } else if (index == 1) {
              url =
 'https://images.pexels.com/photos/2325447/pexels-photo-2325447.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500';
              } else if (index == 2) {
              url =
 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Maruti/Dzire/11387/1731318279714/front-left-side-47.jpg?impolicy=resize&imwidth=420';
              } else if (index == 3) {
              url =
 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6-pi_C1eqMmirL7ajU2BHtCat0tIMTCVrvw&s';
             } else if (index == 4) {
              url =
 'https://images.ctfassets.net/hrltx12pl8hq/3Z1N8LpxtXNQhBD5EnIg8X/975e2497dc598bb64fde390592ae1133/spring-images-min.jpg';
             } else {
              url =
 'https://cdn.pixabay.com/photo/2018/08/04/11/30/draw-3583548_1280.png';
             }
            return Padding(
              padding: const EdgeInsets.all(28.0),
              child: FractionallySizedBox(
                heightFactor: 0.5, // set the height to half of the screen
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.network(
                    url,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyImageSlider()),
          );
        },
        child: const Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}
