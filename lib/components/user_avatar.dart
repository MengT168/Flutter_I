import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final double size ;
  const UserAvatar({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(23)),
        child: Image.asset('assets/temp/pf.jpg', width: size, height: size,));
  }
}
