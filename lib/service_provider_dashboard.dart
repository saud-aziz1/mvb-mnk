import 'package:flutter/material.dart';

class ServiceProviderDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Service Provider Dashboard'),
        backgroundColor: Colors.pink,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildRequestCard('Client A', '12:00 PM, 25th Sep'),
          _buildRequestCard('Client B', '03:00 PM, 25th Sep'),
        ],
      ),
    );
  }

  Widget _buildRequestCard(String clientName, String requestTime) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        title: Text(clientName),
        subtitle: Text('Request Time: $requestTime'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Accept'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
            SizedBox(width: 8),
            ElevatedButton(
              onPressed: () {},
              child: Text('Decline'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}