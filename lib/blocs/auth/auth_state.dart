part of 'auth_bloc.dart';

enum AuthStatus { unknown, authenicated, unauthenicated }

class AuthState extends Equatable {
  final auth.User user;
  final AuthStatus status;

  const AuthState({this.user, this.status = AuthStatus.unknown});

  factory AuthState.unknown() => const AuthState();

  factory AuthState.authenicated({@required auth.User user}) {
    return AuthState(user: user, status: AuthStatus.authenicated);
  }

  factory AuthState.unauthenicated() =>
      const AuthState(status: AuthStatus.unauthenicated);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [user, status];
}
