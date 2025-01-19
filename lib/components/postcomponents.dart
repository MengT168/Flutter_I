import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/pf.jpg',
                width: 50,
                height: 50,
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                user,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset('assets/temp/JPA.jpg'),
          const Text(
            'One night in Japan so beautiful',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
