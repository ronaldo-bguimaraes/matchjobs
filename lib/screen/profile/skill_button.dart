import 'package:flutter/material.dart';

class SkillButton extends StatelessWidget {
  final String text;

  const SkillButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        padding: const EdgeInsets.all(8),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.black54,
      ),
    );
  }
}
