import 'package:flutter/material.dart';

class CarouselItemWidget extends StatelessWidget {
  final String title;
  final String description;
  final Icon icon;

  const CarouselItemWidget({
    required this.title,
    required this.description,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(63, 108, 108, 108),
            offset: Offset.fromDirection(4.7, -5),
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                icon,
                const SizedBox(width: 10),
                Text(title),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              description,
            ),
          ),
        ],
      ),
    );
  }
}
