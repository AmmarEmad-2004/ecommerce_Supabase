import 'package:ecommerce_app/core/routing/app_routers.dart';
import 'package:ecommerce_app/modules/auth/presentation/screens/forget_password_screen.dart';
import 'package:ecommerce_app/modules/auth/presentation/screens/login_screen.dart';
import 'package:ecommerce_app/modules/auth/presentation/screens/sign_up_screen.dart';
import 'package:ecommerce_app/modules/home/presentation/screens/product_details_screen.dart';
import 'package:ecommerce_app/modules/layout/screens/main_layout.dart';
import 'package:ecommerce_app/modules/profile/presentation/screens/my_orders_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: AppRouters.logIn,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRouters.signUp,
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        path: AppRouters.forgetPassword,
        builder: (context, state) => const ForgetPasswordScreen(),
      ),
      GoRoute(
        path: AppRouters.mainLayout,
        builder: (context, state) => const MainLayout(),
      ),
      GoRoute(
        path: AppRouters.myOrders,
        builder: (context, state) => const MyOrdersScreen(),
      ),
      GoRoute(
        path: AppRouters.productDetails,
        builder: (context, state) => const ProductDetailsScreen(),
      ),
    ],
  );
}
