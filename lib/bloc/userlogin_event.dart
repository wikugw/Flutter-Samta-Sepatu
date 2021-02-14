part of 'userlogin_bloc.dart';

@immutable
abstract class UserloginEvent{
  const UserloginEvent();
}

class LoginUser extends UserloginEvent {
  final String email, password;

  LoginUser(this.email, this.password);
}

