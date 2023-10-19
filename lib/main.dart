import 'package:flutter/material.dart';
import 'package:flutter_app/constants/colors.dart';
import 'package:flutter_app/views/blocs/counter_bloc.dart';
import 'package:flutter_app/views/router/app_router.dart';
import 'package:flutter_app/views/router/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

// Create a MaterialColor from the primary color
MaterialColor primaryColor = MaterialColor(
  AppColors.primary.value,
  <int, Color>{
    50: AppColors.primary.withOpacity(0.1),
    100: AppColors.primary.withOpacity(0.2),
    200: AppColors.primary.withOpacity(0.3),
    300: AppColors.primary.withOpacity(0.4),
    400: AppColors.primary.withOpacity(0.5),
    500: AppColors.primary.withOpacity(0.6),
    600: AppColors.primary.withOpacity(0.7),
    700: AppColors.primary.withOpacity(0.8),
    800: AppColors.primary.withOpacity(0.9),
    900: AppColors.primary.withOpacity(1.0),
  },
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = CounterBloc();

    return MultiBlocProvider(
        providers: [
          BlocProvider<CounterBloc>.value(value: counterBloc),
        ],
        child: MaterialApp(
          title: 'Peddlr',
          theme: ThemeData(
            primarySwatch: primaryColor,
          ).copyWith(
            outlinedButtonTheme: OutlinedButtonThemeData(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.grey),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.homeScreen,
          onGenerateRoute: AppRouter.onGenerateRoute,
        ));
  }
}
