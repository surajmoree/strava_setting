part of 'app_bloc.dart';

abstract class AppEvent extends Equatable {
  const AppEvent();

  @override
  List<Object> get props => [];
}

class AppLogoutRequested extends AppEvent {
  const AppLogoutRequested();
}

class _AppUserChanged extends AppEvent {
  final User user;
  const _AppUserChanged(this.user);
}
