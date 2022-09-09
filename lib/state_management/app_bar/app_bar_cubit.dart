import 'package:flutter_bloc/flutter_bloc.dart';

enum AppBarState { general, search }

class AppBarCubit extends Cubit<AppBarState> {
  AppBarCubit() : super(AppBarState.general);

  switchToSearch() {
    emit(AppBarState.search);
  }

  switchToDefault() {
    emit(AppBarState.general);
  }

  @override
  void onChange(Change<AppBarState> change) {
    super.onChange(change);
  }
}
