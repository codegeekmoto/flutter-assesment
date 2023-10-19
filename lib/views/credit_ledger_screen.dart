import 'package:flutter/material.dart';
import 'package:flutter_app/constants/colors.dart';
import 'package:flutter_app/models/ledger_model.dart';
import 'package:flutter_app/views/widgets/ledger_item.dart';
import 'package:intl/intl.dart';

class CreditLedgerScreen extends StatefulWidget {
  const CreditLedgerScreen({super.key});

  @override
  State<CreditLedgerScreen> createState() => _CreditLedgerScreenState();
}

class _CreditLedgerScreenState extends State<CreditLedgerScreen> {
  DateTime? _selectedDueDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text('CREDIT LEDGER'),
        titleSpacing: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Icon(
              color: AppColors.primary,
              Icons.sort_by_alpha,
            ),
          ),
          const SizedBox(width: 7),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              color: AppColors.primary,
              Icons.search,
            ),
          ),
          const SizedBox(width: 7),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              color: AppColors.primary,
              Icons.mail_outline,
            ),
          ),
          const SizedBox(width: 7),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              color: AppColors.primary,
              Icons.settings,
            ),
          ),
          const SizedBox(width: 18)
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
                width: double.infinity,
                height: 105,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [AppColors.primary, AppColors.secondary],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      '\u20B186.00',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Total Balance',
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                  ],
                )),
            Container(
                width: double.infinity,
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Customer List',
                                style: TextStyle(fontSize: 12)),
                            Text('3 Entries',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14)),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(right: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('Total Payment',
                                    style: TextStyle(fontSize: 12)),
                                Text('\u20B10.00',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 14,
                                        color: Colors.green.shade700)),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('Total Credit',
                                    style: TextStyle(fontSize: 12)),
                                Text('\u20B186.00',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 14,
                                        color: Colors.red.shade700)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            const SizedBox(height: 18),
            Row(children: [
              Expanded(
                flex: 6,
                child: Row(
                  children: [
                    Expanded(
                        child: SizedBox(
                            height: 25,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.accentColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: const Text('ALL',
                                  style: TextStyle(
                                      fontSize: 10, letterSpacing: -1)),
                            ))),
                    const SizedBox(width: 10),
                    Expanded(
                        child: SizedBox(
                            height: 25,
                            child: OutlinedButton(
                                onPressed: () {},
                                child: Text(
                                  'UNPAID',
                                  style: TextStyle(
                                      fontSize: 10,
                                      letterSpacing: -1.2,
                                      color: Colors.grey.shade600),
                                )))),
                    const SizedBox(width: 10),
                    Expanded(
                        child: SizedBox(
                            height: 25,
                            child: OutlinedButton(
                                onPressed: () {},
                                child: Text('PAID',
                                    style: TextStyle(
                                        fontSize: 10,
                                        letterSpacing: -1,
                                        color: Colors.grey.shade600)))))
                  ],
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                flex: 4,
                child: GestureDetector(
                    onTap: () {
                      _selectDate(context);
                    },
                    child: Container(
                      height: 35,
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(18)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                                _selectedDueDate == null
                                    ? 'Due Date'
                                    : DateFormat('yyyy/MM/dd')
                                        .format(_selectedDueDate!),
                                style: const TextStyle(fontSize: 12)),
                            const Icon(Icons.calendar_today_outlined, size: 15)
                          ]),
                    )),
              )
            ]),
            const SizedBox(height: 15),
            Row(
              children: const [
                Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(left: 13),
                      child:
                          Text('Customer Name', style: TextStyle(fontSize: 10)),
                    )),
                Expanded(
                    flex: 4,
                    child: Padding(
                      padding: EdgeInsets.only(left: 13),
                      child:
                          Text('Customer Name', style: TextStyle(fontSize: 10)),
                    )),
                Expanded(
                    flex: 4,
                    child: Text('Balance', style: TextStyle(fontSize: 10))),
              ],
            ),
            const SizedBox(height: 5),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: creditLedgers.length,
              itemBuilder: (context, index) {
                return LedgerItem(
                    enableReminder: creditLedgers[index].enableReminder,
                    customerName: creditLedgers[index].name,
                    balance: creditLedgers[index].amount,
                    onPressedReminder: (bool enableReminder) {},
                    onNext: () {});
              },
            ),
            const SizedBox(height: 70),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 160,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.person,
                size: 18,
              ),
              Text('ADD CUSTOMER', style: TextStyle(fontSize: 10)),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDueDate) {
      setState(() {
        _selectedDueDate = picked;
      });
    }
  }
}
