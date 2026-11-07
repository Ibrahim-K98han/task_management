import 'package:flutter/material.dart';
import 'package:task_management/core/app_colors.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
            Container(
              width: 20.0,
              height: 20.0,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(4.0),
                boxShadow: [
                  BoxShadow(color: AppColors.primary.withValues(alpha: 0.32)),
                ],
              ),
              child: Icon(Icons.check, color: AppColors.white, size: 16.0),
            ),
            SizedBox(width: 8.0),
            Text(
              'Taskly',
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        );
  }
}