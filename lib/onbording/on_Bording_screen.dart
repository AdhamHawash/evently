import 'package:evently/onbording/Onboarding_Page.dart';
import 'package:evently/app_theme.dart';
import 'package:evently/onbording/onBording_data.dart';
import 'package:flutter/material.dart';

class OnBordingScreen extends StatefulWidget {
  static const String routeName = '/onBording';

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  PageController pageController = PageController();
  int currentindex = 0;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/title.png',
              height: MediaQuery.sizeOf(context).height * 0.25,
            ),
          ),
          Expanded(
            child: PageView.builder(
              controller: PageController(),
              itemCount: OnbordingData.onBordingList.length,
              itemBuilder:
                  (context, index) => OnboardingPage(
                    onbordingData: OnbordingData.onBordingList[index],
                  ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(onPressed: () {}, child: Text('Back')),
              TextButton(onPressed: () {}, child: Text('Next')),
            ],
          ),
        ],
      ),
    );
  }
}
