import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: false,
          titleSpacing: 25,
          title: Row(
            children: [
              Text(
                "Shoes",
                style: TextStyle(
                  color: Color.fromRGBO(101, 101, 101, 1),
                  fontSize: 60,
                  fontFamily: 'Kanit',
                ),
              ),
              const SizedBox(width: 160),
              Image.asset(
                'assets/images/ommobi.png',
                width: 90,
                height: 90,
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          RoundedBox(
            color: const Color.fromRGBO(210, 198, 230, 1),
            text1: 'Nike SB Zoom Blazer',
            text2: 'Mid Premium',
            text3: 'ᘔ8,795',
            text4: 'Rp 1,729,000',
            imageUrl: 'https://i.postimg.cc/x8TVqNWr/sbzoomm.png',
          ),
          const SizedBox(height: 23),
          RoundedBox(
            color: Color.fromARGB(255, 142, 138, 137),
            text1: 'Nike Air Zoom Pegasus',
            text2: "Men's Rood Runing Shoes",
            text3: 'ᘔ9,995',
            text4: 'Rp 1,399,000',
            imageUrl: 'https://i.postimg.cc/gJ71ctqh/pegausss.png',
          ),
          const SizedBox(height: 23),
          RoundedBox(
            color: Color.fromARGB(255, 105, 190, 255),
            text1: 'Nike ZoomX Pavorly',
            text2: "Men's Rood Racing Shoe",
            text3: 'ᘔ19,695',
            text4: 'Rp 3,399,000',
            imageUrl: 'https://i.postimg.cc/KzYRhjJz/vaporflyy.png',
          ),
          const SizedBox(height: 23),
          RoundedBox(
            color: const Color.fromRGBO(234, 232, 234, 1),
            text1: 'Nike Air Force 1 S50',
            text2: "Older Kid's Shoe",
            text3: '1 Colour',
            text4: 'Rp 1,219,000',
            imageUrl: 'https://i.postimg.cc/VLt9VZJh/af11.png',
          ),
          const SizedBox(height: 23),
          RoundedBox(
            color: Color.fromARGB(255, 254, 170, 42),
            text1: 'Nike Waffle One',
            text2: "Men's Shoes",
            text3: 'ᘔ8,295',
            text4: 'Rp 1,729,000',
            imageUrl: 'https://i.postimg.cc/tgNrx20s/airmax11.png',
          ),
        ],
      ),
    );
  }
}

class RoundedBox extends StatelessWidget {
  final Color color;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String imageUrl;

  const RoundedBox({
    required this.color,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 125,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: -17,
            right: -2,
            child: Image.network(
              imageUrl,
              width: 160,
              height: 160,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 1),
                Text(
                  text2,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  text3,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  text4,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
