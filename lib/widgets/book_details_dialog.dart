import 'package:flutter/material.dart';
import 'package:prova_flutter/models/book.dart';

class BookDetailsDialog {
  static void show(BuildContext context, Book book) {
    showDialog(
      context: context,
      builder:
          (context) => Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                20,
              ), // Cantos mais arredondados
            ),
            elevation: 12, // Sombra mais pronunciada
            backgroundColor:
                Colors.transparent, // Fundo transparente para o gradiente
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.blueGrey[50]!, // Início claro
                    Colors.blueGrey[100]!, // Fim um pouco mais escuro
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Título com ícone
                  Row(
                    children: [
                      Icon(
                        Icons.book_rounded,
                        color: Colors.blueGrey[800],
                        size: 28,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          book.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.blueGrey[900],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Detalhes com ícones
                  _buildDetailRow(
                    icon: Icons.person_outline,
                    text: 'Autor: ${book.author}',
                    color: Colors.blueGrey[700] ?? Colors.blueGrey,
                  ),
                  const SizedBox(height: 16),
                  _buildDetailRow(
                    icon: Icons.pages_outlined,
                    text: 'Páginas: ${book.pages}',
                    color: Colors.blueGrey[700] ?? Colors.blueGrey,
                  ),
                  const SizedBox(height: 16),
                  _buildDetailRow(
                    icon:
                        book.isLongBook()
                            ? Icons.bookmark
                            : Icons.bookmark_border,
                    text:
                        'Tipo: ${book.isLongBook() ? 'Livro Longo' : 'Livro Normal'}',
                    color:
                        book.isLongBook()
                            ? (Colors.blueGrey[600] ?? Colors.blueGrey)
                            : (Colors.blueGrey[500] ?? Colors.blueGrey),
                  ),
                  const SizedBox(height: 24),
                  // Botão de fechar
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey[800],
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                        elevation: 4,
                      ),
                      onPressed: () => Navigator.pop(context),
                      child: const Text(
                        'Fechar',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }

  // Método auxiliar para criar linhas de detalhes com ícones
  static Widget _buildDetailRow({
    required IconData icon,
    required String text,
    required Color color,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: color, size: 24),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: 16,
              height: 1.4, // Melhor espaçamento entre linhas
            ),
          ),
        ),
      ],
    );
  }
}
