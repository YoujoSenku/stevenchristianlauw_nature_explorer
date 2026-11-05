import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nature Explorer',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.lightGreenAccent),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nature Explorer'),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        backgroundColor: Color.from(alpha: 5, red: 0, green: 50, blue: 0),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Image.network(
              'https://picsum.photos/id/10/200/300',
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 6,),
            Text(
                'Peaceful Natural Escape',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            SizedBox(height: 16,),
            Text(
              "Discover, Explorer, Reconnect",
              style: TextStyle(
                  fontSize: 16,
              ),
            ),
            SizedBox(height: 6,),
            Text(
              'Discover the beauty of nature through breathtaking landscapes, peaceful forests, and stunning mountain views. '
              'Explore remarkable destinations, enjoy the fresh air, and reconnect with the natural world. '
              'From quiet lakes to scenic trails, every journey offers a new experience. '
              'Let nature inspire your next adventure and create unforgettable memories along the way.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 16,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'https://picsum.photos/id/10/300/200',
                      fit: BoxFit.cover,
                      width: 150,
                      height: 300,
                    ),
                  ),
                  SizedBox(width: 16,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'https://picsum.photos/id/29/300/200',
                      fit: BoxFit.cover,
                      width: 150,
                      height: 300,
                    ),
                  ),
                  SizedBox(width: 16,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'https://picsum.photos/id/37/300/200',
                      fit: BoxFit.cover,
                      width: 150,
                      height: 300,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

