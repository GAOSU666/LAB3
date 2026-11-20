import 'package:flutter/material.dart';
import 'block.dart';

void main() {
  runApp(const MyApp());
}

// Main application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Profile',
      home: const ProfilePage(),
    );
  }
}

// Profile page
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: false,
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),

              // Profile picture
              const CircleAvatar(
                radius: 85,
                backgroundImage: AssetImage(
                  'assets/images/gaosu.png',
                ),
              ),

              const SizedBox(height: 15),

              // Student name
              const Text(
                'GAOSU',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              // Student status
              const Chip(
                backgroundColor: Colors.grey,
                avatar: Icon(
                  Icons.school,
                  size: 16,
                  color: Colors.amber,
                ),
                label: Text(
                  'Student',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black87,
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 6,
                  vertical: 2,
                ),
              ),

              const SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 左侧手写黄色模块，不引用Block，高度更高
                    Container(
                      width: 90,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/Sanjay.png",
                            width: 50,
                            height: 90,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 8),
                          Text(
                            "I'm going to grab your breakfast",
                            style: TextStyle(fontSize: 13),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "HAHHAHAHAHHAHAHA",
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 10),
                    Block(
                      title: "TASK1",
                      imagePath: "assets/images/kokHao.png",
                    ),
                    SizedBox(width: 10),
                    Block(
                      title: "TASK2",
                      imagePath: "assets/images/kokHao.png",
                    ),
                    SizedBox(width: 10),
                    Block(
                      title: "TASK3",
                      imagePath: "assets/images/kokHao.png",
                    ),
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
