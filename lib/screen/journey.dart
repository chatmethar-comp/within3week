import 'package:flutter/material.dart';

class Journey extends StatelessWidget {
  final String role;

  const Journey({Key? key, required this.role}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget roleSpecificWidget;

    switch (role) {
      case 'Student':
        roleSpecificWidget = StudentWidget();
        break;
      case 'Teacher':
        roleSpecificWidget = TeacherWidget();
        break;
      case 'Anonymous':
        roleSpecificWidget = AnonymousWidget();
        break;
      default:
        roleSpecificWidget =
            DefaultWidget(); // Fallback in case of an unknown role
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('$role Journey'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Replace this with sign-out logic and navigation to the home page.
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
      ),
      body: roleSpecificWidget,
    );
  }
}

class StudentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Welcome, Student!', style: TextStyle(fontSize: 24));
  }
}

class TeacherWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Welcome asdfjlaskjdf, Teacher!', style: TextStyle(fontSize: 24));
  }
}

class AnonymousWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Welcome, Anonymous!', style: TextStyle(fontSize: 24));
  }
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Welcome to the Journey!', style: TextStyle(fontSize: 24));
  }
}
