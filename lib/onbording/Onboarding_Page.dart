import 'package:evently/app_theme.dart';
import 'package:evently/onbording/onBording_data.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key, required this.onbordingData});
  final OnbordingData onbordingData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(child: Image.asset(onbordingData.imagePath)),
          SizedBox(height: 24),
          Text(
            textAlign: TextAlign.left,
            onbordingData.title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: AppTheme.primary,
            ),
          ),
          SizedBox(height: 24),
          Text(
            textAlign: TextAlign.left,
            onbordingData.description,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppTheme.black,
            ),
          ),
        ],
      ),
    );
  }
}
