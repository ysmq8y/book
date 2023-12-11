import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetails extends StatefulWidget {
  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  height: 250,
                  child: Image.asset(
                    "assets/images/Harry_Potter_and_the_Philosopher's_Stone_Book_Cover.jpg",
                    width: 150,
                    height: 200,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("rating: 4.9"), Icon(Icons.star)],
              ),
            )
          ],
        ),
      ),
    );
  }
}
