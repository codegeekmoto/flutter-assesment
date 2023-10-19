import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class Menu extends StatelessWidget {
  const Menu({super.key, required this.text, required this.onPressed});

  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(
          const Size(250, 60),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(color: AppColors.primary),
      ),
    );
  }
}
