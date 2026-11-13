class Task {
  final String title;
  final String description;
  final String dueDate;
  final String priority;
  final String createdDate;
  bool isCompleted = false;

  Task({
    required this.title,
    required this.description,
    required this.dueDate,
    required this.priority,
    required this.createdDate,
    this.isCompleted = false,
  });
}

List<Task> taskList = [
  Task(
    title: 'Finish onboarding mockups',
    description: 'Complete the design for the onboarding screens.',
    dueDate: '2023-07-15',
    priority: 'High',
    createdDate: '2023-07-10',
    isCompleted: true,
  ),
  Task(
    title: 'Write unit tests',
    description: 'Write unit tests for the new features.',
    dueDate: '2023-07-20',
    priority: 'Medium',
    createdDate: '2023-07-12',
    isCompleted: false,
  ),
  Task(
    title: 'Update documentation',
    description: 'Update the project documentation with recent changes.',
    dueDate: '2023-07-18',
    priority: 'Low',
    createdDate: '2023-07-11',
    isCompleted: false,
  ),
  Task(
    title: 'Refactor codebase',
    description: 'Refactor the codebase to improve maintainability.',
    dueDate: '2023-07-22',
    priority: 'High',
    createdDate: '2023-07-13',
    isCompleted: true,
  ),
  Task(
    title: 'Refactor codebase',
    description: 'Refactor the codebase to improve maintainability.',
    dueDate: '2023-07-22',
    priority: 'High',
    createdDate: '2023-07-13',
    isCompleted: true,
  ),
];
