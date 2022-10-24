import 'package:flutter/material.dart';

class CronometroBtn extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? click;

  const CronometroBtn(
      {super.key, required this.text, required this.icon, this.click});

  @override
  Widget build(BuildContext context) {
   
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20)),
      onPressed: click,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              icon,
              size: 30,
            ),
          ),
          Text(text)
        ],
      ),
    );
  }
}
