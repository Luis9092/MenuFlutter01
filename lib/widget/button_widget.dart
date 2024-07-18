import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          shadowColor: const Color.fromARGB(255, 84, 83, 83),
          backgroundColor: const Color.fromARGB(255, 250, 72, 131),
          padding: const EdgeInsets.symmetric(horizontal:32.0, vertical: 12.0),
          
        ),
        onPressed: onClicked,
        child: buildContent(),
      );

  Widget buildContent() => Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 24,
            color: Colors.white,
          ),
          const SizedBox(
            width: 16,
          ),
          Text(
            text,
            style: const TextStyle(
                fontSize: 22, color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ],
      );
}
