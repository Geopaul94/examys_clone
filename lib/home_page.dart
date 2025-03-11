import 'package:examys_clone/presentation/widgets/custom_image_container.dart';
import 'package:examys_clone/presentation/widgets/custom_text.dart';
import 'package:examys_clone/utilities/common_widgets/custom_button.dart';
import 'package:examys_clone/utilities/common_widgets/custom_card.dart';
import 'package:examys_clone/utilities/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return _buildDesktopLayout();
      }
          // Default case to handle other screen sizes

          ),
    );
  }

  // Widget _buildMobileLayout() {
  //   return Center(
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Text('Mobile View', style: TextStyle(fontSize: 20)),
  //         SizedBox(height: 10),
  //         ElevatedButton(onPressed: () {}, child: Text('Mobile Button')),
  //       ],
  //     ),
  //   );
  // }

  // Widget _buildTabletLayout() {
  //   return Center(
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Text('Tablet View', style: TextStyle(fontSize: 24)),
  //         SizedBox(width: 20),
  //         ElevatedButton(onPressed: () {}, child: Text('Tablet Button')),
  //       ],
  //     ),
  //   );
  // }

  Widget _buildDesktopLayout() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 160),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          h20,
          Center(child: CustomButton(text: 'Explore All Courses')),
          h50,
          CustomText(
            text: 'Courses Supported by',
            fontSize: 30,
            color: black,
            fontWeight: FontWeight.w800,
          ),
          h50,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomCard(
                heading: "Course Journey",
                subheading: 'Insights that deliver result.',
                body:
                    '''Every course has a 'course journey' section to accelerate your preparation and, ultimately, help you crack the exam.''',
              ),
              CustomCard(
                  heading: "Examys AI",
                  subheading: 'Analyzing trend that boosts your confidence.',
                  body:
                      '''Every course has a 'Trend analysis' section which is powered by examys ai to know the exam pattern.'''),
              CustomCard(
                  heading: "Course Design and Team",
                  subheading:
                      'Learning path that connects and team that inspires.',
                  body:
                      '''Every course has a 'course design & team' section to know about the team & faculties and their inspiring story.'''),
            ],
          ),
          h40,
          Center(
            child: CustomText(
              text: "Examys Mock Test Edge",
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          Center(
            child: CustomText(
              color: grey,
              text:
                  '''Practice Test Series for Govt. Exams seamlessly with India's Best mock Test Platform
          One Pass & Access to Unlimited Exams
          ''',
              fontSize: 25,
              fontWeight: FontWeight.w700,
              alignment: TextAlign.center,
            ),
          ),
          h10,
          Center(
            child: CustomButton(
              text: "Examys Test Pass pro+",
            ),
          ),
          h40,
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Container(
          //       height: 400,
          //       width: 250,
          //       child: Column(
          //         children: [
          //           SvgPicture.asset(
          //             'assets/images/1.svg',
          //             height: 200, // Adjust size as needed
          //             width: 200,
          //             fit:
          //                 BoxFit.contain, // Optional: adjust how the SVG scales
          //           ),
          //           CustomText(
          //               text: 'Personalised Recommendation', fontSize: 16),
          //           CustomText(
          //               text:
          //                   'It traces strong and waek areas of your Test Journey & recommonds for improvement.',
          //               color: Colors.grey,
          //               fontSize: 14),
          //         ],
          //       ),
          //     ),

          //   ],
          // )

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 400,
                width: 250,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black), // Add a border to debug visibility
                ),
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center contents
                  children: [
                    SvgPicture.asset(
                      'assets/images/1.svg',
                      height: 200,
                      width: 200,
                      fit: BoxFit.contain,
                      placeholderBuilder: (context) =>
                          CircularProgressIndicator(), // Show loading indicator
                    ),
                    CustomText(
                        text: 'Personalised Recommendation', fontSize: 16),
                    CustomText(
                      text:
                          'It traces strong and weak areas of your Test Journey & recommends for improvement.',
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ],
                ),
              ),



CustomImageContainer(
                  heading: 'Personalised Recommendation',
                  body:
                      'It traces strong and waek areas of your Test Journey & recommonds for improvement.',
                  image: 'https://www.examys.com/icons/pr.svg'),
              CustomImageContainer(
                  heading: 'Personalised Recommendation',
                  body:
                      'It traces strong and waek areas of your Test Journey & recommonds for improvement.',
                  image: 'https://www.examys.com/icons/pr.svg'),
              CustomImageContainer(
                  heading: 'Personalised Recommendation',
                  body:
                      'It traces strong and waek areas of your Test Journey & recommonds for improvement.',
                  image: 'assets/images/3.svg'),















            ],






            
          ),
        ]),
      ),
    );
  }
}
