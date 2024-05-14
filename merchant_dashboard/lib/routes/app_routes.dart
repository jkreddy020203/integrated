import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:merchant_dashboard/nav_screens/account_settings.dart';
import 'package:merchant_dashboard/nav_screens/add_customer.dart';
import 'package:merchant_dashboard/nav_screens/manage_customer_screen.dart';
import 'package:merchant_dashboard/nav_screens/my_team.dart';
// import 'package:merchant_dashboard/screens/search_screen.dart';
import 'package:merchant_dashboard/splash_screen.dart';
import 'package:merchant_dashboard/dashboard.dart';
import 'package:merchant_dashboard/credentials/login_screen.dart';
import 'package:merchant_dashboard/credentials/otp_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

class AppRoutes {
  static final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashScreen(),
        routes: [
          GoRoute(
            path: 'login',
            builder: (context, state) => LoginScreen(),
          ),
          GoRoute(
            path: 'otp',
            builder: (context, state) => OtpScreen(),
          ),
          StatefulShellRoute.indexedStack(
            builder: (context, state, navigationShell) =>
                DashBoard(child: navigationShell),
            branches: <StatefulShellBranch>[
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: "manage_customer",
                    builder: (context, state) => const ManageCustomerScreen(),
                  ),
                ],
              ),
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: "add_customer",
                    builder: (context, state) => const AddCustomer(),
                  ),
                ],
              ),
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: "my_team",
                    builder: (context, state) => const MyTeam(),
                  ),
                ],
              ),
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: "account_settings",
                    builder: (context, state) => const AccountSettings(),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    ],
  );
}
