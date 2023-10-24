import 'package:flutter/material.dart';
import 'package:libra/models/book.dart';

class BookTile extends StatelessWidget {
  final Book book;
  final Function() onTap;

  BookTile({required this.book, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(book.title),
      subtitle: Text(book.author),
      onTap: onTap,
    );
  }
}
