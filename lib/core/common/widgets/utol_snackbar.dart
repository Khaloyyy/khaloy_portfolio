import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';

class UtolSnackbar {
  // This constructor is private to prevent instantiation.
  UtolSnackbar._();

  // Static method to show the snackbar
  static void showUtolSnackbar(
    BuildContext context, {
    String? message,
    Color color = Colors.blue, // Default color
  }) {
    AnimatedSnackBar(
      duration: const Duration(milliseconds: 1200),
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: color,
          ),
          margin: const EdgeInsets.only(top: 24),
          child: Text(
            message.toString(),
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Colors.white,
                ),
          ),
        );
      },
    ).show(context);
  }
}
