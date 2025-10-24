import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NotificationPage(),
    );
  }
}

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  Widget _buildNotification({
    required String imagePath,
    required String title,
    required String subtitle,
  }) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
        radius: 22,
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.more_vert),
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_horiz),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 4.0),
                child: Text('Today', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              Card(
                elevation: 0,
                margin: EdgeInsets.zero,
                child: Column(
                  children: [
                    _buildNotification(
                      imagePath: 'assets/profile/prof1.jpg',
                      title: 'Teresa Pagdato liked your post.',
                      subtitle: '16h',
                    ),
                    const Divider(height: 1),
                    _buildNotification(
                      imagePath: 'assets/profile/prof2.jpg',
                      title: 'Whitfield Posted a story.',
                      subtitle: '20h',
                    ),
                    const Divider(height: 1),
                    _buildNotification(
                      imagePath: 'assets/profile/prof3.jpg',
                      title: 'Teresa Pagdato commented: "Nice photo!"',
                      subtitle: '2h',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 4.0),
                child: Text('Earlier', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              Card(
                elevation: 0,
                margin: EdgeInsets.zero,
                child: Column(
                  children: [
                    _buildNotification(
                      imagePath: 'assets/profile/prof4.jpg',
                      title: 'Sir steven posted a reel.',
                      subtitle: '1d',
                    ),
                    const Divider(height: 1),
                    _buildNotification(
                      imagePath: 'assets/profile/prof5.jpg',
                      title: 'Lily Collins liked your photo.',
                      subtitle: '2d',
                    ),
                    const Divider(height: 1),
                    _buildNotification(
                      imagePath: 'assets/profile/prof6.jpg',
                      title: 'Michael Scott started following you.',
                      subtitle: '2d',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('See previous notifications'),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
