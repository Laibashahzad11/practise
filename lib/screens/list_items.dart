import 'package:flutter/material.dart';
import '../models/user.dart';
import '../widgets/user_card.dart';
import 'user_form.dart';
import 'list_view.dart';

class ListItemScreen extends StatelessWidget {
  final List<User> users = [
    User(name: "Laiba Shahzad", email: "laiba@gmail.com"),
    User(name: "Arslan Khan", email: "arslan@gmail.com"),
    User(name: "Ayesha", email: "ayesha@gmail.com"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Users List")),

      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return UserCard(
            user: users[index],
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => ProductListView(),
                  ),
              );
            },
          );
        },
      ),
    );
  }
}
