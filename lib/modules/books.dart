String path = "assets/images/";

class Books {
  final String bookImage;
  final String bookName;
  final List<String> bookReview;
  final String bookRating;
  Books(
      {required this.bookImage,
      required this.bookName,
      required this.bookReview,
      required this.bookRating});
  static List<Books> booksList = [
    Books(
        bookImage:
            "${path}Harry_Potter_and_the_Philosopher's_Stone_Book_Cover.jpg",
        bookName: "Harry Potter and the Philosopher's Stone",
        bookReview: ["great", "amazing"],
        bookRating: "4.9/5"),
    Books(
        bookImage: "${path}Harry_Potter_and_the_Chamber_of_Secrets.jpg",
        bookName: "Harry Potter and the Chamber of Secrets",
        bookReview: ["great", "amazing"],
        bookRating: "4.6/5"),
    Books(
        bookImage: "${path}harry.jpg",
        bookName: "Harry Potter and the Prisoner of Azkaban",
        bookReview: ["great", "amazing"],
        bookRating: "4.8/5"),
    Books(
        bookImage: "${path}Harry_Potter_and_the_Goblet_of_Fire_cover.png",
        bookName: "Harry Potter and the Goblet of Fire",
        bookReview: ["great", "amazing"],
        bookRating: "5/5"),
  ];
}
