import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'userlogin_event.dart';
part 'userlogin_state.dart';

class UserloginBloc extends Bloc<UserloginEvent, UserloginState> {
  UserloginBloc() : super(UserloginInitial());

  @override
  Stream<UserloginState> mapEventToState(
    UserloginEvent event,
  ) async* {
    if(event is LoginUser){
      try{
        // Set User login state to UserLoading
        yield UserLoading();

        // Call API here
        
        // If API response set user login state
        yield UserLoaded("success");
      }catch(error){
        // If catch error
        yield UserError(error);
      }
    }
  }
}
