import 'package:bloc/bloc.dart';
import 'package:mvvm_architecture/model/uninitialized_user.dart';
import 'package:mvvm_architecture/model/user.dart';

class UserBloc extends Bloc<int, User> {
  UserBloc(User initialState) : super(UninitializedUser());

  @override
  Stream<User> mapEventToState(int event) async* {
    try {
      User user = await User.getUserFromApi(event);
      yield user;
    } catch (_) {}
  }
}
