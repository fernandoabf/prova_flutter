import 'package:flutter/material.dart';
import 'package:prova_flutter/models/book.dart';
import 'package:prova_flutter/widgets/book_details_dialog.dart';
import 'package:prova_flutter/widgets/book_list.dart';
import 'package:prova_flutter/widgets/custom_app_bar.dart';

// Widget principal
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  List<Book> books = [
    Book.getExample(),
    Book.getExample2(),
    Book.getExample3(),
    Book.getExample4(),
    Book.getExample5(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blueGrey[900]!, Colors.blueGrey[700]!],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const CustomAppBar(),
              Expanded(
                child: BookList(
                  books: books,
                  onShowDetails:
                      (book) => BookDetailsDialog.show(context, book),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
