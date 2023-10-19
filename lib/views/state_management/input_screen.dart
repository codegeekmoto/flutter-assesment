import 'package:flutter/material.dart';
import 'package:flutter_app/constants/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/counter_bloc.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Input',
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
            Container(
              width: 200,
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.primary,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: BlocBuilder<CounterBloc, int>(builder: (context, state) {
                return Text(
                  state.toString(),
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                );
              }),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    counterBloc.add(CounterEvent.add);
                  },
                  iconSize: 50,
                  color: AppColors.secondary,
                  icon: const Icon(Icons.add),
                ),
                IconButton(
                  onPressed: () {
                    counterBloc.add(CounterEvent.subtract);
                  },
                  iconSize: 50,
                  color: AppColors.secondary,
                  icon: const Icon(Icons.remove),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
