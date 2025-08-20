import 'package:ecommerce_app/modules/favorite/presentation/screens/favorite_screen.dart';
import 'package:ecommerce_app/modules/home/presentation/screens/home_screen.dart';
import 'package:ecommerce_app/modules/profile/presentation/screens/profile_screen.dart';
import 'package:ecommerce_app/modules/store/presentation/screens/store_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(NavBarState(index: 0));

  List screens = [
    HomeScreen(),
    StoreScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];
  void changeIndex(int index) {
    emit(NavBarState(index: index));
  }
}
