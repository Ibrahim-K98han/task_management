import 'package:flutter/material.dart';
import 'package:task_management/core/app_colors.dart';
import 'package:task_management/presentation/home/widget/app_logo.dart';
import 'package:task_management/presentation/home/widget/stat_card.dart';

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
      body: Column(
        children: [
          Text("Good Morning".toUpperCase()),
          Text("Ibrahim Khan"),
          Row(
            children: [
              Expanded(child: StatCard()),
              Expanded(child: StatCard()),
              Expanded(child: StatCard()),
            ],
          ),
        ],
      ),
    );
  }
}
