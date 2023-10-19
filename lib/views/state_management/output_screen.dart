import 'package:flutter/material.dart';
import 'package:flutter_app/views/blocs/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OutputScreen extends StatefulWidget {
  const OutputScreen({super.key});

  @override
  State<OutputScreen> createState() => _OutputScreenState();
}

class _OutputScreenState extends State<OutputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Output',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, int>(builder: (context, state) {
          return Text(
            state.toString(),
            style: const TextStyle(fontSize: 90, fontWeight: FontWeight.w600),
          );
        }),
      ),
    );
  }
}
