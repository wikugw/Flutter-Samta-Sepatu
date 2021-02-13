part of 'userlogin_bloc.dart';

@immutable
abstract class UserloginState{
  const UserloginState();

}

class UserloginInitial extends UserloginState {}

// State when call api ended
class UserLoaded extends UserloginState{
  final String status;

  UserLoaded(this.status);
}

// State when user fetch api
class UserLoading extends UserloginState{}

// State when login failed
class UserError extends UserloginState{
  final String message;

  UserError(this.message);
}
