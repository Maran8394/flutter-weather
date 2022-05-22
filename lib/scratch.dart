import 'dart:io';

void main() {
  performTaks();
}

void performTaks() async {
  task1();
  String taskResult = await task2();
  task3(taskResult);
}

void task1() {
  String result = "Task 1 data";
  print("Task1 completed");
}

Future<String> task2() async {
  String? result;
  Duration dur = const Duration(seconds: 5);
  await Future.delayed(dur, () {
    result = "Task 2 data";
    print("Task2 completed");
  });
  return result!;
}

void task3(String? taskResult) {
  print(taskResult);
  print("Task3 completed $taskResult");
}
