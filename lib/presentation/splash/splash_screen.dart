import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task_management/core/app_colors.dart';
import 'package:task_management/core/app_string.dart';
import 'package:task_management/presentation/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;
  @override
  void initState() {
    super.initState();
    _timer = Timer(Duration(seconds: 3), _goToHome);
  }

  @override
  dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _goToHome() {
    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 85.0,
              height: 85.0,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(color: AppColors.primary.withValues(alpha: 0.32)),
                ],
              ),
              child: Icon(Icons.check, color: AppColors.white, size: 50.0),
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            AppString.appName,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            AppString.appTagline,
            style: TextStyle(fontSize: 16.0, color: AppColors.textSecondary),
          ),
        ],
      ),
    );
  }
}
