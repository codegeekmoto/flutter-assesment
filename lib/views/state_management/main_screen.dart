import 'package:flutter/material.dart';

import '../router/routes.dart';
import '../widgets/menu.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Main',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Menu(
                text: 'Input',
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.stateManagementInput);
                }),
            const SizedBox(height: 20),
            Menu(
                text: 'Output',
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.stateManagementOutput);
                }),
          ],
        ),
      ),
    );
  }
}
