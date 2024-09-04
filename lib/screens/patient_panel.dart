import 'package:flutter/material.dart';
import 'package:patient_panel/screens/payment_method/choose_method.dart';
import 'package:patient_panel/screens/faqs/faqs_screen.dart';
import 'package:patient_panel/screens/appointment/appointment.dart';
import 'package:patient_panel/screens/report/report.dart';
import 'package:patient_panel/screens/saved/saved.dart';

class PatientPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Patient Panel',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        color: Colors.teal.withOpacity(.3),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Profile Section
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/images/doc.jpg'),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: IconButton(
                            icon: Icon(Icons.camera_alt, color: Colors.blue),
                            onPressed: () {
                              // Implement the logic to change the profile picture
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 16),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mashaal', // Replace with the actual user's name
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'user@example.com', // Replace with the actual user's email
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '+1234567890', // Replace with the actual user's phone number
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Information Section
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildCard(
                        context,
                        icon: Icons.bookmark,
                        title: 'My Saved',
                        subtitle: 'Tap to see your saved items',
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SavedItemsScreen(),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      _buildCard(
                        context,
                        icon: Icons.person_2,
                        title: 'Appointments',
                        subtitle: 'Tap to see your Appointments',
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppointmentDetailsScreen(),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      _buildCard(
                        context,
                        icon: Icons.report_gmailerrorred_outlined,
                        title: 'Reports',
                        subtitle: 'Tap to see your medical Reports',
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReportScreen(),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      _buildCard(
                        context,
                        icon: Icons.question_answer,
                        title: 'FAQs',
                        subtitle: 'Tap to troubleshoot your problem',
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FAQScreen(),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      _buildCard(
                        context,
                        icon: Icons.payment,
                        title: 'Payment method',
                        subtitle: 'Tap to select your Payment Method',
                        onTap: () => showModalBottomSheet(
                          context: context,
                          builder: (context) => ChooseMethod(),
                        ),
                      ),
                      const SizedBox(height: 15),
                      _buildCard(
                        context,
                        icon: Icons.logout,
                        title: 'Log Out',
                        subtitle: 'Click here if you want to logout',
                        color: Colors.red,
                        textColor: Colors.white,
                        onTap: () {
                          // Implement the logout functionality
                        },
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required Function() onTap,
    Color color = const Color.fromARGB(255, 191, 223, 249),
    Color textColor = Colors.black,
  }) {
    return Card(
      color: color,
      elevation: 4.0,
      child: ListTile(
        leading: Icon(icon, color: textColor),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(color: textColor),
        ),
        trailing: Icon(Icons.arrow_forward, color: textColor),
        onTap: onTap,
      ),
    );
  }
}
