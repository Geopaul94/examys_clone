import 'package:examys_clone/presentation/widgets/custom_text.dart';
import 'package:examys_clone/utilities/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  //final Icon iocn;
  final String heading;
  final String subheading;
  final String body;
  const CustomCard(
      {super.key,
      //    required this.iocn,
      required this.heading,
      required this.subheading,
      required this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border(
// top: BorderSide(color: Colors.grey, width: 1),
// bottom: BorderSide(color: Colors.grey, width: 1),
          left: BorderSide(color: primaryColor, width: 3),
          //  right: BorderSide(color: Colors.grey, width: 1),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2,
            spreadRadius: 1,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(height: 50,width: 50,color: blue,),
                w20,
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: heading,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    h10,
                    CustomText(
                      text: subheading,
                      fontSize: 12,
                      fontWeight: FontWeight.w200,
                    )
                  ],
                )
              ],
            ),h10,
            CustomText(
              text: body,color: grey,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),h15,
            CustomText(
              text: 'Click here to know ',
              color: primaryColor,
            )
          ],
        ),
      ),
    );
  }
}
