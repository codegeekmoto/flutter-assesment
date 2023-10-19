class Ledger {
  bool enableReminder;
  String name;
  double amount;

  Ledger({
    required this.enableReminder,
    required this.name,
    required this.amount,
  });
}

List<Ledger> creditLedgers = [
  Ledger(enableReminder: true, name: 'Juan Dela Cruz', amount: 10),
  Ledger(enableReminder: true, name: 'Mel Francis', amount: 50),
  Ledger(enableReminder: false, name: 'Pedro Penduko', amount: 0),
  Ledger(enableReminder: false, name: 'John Doe', amount: 26),
];
