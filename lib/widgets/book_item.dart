import 'package:flutter/material.dart';
import 'package:prova_flutter/models/book.dart';

class BookItem extends StatelessWidget {
  final Book book;
  final Function(Book) onShowDetails;

  const BookItem({super.key, required this.book, required this.onShowDetails});

  @override
  Widget build(BuildContext context) {
    bool isLong = book.isLongBook();
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color:
            isLong
                ? Colors.blueGrey[100]
                : Colors.blueGrey[50], // Tons claros do azul-acinzentado
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border.all(
          color:
              isLong
                  ? Colors.blueGrey[300]!
                  : Colors.blueGrey[200]!, // Bordas sutis na mesma paleta
          width: 1,
        ),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        title: Text(
          book.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.blueGrey[900], // Tom escuro para contraste
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(
            'Autor: ${book.author}\nPáginas: ${book.pages}',
            style: TextStyle(color: Colors.blueGrey[700]),
          ),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.info_outline),
          color:
              isLong
                  ? Colors.blueGrey[600]
                  : Colors.blueGrey[500], // Ícones na mesma paleta
          onPressed: () => onShowDetails(book),
        ),
      ),
    );
  }
}
