import 'package:final_project/models/drama_1.dart';
import 'package:final_project/models/fiction_2.dart';
import 'package:final_project/other.dart';
import 'package:final_project/phi.dart';
import 'package:final_project/rom.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      title: 'Books reviwe',
      debugShowCheckedModeBanner: false,
      home: HomeBooks(),
    );
  }
}

class HomeBooks extends StatelessWidget {
  HomeBooks({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('books')),
      ),
      body: Stack(children: <Widget>[
        Container(
          height: size.height * .35,
          decoration: BoxDecoration(color: Color.fromARGB(255, 149, 204, 198)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text(
                  "Let's Read a new book!",
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(fontWeight: FontWeight.w900),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: .85,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: <Widget>[
                      CategoryCard(
                        title: "Drama",
                        assets: 'assets/images/dd.jpg',
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => drama()));
                        },
                      ),
                      CategoryCard(
                        title: 'philosophy',
                        assets: 'assets/images/ph.jpg',
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => phil()));
                        },
                      ),
                      CategoryCard(
                        title: 'Romance',
                        assets: 'assets/images/l.jpg',
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => rom()));
                        },
                      ),
                      CategoryCard(
                        title: 'fiction',
                        assets: 'assets/images/f.png',
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => fiction()));
                        },
                      ),
                      CategoryCard(
                        title: 'ohters',
                        assets: 'assets/images/k.jpg',
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => other()));
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String assets;
  final String title;
  final onTap;

  const CategoryCard({
    Key? key,
    required this.assets,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 17,
              spreadRadius: -15,
            )
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Spacer(),
                Image.asset(assets),
                Spacer(),
                Text(title),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
