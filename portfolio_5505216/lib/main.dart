import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wilkommen zu meinem Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    AboutMePage(),
    ResumePage(),
    SkillsPage(),
    ProjectsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wilkommen zu meinem Portfolio'),
        backgroundColor: Colors.blueAccent,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Colors.lightBlue,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.black87,
        selectedLabelStyle:
            TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontSize: 12),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Über mich',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: 'Lebenslauf',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.code),
            label: 'Fähigkeiten',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Projekte',
          ),
        ],
      ),
    );
  }
}

class AboutMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/profile.jpg'),
                backgroundColor: Colors.black87,
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                'Jamel Motuo',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 8),
            Center(
              child: Text(
                'Flutter Developer',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.grey[800],
                ),
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Ich bin Jamel Motuo, ein leidenschaftlicher und erfahrener Flutter-Entwickler mit über 5 Jahren Erfahrung (Lüge) in der Branche. Ich spezialisiere mich auf die Entwicklung robuster, skalierbarer und schöner mobiler Anwendungen. Meine Expertise umfasst ein tiefes Verständnis von Flutter, Dart und einer Vielzahl von Backend-Technologien.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Hier kommt der Lebenslauf von Jamel Motuo hin.',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[800],
          ),
        ),
      ),
    );
  }
}

class SkillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SkillWidget(skill: 'Flutter & Dart'),
            SkillWidget(skill: 'Firebase'),
            SkillWidget(skill: 'REST APIs'),
            SkillWidget(skill: 'Git & GitHub'),
            SkillWidget(skill: 'CI/CD'),
            SkillWidget(skill: 'Agile Methodologies'),
          ],
        ),
      ),
    );
  }
}

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Hier kommen die Projekte von Jamel Motuo hin.',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[800],
          ),
        ),
      ),
    );
  }
}

class SkillWidget extends StatelessWidget {
  final String skill;

  const SkillWidget({required this.skill});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: <Widget>[
          Icon(Icons.check_circle, color: Colors.blueAccent, size: 20),
          SizedBox(width: 12),
          Text(
            skill,
            style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 12, 152, 207),
            ),
          ),
        ],
      ),
    );
  }
}
