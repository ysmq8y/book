String path = "assets/images/";

class Books {
  final String bookImage;
  final String bookName;

  Books({
    required this.bookImage,
    required this.bookName,
  });
  static List<Books> booksList = [
    Books(bookImage: "${path}", bookName: ""),
    Books(bookImage: "${path}", bookName: ""),
    Books(bookImage: "${path}", bookName: ""),
    Books(bookImage: "${path}", bookName: ""),
  ];
}
