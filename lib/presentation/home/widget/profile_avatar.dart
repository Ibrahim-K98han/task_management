import 'package:flutter/material.dart';
import 'package:task_management/core/app_colors.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 16.0),
      width: 32.0,
      height: 32.0,
      decoration: BoxDecoration(
        color: AppColors.primarySoft,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        'S',
        textAlign: TextAlign.center,
        style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold),
      ),
    );
  }
}
