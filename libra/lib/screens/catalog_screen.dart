import 'package:flutter/material.dart';
import 'package:libra/models/book.dart';
import 'package:libra/screens/book_details_screen.dart';

class CatalogScreen extends StatelessWidget {
  final List<Book> books;

  CatalogScreen({required this.books});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Library Catalog'),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return ListTile(
            title: Text(book.title),
            subtitle: Text(book.author),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailsScreen(book: book),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
