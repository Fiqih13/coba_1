import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<String> listGambar = [
    "assets/images/food.jpg",
    "assets/images/food2.jpg",
    "assets/images/food3.jpg",
    "assets/images/food4.jpg",
    "assets/images/food5.jpg",
    "assets/images/food6.jpeg",
    "assets/images/food7.jpg",
    "assets/images/food.jpg",
    "assets/images/food2.jpg",
    "assets/images/food3.jpg",
    "assets/images/food4.jpg",
    "assets/images/food5.jpg",
    "assets/images/food6.jpeg",
    "assets/images/food7.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GridView.builder(
            itemCount: listGambar.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemBuilder: (context, idx) => Container(
                  child: Image.asset(
                    listGambar[idx],
                    fit: BoxFit.cover,
                  ),
                )),
      ),
    );
  }
}
