import 'package:coba_1/presentation/halaman2.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  Dashboard({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<String> listgambar = [
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
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blueAccent,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Page2()));
            },
            icon: Icon(
              Icons.list,
            ),
            splashColor: Colors.white,
          ),
        ],
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: listgambar.length,
          itemBuilder: (context, idx) => Container(
            margin: EdgeInsets.only(top:10),
                height: 100,
                width: 100,
                color: Colors.redAccent,
                child: Image.asset(
                  listgambar[idx],
                  fit: BoxFit.cover,
                ),
              )),
    );
  }
}
