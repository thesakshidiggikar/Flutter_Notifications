import 'package:awesome_notification/flutter_notification.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).primaryColor,
              Colors.grey[200]!,
            ],
          ),
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.height,
          child: Column(
            children: const [
              TopBar(title: "Second screen"),
              Spacer(),
              Center(
                child: Text("Navigated from notifation"),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
