import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_architecture/bloc/user_bloc.dart';
import 'package:mvvm_architecture/model/uninitialized_user.dart';
import 'package:mvvm_architecture/model/user.dart';

import 'user_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserBloc bloc = BlocProvider.of<UserBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('MVVM Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  bloc.add(Random().nextInt(6 + 1));
                },
                child: Text('Cari User')),
            BlocBuilder<UserBloc, User>(
                builder: (context, user) => (user is UninitializedUser)
                    ? Container()
                    : UserCard(
                        user: user,
                      ))
          ],
        ),
      ),
    );
  }
}
