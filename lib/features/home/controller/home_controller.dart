import 'package:get/get.dart';

class HomeController extends GetxController {
  var totalExpenses = 0.0.obs;
  var expenseList = <Map<String, dynamic>>[].obs;

  void addExpense(String name, double amount) {
    expenseList.add({"name": name, "amount": amount});
    totalExpenses.value += amount;
  }
}
