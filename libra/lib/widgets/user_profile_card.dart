import 'package:flutter/material.dart';
import 'package:libra/models/user.dart';

class UserProfileCard extends StatelessWidget {
  final User user;

  UserProfileCard({required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(user.username),
        subtitle: Text(user.email),
      ),
    );
  }
}
