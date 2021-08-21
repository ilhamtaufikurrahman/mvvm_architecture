import 'package:flutter/material.dart';
import 'package:mvvm_architecture/model/user.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            child: Image(
              image: NetworkImage(user.avatar!),
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          Text('${user.id.toString()}. ${user.firstName!} ${user.lastName!}')
        ],
      ),
    );
  }
}
