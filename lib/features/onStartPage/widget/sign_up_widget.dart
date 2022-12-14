import 'package:flutter/material.dart';
import 'package:netflix_clone/features/bottom/view/bottom_navigation.dart';
import 'package:netflix_clone/features/home/view/home_screen.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.all(25),
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 216, 14, 0),
          borderRadius: BorderRadius.circular(5)),
      child: TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => BottomBar(),
            ),
          );
        },
        child: const Text(
          "Get Started",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
