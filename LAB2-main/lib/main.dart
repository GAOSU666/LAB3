import 'package:flutter/material.dart';
import 'block.dart';
import 'Screen/home.dart';

void main() {
  runApp(const Towa());
}

class Towa extends StatefulWidget {
  const Towa({super.key});

  @override
  State<Towa> createState() => _TowaState();
}

class _TowaState extends State<Towa> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme() {
    setState(() {
      if (_themeMode == ThemeMode.light) {
        _themeMode = ThemeMode.dark;
      } else {
        _themeMode = ThemeMode.light;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Profile',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      home: ProfilePage(
        toggleTheme: _toggleTheme,
        themeMode: _themeMode,
      ),
    );
  }
}

// ========== 你的Profile页面（首页） ==========
class ProfilePage extends StatelessWidget {
  final VoidCallback toggleTheme;
  final ThemeMode themeMode;

  const ProfilePage({
    super.key,
    required this.toggleTheme,
    required this.themeMode,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: false,
        actions: [
          // 明暗切换按钮（和老师一样）
          IconButton(
            icon: Icon(
              themeMode == ThemeMode.light ? Icons.light_mode : Icons.dark_mode,
            ),
            onPressed: toggleTheme,
          ),
          // 跳转到Home页面按钮
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => HomePage(
                    toggleTheme: toggleTheme,
                    themeMode: themeMode,
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              const CircleAvatar(
                radius: 85,
                backgroundImage: AssetImage('assets/images/gaosu.png'),
              ),
              const SizedBox(height: 15),
              Text(
                'GAOSU',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 12),
              Chip(
                avatar: const Icon(Icons.school, size: 16, color: Colors.amber),
                label: const Text('Student'),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 90,
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(color: Colors.yellowAccent),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/Sanjay.png",
                            width: 50,
                            height: 90,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "I'm going to grab your breakfast",
                            style: TextStyle(fontSize: 13, color: Colors.black),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "HAHHAHAHHAHAHA",
                            style: TextStyle(fontSize: 13, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Block(title: "TASK1", imagePath: "assets/images/kokHao.png"),
                    const SizedBox(width: 10),
                    Block(title: "TASK2", imagePath: "assets/images/kokHao.png"),
                    const SizedBox(width: 10),
                    Block(title: "TASK3", imagePath: "assets/images/kokHao.png"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
