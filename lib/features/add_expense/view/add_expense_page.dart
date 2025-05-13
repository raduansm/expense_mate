import 'package:expense_mate/core/const/app_colors.dart';
import 'package:expense_mate/features/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddExpensePage extends StatelessWidget {
  final HomeController controller = Get.find<HomeController>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Add Expense",
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
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Expense Name"),
            ),
            TextField(
              controller: amountController,
              decoration: InputDecoration(labelText: "Amount"),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String name = nameController.text;
                double amount = double.tryParse(amountController.text) ?? 0.0;

                if (name.isNotEmpty && amount > 0) {
                  controller.addExpense(name, amount);
                  Get.back(); // Go back to HomePage after adding
                }
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
