class Book {
  String title;
  String author;
  bool isBorrowed = false;

  Book(this.title, this.author);

  void borrowBook() {
    if (!isBorrowed) {
      isBorrowed = true;
      print("$title borrowed successfully");
    } else {
      print("$title is already borrowed ");
    }
  }

  void returnBook() {
    if (isBorrowed) {
      isBorrowed = false;
      print("$title returned successfully ");
    } else {
      print("$title wasn't borrowed ");
    }
  }
}
