import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Center( // Dùng Center để căn giữa cả chiều ngang và dọc
          child: Column(
            mainAxisSize: MainAxisSize.min, // Thu nhỏ Column theo nội dung
            mainAxisAlignment: MainAxisAlignment.center, // Căn giữa theo chiều dọc
            crossAxisAlignment: CrossAxisAlignment.center, // Căn giữa theo chiều ngang
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/my_face.jpg'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Đinh Phi Nô',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Full Stacks',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('0396296990'),
                ),
              ),
              const Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ListTile(
                  leading: Icon(Icons.mail),
                  title: Text('nodp.22ite@vku.udn.vn'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
