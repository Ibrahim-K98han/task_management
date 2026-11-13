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
  final List<Task> _tasks = taskList;
  String _selectedFilter = AppString.all;
  List<Task> get _visibleTask {
    if (_selectedFilter == AppString.pending) {
      return _tasks.where((task) => task.isCompleted == false).toList();
    } else if (_selectedFilter == AppString.completed) {
      return _tasks.where((task) => task.isCompleted == true).toList();
    } else {
      return _tasks;
    }
  }

  int get _completedCount =>
      _tasks.where((task) => task.isCompleted == true).length;

  int get _pendingCount =>
      _tasks.where((task) => task.isCompleted == false).length;

  void _onFilterTap(String filter) {
    setState(() {
      _selectedFilter = filter;
    });
  }

  void _onStatusTap(Task task) {
    setState(() {
      task.isCompleted = !task.isCompleted;
    });
  }

  void _goToAddTask() {}

  void _goToDetails() {}
  @override
  Widget build(BuildContext context) {
    final List<Task> visibleTasks = _visibleTask;
    return Scaffold(
      appBar: AppBar(title: AppLogo(), actions: [ProfileAvatar()]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primary,
        child: Icon(Icons.add, color: AppColors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Good Morning".toUpperCase()),
            Text(
              "Ibrahim Khan",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              spacing: 10,
              children: [
                Expanded(
                  child: StatCard(
                    icon: Icons.list_alt,
                    iconColor: AppColors.primary,
                    count: _tasks.length,
                    label: "Total",
                  ),
                ),
                Expanded(
                  child: StatCard(
                    icon: Icons.watch_later,
                    iconColor: AppColors.mediumPriority,
                    count: _pendingCount,
                    label: "Pending",
                  ),
                ),
                Expanded(
                  child: StatCard(
                    icon: Icons.check_circle,
                    iconColor: AppColors.lowPriority,
                    count: _completedCount,
                    label: "Completed",
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: FilterBtn(
                    label: AppString.all,
                    isSelected: _selectedFilter == AppString.all,
                    onPressed: () => _onFilterTap(AppString.all),
                  ),
                ),

                Expanded(
                  child: FilterBtn(
                    label: AppString.pending,
                    isSelected: _selectedFilter == AppString.pending,
                    onPressed: () => _onFilterTap(AppString.pending),
                  ),
                ),
                Expanded(
                  child: FilterBtn(
                    label: AppString.completed,
                    isSelected: _selectedFilter == AppString.completed,
                    onPressed: () => _onFilterTap(AppString.completed),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: visibleTasks.length,
                itemBuilder: (context, index) {
                  final task = visibleTasks[index];
                  return TaskCard(
                    task: task,
                    onTap: () => _goToDetails(),
                    onStatusTap: () => _onStatusTap(task),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
