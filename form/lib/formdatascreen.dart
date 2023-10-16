import 'package:flutter/material.dart';

class FormDataScreen extends StatelessWidget {
  final String name;
  final String email;
  final String gender;
  final DateTime dateOfBirth;

  FormDataScreen({
    required this.name,
    required this.email,
    required this.gender,
    required this.dateOfBirth,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Submitted Data'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: $name'),
            Text('Email: $email'),
            Text('Gender: $gender'),
            Text('Date of Birth: ${dateOfBirth.toLocal()}'.split(' ')[3]),
          ],
        ),
      ),
    );
  }
}
