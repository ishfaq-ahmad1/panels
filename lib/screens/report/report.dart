import 'package:flutter/material.dart';

class ReportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Reports',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildReportCard(
                context,
                title: 'Health Checkup Report',
                date: '08-09-2024',
                details:
                    'This report contains the results of your recent health checkup. Please review the details carefully and consult with your doctor if you have any questions or concerns.',
              ),
              const SizedBox(height: 20),
              _buildReportCard(
                context,
                title: 'Blood Test Report',
                date: '01-08-2024',
                details:
                    'This report provides detailed information on your recent blood test results. Please review and discuss with your healthcare provider if necessary.',
              ),
              const SizedBox(height: 20),
              _buildReportCard(
                context,
                title: 'X-Ray Report',
                date: '15-07-2024',
                details:
                    'This report includes the results of your X-ray examination. Please ensure to go over the findings with your doctor.',
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 199, 228, 251),
    );
  }

  Widget _buildReportCard(BuildContext context,
      {required String title, required String date, required String details}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Report Title: $title',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            'Date: $date',
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
          const SizedBox(height: 10),
          const Divider(thickness: 1),
          const SizedBox(height: 10),
          const Text(
            'Details:',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            details,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  // View Report PDF functionality
                },
                child: const Text(
                  'View',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              IconButton(
                onPressed: () {
                  // Download Report PDF functionality
                },
                icon: const Icon(
                  Icons.download,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
