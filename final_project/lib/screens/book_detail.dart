import 'dart:math';
import 'package:final_project/models/book.dart';
import 'package:flutter/material.dart';

class BookDetail extends StatefulWidget {
  const BookDetail({super.key, required this.books, required this.genre});

  final List<Book> books;
  final String genre;

  @override
  State<BookDetail> createState() => _MyAppState();
}

class _MyAppState extends State<BookDetail> {
  var randomIndex;
  late Book randomBook;

  @override
  void initState() {
    super.initState();
    randomIndex = Random().nextInt(widget.books.length);
    randomBook = widget.books[randomIndex];
  }

  void play() {
    randomIndex = Random().nextInt(widget.books.length);
    randomBook = widget.books[randomIndex];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 189, 175, 253),
        title: Text(widget.genre),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    randomBook.imgUrl,
                    height: 250,
                  ),
                ),
              ],
            ),
            Text(randomBook.title),
            Text(randomBook.description),
            Container(
              height: 100,
            ),
            Container(
              width: 100,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 128, 92, 151),
                ),
                onPressed: () {
                  play();
                },
                child: Text('Shuffle'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
