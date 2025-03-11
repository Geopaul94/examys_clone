import 'package:examys_clone/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomImageContainer extends StatelessWidget {
  final String heading;
  final String body;
  final String image;

  const CustomImageContainer(
      {super.key,
      required this.heading,
      required this.body,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 250,
      child: Column(
        children: [
      SvgPicture.asset(
            image, // e.g., 'assets/images/1.svg'
            height: 200, // Adjust size as needed
            width: 200,
            fit: BoxFit.contain, // Optional: adjust how the SVG scales
          ),
          CustomText(text: heading, fontSize: 16),
          CustomText(text: body, color: Colors.grey, fontSize: 14),
        ],
      ),
    );
  }
}
