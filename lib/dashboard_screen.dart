import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GlamPro Dashboard'),
        backgroundColor: Colors.pink,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildServiceProviderCard('Salon A', '4.5'),
          _buildServiceProviderCard('Makeup Artist B', '4.8'),
          _buildServiceProviderCard('Hair Stylist C', '4.3'),
        ],
      ),
    );
  }

  Widget _buildServiceProviderCard(String name, String rating) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        leading: Icon(Icons.person, size: 40, color: Colors.pink),
        title: Text(name),
        subtitle: Text('Rating: $rating'),
        trailing: ElevatedButton(
          onPressed: () {},
          child: Text('Book Now'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink,
          ),
        ),
      ),
    );
  }
}