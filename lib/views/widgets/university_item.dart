import 'package:flutter/material.dart';
import 'package:flutter_app/constants/colors.dart';

class UniversityItem extends StatelessWidget {
  const UniversityItem({
    super.key,
    required this.name,
    required this.province,
    required this.domain,
  });

  final String name;
  final String province;
  final String domain;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: [
                    const TextSpan(
                      text: 'Name: ',
                      style: TextStyle(
                        color: AppColors.primary,
                      ),
                    ),
                    TextSpan(
                      text: name,
                    )
                  ])),
              RichText(
                  text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: [
                    const TextSpan(
                      text: 'Province: ',
                      style: TextStyle(
                        color: AppColors.primary,
                      ),
                    ),
                    TextSpan(
                      text: province,
                    )
                  ])),
              RichText(
                  text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: [
                    const TextSpan(
                      text: 'Domain: ',
                      style: TextStyle(
                        color: AppColors.primary,
                      ),
                    ),
                    TextSpan(
                      text: domain,
                    )
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}
