import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onDismiss,
  });
  final void Function(Expense expense) onDismiss;
  final List<Expense> expenses;

  @override
  Widget build(context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        background: Container(
          color: Theme.of(context).colorScheme.errorContainer,
          
        ),
        onDismissed: (direction) {
          onDismiss(expenses[index]);
        },
        key: ValueKey(expenses[index]),
        child: ExpenseItem(expense: expenses[index]),
      ),
    );
  }
}
