import 'package:book/modules/books.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetails extends StatefulWidget {
  final Books book;

  BookDetails({super.key, required this.book});
  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  final reviewEditor = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                GoRouter.of(context).go('/brows');
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              ),
            ),
            Center(
              child: Text(
                "details",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(222, 0, 0, 0),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  height: 250,
                  child: Image.asset(
                    widget.book.bookImage,
                    width: 150,
                    height: 200,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Book name:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.book.bookName,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.book.bookRating,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 211, 190, 0),
                  )
                ],
              ),
            ),
            Container(
              width: 320,
              height: 200,
              child: TextField(
                  controller: reviewEditor,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.rate_review_outlined,
                          color: Color.fromARGB(222, 0, 0, 0)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(width: 20.0),
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "please write your review")),
            ),
            Scrollbar(
              controller: _scrollController,
              child: ListView.builder(
                  controller: _scrollController,
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return Card(
                        color: const Color.fromARGB(222, 0, 0, 0),
                        child: SizedBox(
                            width: 200,
                            height: 100,
                            child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(children: [
                                  Expanded(
                                      child: Text(
                                    widget.book.bookReview[index],
                                    style: const TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ]))));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
