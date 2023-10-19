import 'package:flutter/material.dart';
import 'package:flutter_app/views/router/routes.dart';
import 'package:flutter_app/views/widgets/menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Peddlr Assesment',
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
                text: 'I. UI Layout',
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.uiLayout);
                }),
            const SizedBox(height: 20),
            Menu(
                text: 'II. API Integration',
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.apiIntergration);
                }),
            const SizedBox(height: 20),
            Menu(
                text: 'III. Data Manipulation',
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.dataManipulation);
                }),
            const SizedBox(height: 20),
            Menu(
                text: 'IV. State Management',
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.stateManagement);
                }),
          ],
        ),
      ),
    );
  }
}
