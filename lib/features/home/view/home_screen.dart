import 'package:expense_mate/core/const/app_colors.dart';
import 'package:expense_mate/features/add_expense/view/add_expense_page.dart';
import 'package:expense_mate/features/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "ExpenseMate",
            style: TextStyle(
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Obx(
              () => Text(
                "Total Expenses: \$${controller.totalExpenses}",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: controller.expenseList.length,
                  itemBuilder: (context, index) {
                    var expense = controller.expenseList[index];
                    return ListTile(
                      title: Text(expense['name']),
                      trailing: Text("\$${expense['amount']}"),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(() => AddExpensePage());
              },
              child: Text("Add Expense"),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
