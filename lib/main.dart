import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_architecture/bloc/user_bloc.dart';
import 'package:mvvm_architecture/model/uninitialized_user.dart';

import 'ui/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<UserBloc>(
          create: (context) => UserBloc(UninitializedUser()),
          child: HomePage()),
    );
  }
}
