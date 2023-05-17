import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tinder_app/src/features/authentication/data/data_user_account_local.dart';
import 'package:tinder_app/src/features/authentication/domainn/user_account.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<RegisterAuthEvent>((event, emit) async {
      emit(AuthLoading());
      DataUserAccountLocal.setDataUserAccountToStorage(event.userAccount);
      UserAccountRegister.setUSerAccountRegister(event.isRegister);
      await Future.delayed(Duration(seconds: 2));
      emit(
        AuthSuccess(
          userAccount: event.userAccount,
          isRegister: event.isRegister,
        ),
      );
    });
  }
}
