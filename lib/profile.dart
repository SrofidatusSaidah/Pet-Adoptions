import 'package:flutter/material.dart';
import 'package:prakmobile_6/view_ui/login.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key});

  @override
  Widget build(BuildContext context) {
    // Manually input user information
    String name = 'Siti Rofidatus Saidah';
    String email = 'ovi@gmail.com';
    String phoneNumber = '+6285336520371';

    return Scaffold(
      backgroundColor: Color(0xFFEDE6DB),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 100,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Profile Page',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
              icon: Icon(
                Icons.logout,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start, // Changed to start
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30, // Added padding to move content higher
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: ClipOval(
              child: Image.asset(
                "img/profile.png",
                width: 100, // Adjust the width and height as needed
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20),
          // User Information
          Text(
            name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.email, color: Colors.black),
              SizedBox(width: 5),
              Text(
                email,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.phone, color: Colors.black),
              SizedBox(width: 5),
              Text(
                phoneNumber,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
