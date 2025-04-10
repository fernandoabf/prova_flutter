import 'package:flutter/material.dart';
import 'package:prova_flutter/models/book.dart';
import 'package:prova_flutter/widgets/book_item.dart';

class BookList extends StatelessWidget {
  final List<Book> books;
  final Function(Book) onShowDetails;

  const BookList({super.key, required this.books, required this.onShowDetails});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 8,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: books.length,
          itemBuilder: (context, index) {
            return BookItem(book: books[index], onShowDetails: onShowDetails);
          },
        ),
      ),
    );
  }
}
