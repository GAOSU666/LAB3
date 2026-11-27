import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final VoidCallback toggleTheme;
  final ThemeMode themeMode;

  const HomePage({
    super.key,
    required this.toggleTheme,
    required this.themeMode,
  });

  void doSomething() {
    print("Bla bla");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        // 左上角按钮：doSomething，打印文字（老师示例自带）
        leading: IconButton(
          onPressed: doSomething,
          icon: const Icon(Icons.menu),
        ),
        actions: [
          // 同样带主题切换按钮！
          IconButton(
            icon: Icon(
              themeMode == ThemeMode.light ? Icons.light_mode : Icons.dark_mode,
            ),
            onPressed: toggleTheme,
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Back to Profile"),
        ),
      ),
    );
  }
}
