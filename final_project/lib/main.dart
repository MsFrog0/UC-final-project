import 'package:final_project/models/book.dart';
import 'package:final_project/screens/book_detail.dart';
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

  List<Book> dramaBooks = [
    Book(
        title: 'd1',
        description: 'description',
        imgUrl: 'assets/images/d_1.jpg',
        genre: 'drama'),
    Book(
        title: 'd2',
        description: 'description',
        imgUrl: 'assets/images/d_2.jpg',
        genre: 'drama'),
    Book(
        title: 'd3',
        description: 'description',
        imgUrl: 'assets/images/d_3.png',
        genre: 'drama'),
    Book(
        title: 'd4',
        description: 'description',
        imgUrl: 'assets/images/d_4.webp',
        genre: 'drama')
  ];

  List<Book> philBooks = [
    Book(
      title: 'title',
      description: 'description',
      imgUrl: 'assets/images/p_1.jpg',
    ),
    Book(
      title: 'title',
      description: 'description',
      imgUrl: 'assets/images/p_2.jpg',
    ),
    Book(
      title: 'title',
      description: 'description',
      imgUrl: 'assets/images/p_3.jpg',
    ),
  ];

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
                              builder: (BuildContext context) => BookDetail(
                                    books: dramaBooks,
                                    genre: 'Drama',
                                  )));
                        },
                      ),
                      CategoryCard(
                        title: 'philosophy',
                        assets: 'assets/images/ph.jpg',
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => BookDetail(
                                    books: philBooks,
                                    genre: 'philosophy',
                                  )));
                        },
                      ),
                      CategoryCard(
                        title: 'Romance',
                        assets: 'assets/images/l.jpg',
                        onTap: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (BuildContext context) => BookDetail()));
                        },
                      ),
                      CategoryCard(
                        title: 'fiction',
                        assets: 'assets/images/f.png',
                        onTap: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (BuildContext context) => BookDetail()));
                        },
                      ),
                      CategoryCard(
                        title: 'ohters',
                        assets: 'assets/images/k.jpg',
                        onTap: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (BuildContext context) => BookDetail()));
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
