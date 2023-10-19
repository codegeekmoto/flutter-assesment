import 'package:flutter/material.dart';
import 'package:flutter_app/views/api_integration_screen.dart';
import 'package:flutter_app/views/credit_ledger_screen.dart';
import 'package:flutter_app/views/data_manipulation_screen.dart';
import 'package:flutter_app/views/home_screen.dart';
import 'package:flutter_app/views/router/routes.dart';
import 'package:flutter_app/views/state_management/input_screen.dart';
import 'package:flutter_app/views/state_management/main_screen.dart';
import 'package:flutter_app/views/state_management/output_screen.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.uiLayout:
        return MaterialPageRoute(
            builder: (context) => const CreditLedgerScreen());
      case Routes.apiIntergration:
        return MaterialPageRoute(
            builder: (context) => const ApiIntegrationScreen());
      case Routes.dataManipulation:
        return MaterialPageRoute(
            builder: (context) => const DataManipulationScreen());
      case Routes.stateManagement:
        return MaterialPageRoute(builder: (context) => const MainScreen());
      case Routes.stateManagementInput:
        return MaterialPageRoute(builder: (context) => const InputScreen());
      case Routes.stateManagementOutput:
        return MaterialPageRoute(builder: (context) => const OutputScreen());
      default:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
    }
  }
}
