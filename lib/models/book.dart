class Book {
  final String title;
  final String author;
  final int pages;

  Book({required this.title, required this.author, required this.pages});

  bool isLongBook() {
    return pages > 300;
  }

  static Book getExample() {
    return Book(author: "J.K. Rowling", pages: 500, title: "Harry Potter");
  }

  static Book getExample2() {
    return Book(
      author: "George R.R. Martin",
      pages: 800,
      title: "Game of Thrones",
    );
  }

  static Book getExample3() {
    return Book(
      author: "J.R.R. Tolkien",
      pages: 1000,
      title: "O Senhor dos Anéis",
    );
  }

  static Book getExample4() {
    return Book(author: "Isaac Asimov", pages: 400, title: "Fundação");
  }

  static Book getExample5() {
    return Book(
      author: "Arthur C. Clarke",
      pages: 300,
      title: "2001: Uma Odisseia no Espaço",
    );
  }
}
