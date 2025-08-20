

import 'package:flutter_bloc/flutter_bloc.dart';

part 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(NavBarState(index: 0));

  void changeIndex(int index) {
    emit(NavBarState(index: index));
  }
}
