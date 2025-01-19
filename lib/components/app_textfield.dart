import 'package:flutter/material.dart';
import 'package:learnfromyt/styles/app_colors.dart';

class AppTextfield extends StatelessWidget {
  final String hint;
  const AppTextfield({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hint,
          labelText: hint,
          labelStyle: const TextStyle(
            color: Colors.white
          ),
          border: const UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
          focusedBorder: const UnderlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(color: Colors.transparent)
          ),
          filled: true,
          fillColor: AppColors.fieldColor,

      ),
      style: const TextStyle(
          color: Colors.black
      ),
    );
  }
}
