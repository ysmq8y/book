import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../modules/books.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Browse",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: const Color.fromARGB(222, 0, 0, 0),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
                color: const Color.fromARGB(222, 0, 0, 0),
                child: SizedBox(
                  width: 200,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: InkWell(
                      onTap: () {
                        GoRouter.of(context)
                            .go('/book_details', extra: Books.booksList);
                      },
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            Books.booksList[index].bookName,
                            style: const TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                          Container(
                            padding: const EdgeInsets.all(5),
                            child: Image.asset(
                              Books.booksList[index].bookImage,
                              height: 110,
                              width: 100,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ));
          },
          itemCount: Books.booksList.length,
        ));
  }
}
