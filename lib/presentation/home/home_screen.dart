import 'package:flutter/material.dart';
import 'package:task_management/core/app_colors.dart';
import 'package:task_management/core/app_string.dart';
import 'package:task_management/core/task.dart';
import 'package:task_management/presentation/home/widget/app_logo.dart';
import 'package:task_management/presentation/home/widget/stat_card.dart';
import 'package:task_management/presentation/home/widget/task_card.dart';

import 'widget/filter_btn.dart';
import 'widget/profile_avatar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: AppLogo(), actions: [ProfileAvatar()]),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Good Morning".toUpperCase()),
            Text("Ibrahim Khan"),
            Row(
              spacing: 10,
              children: [
                Expanded(
                  child: StatCard(
                    icon: Icons.format_align_center,
                    iconColor: AppColors.primary,
                    count: 0,
                    label: "Total",
                  ),
                ),
                Expanded(
                  child: StatCard(
                    icon: Icons.format_align_center,
                    iconColor: AppColors.primary,
                    count: 0,
                    label: "Total",
                  ),
                ),
                Expanded(
                  child: StatCard(
                    icon: Icons.format_align_center,
                    iconColor: AppColors.primary,
                    count: 0,
                    label: "Total",
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: FilterBtn(
                    label: AppString.all,
                    isSelected: true,
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: FilterBtn(
                    label: AppString.completed,
                    isSelected: false,
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: FilterBtn(
                    label: AppString.pending,
                    isSelected: false,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            TaskCard(
              task: Task(
                title: 'Finish onboarding mockups',
                description: 'Complete the design for the onboarding screens.',
                dueDate: '2023-07-15',
                priority: 'High',
                createdDate: '2023-07-10',
              ),
              onTap: () {},
              onStatusTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
