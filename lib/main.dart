import 'package:flutter/material.dart';

void main() {
  runApp(const SmartClassroomApp());
}

class SmartClassroomApp extends StatelessWidget {
  const SmartClassroomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Classroom',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smart Classroom'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Classroom 101',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          const Row(
            children: [
              Icon(
                Icons.circle,
                color: Colors.green,
                size: 12,
              ),
              SizedBox(width: 6),
              Text('System Online'),
            ],
          ),
          const SizedBox(height: 20),

          Card(
            child: ListTile(
              leading: const Icon(
                Icons.people,
                size: 40,
                color: Colors.blue,
              ),
              title: const Text('Occupancy'),
              subtitle: const Text('3 people detected'),
              trailing: const Text(
                'OCCUPIED',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(
                Icons.lightbulb,
                size: 40,
                color: Colors.amber,
              ),
              title: const Text('Classroom Lights'),
              subtitle: const Text('Automatic lighting enabled'),
              trailing: Switch(
                value: true,
                onChanged: (value) {},
              ),
            ),
          ),

          Row(
            children: [
              Expanded(
                child: _infoCard(
                  Icons.bolt,
                  'Power',
                  '0.85 kW',
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _infoCard(
                  Icons.energy_savings_leaf,
                  'Energy Today',
                  '5.2 kWh',
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          Card(
            child: ListTile(
              leading: const Icon(
                Icons.videocam,
                size: 40,
                color: Colors.red,
              ),
              title: const Text('Security Camera'),
              subtitle: const Text('Camera ready'),
              trailing: FilledButton(
                onPressed: () {},
                child: const Text('VIEW'),
              ),
            ),
          ),

          const SizedBox(height: 20),

          FilledButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.settings),
            label: const Text('System Settings'),
          ),
        ],
      ),
    );
  }

  static Widget _infoCard(
    IconData icon,
    String title,
    String value,
  ) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 30),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 4),
            Text(
              value,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
