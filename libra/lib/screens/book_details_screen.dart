import 'package:flutter/material.dart';
import 'package:libra/models/book.dart';

class BookDetailsScreen extends StatelessWidget {
  final Book book;

  BookDetailsScreen({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Details'),
      ),
      body: Column(
        children: [
          Image.network(book.coverImageUrl),
          Text('Title: ${book.title}'),
          Text('Author: ${book.author}'),
          Text('Description: ${book.description}'),
        ],
      ),
    );
  }
}
