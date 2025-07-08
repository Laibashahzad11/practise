import 'package:flutter/material.dart';

import '../models/user.dart';
class UserCard extends StatelessWidget {
  final User user;
  final VoidCallback onTap;

  const UserCard({Key? key, required this.user, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(user.name),
        subtitle: Text(user.email),
        leading: Icon(Icons.person),
        trailing: Icon(Icons.arrow_forward),
        onTap: onTap,
      ),
    );
  }
}
