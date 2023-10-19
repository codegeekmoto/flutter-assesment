import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class LedgerItem extends StatefulWidget {
  const LedgerItem({
    super.key,
    this.enableReminder = false,
    required this.customerName,
    required this.balance,
    required this.onPressedReminder,
    required this.onNext,
  });

  final bool enableReminder;
  final String customerName;
  final double balance;
  final void Function(bool) onPressedReminder;
  final void Function() onNext;

  @override
  State<LedgerItem> createState() => _LedgerItem();
}

class _LedgerItem extends State<LedgerItem> {
  late bool _enableReminder;

  @override
  void initState() {
    super.initState();
    setState(() {
      _enableReminder = widget.enableReminder;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Expanded(
                  flex: 3,
                  child: SizedBox(
                      height: 25,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _enableReminder = !_enableReminder;
                              widget.onPressedReminder(_enableReminder);
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: _enableReminder
                                ? AppColors.primary
                                : Colors.grey.shade400,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('Remind', style: TextStyle(fontSize: 10)),
                              Icon(
                                Icons.circle_notifications,
                                size: 15,
                              )
                            ],
                          )))),
              const SizedBox(width: 10),
              Expanded(
                  flex: 4,
                  child: Text(widget.customerName,
                      style: const TextStyle(fontSize: 10))),
              Expanded(
                flex: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\u20B1${widget.balance.toStringAsFixed(2)}',
                        style: const TextStyle(fontSize: 10)),
                    GestureDetector(
                      onTap: widget.onNext,
                      child: const Icon(
                        Icons.keyboard_arrow_right,
                        size: 15,
                        color: AppColors.primary,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
