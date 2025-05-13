import 'package:get/get.dart';

class ExpenseController extends GetxController {
  var expenses = <Expense>[].obs;

  void addExpense(Expense expense) {
    expenses.add(expense);
  }
}

class Expense {
  String name;
  double amount;
  DateTime date;

  Expense({required this.name, required this.amount, required this.date});
}
