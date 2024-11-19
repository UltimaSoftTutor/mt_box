import 'package:flutter/material.dart';
import 'package:mt_box/constants/extensions.dart';

class DotIndicators extends StatelessWidget {
  const DotIndicators({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth * 0.20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: index == 1 ? 12 : 9,
            height: index == 1 ? 12 : 9,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xFF3AB2E8)),
          ),
          Container(
            width: index == 2 ? 12 : 9,
            height: index == 2 ? 12 : 9,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xFF3AB2E8)),
          ),
          Container(
            width: index == 3 ? 12 : 9,
            height: index == 3 ? 12 : 9,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xFF3AB2E8)),
          ),
          Container(
            width: index == 4 ? 12 : 9,
            height: index == 4 ? 12 : 9,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xFF3AB2E8)),
          ),
        ],
      ),
    );
  }
}
