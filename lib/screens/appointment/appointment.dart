import 'package:flutter/material.dart';

class AppointmentDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Appointment Details',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildAppointmentCard(
                date: '12th Aug 2024',
                time: '10:00 AM',
                doctor: 'Dr. John Doe',
                hospital: 'City Hospital',
                location: '123 Main St, Springfield',
                fee: '\$100',
                profession: 'Cardiologist',
              ),
              const SizedBox(height: 16),
              _buildAppointmentCard(
                date: '15th Aug 2024',
                time: '2:00 PM',
                doctor: 'Dr. Jane Smith',
                hospital: 'Green Valley Hospital',
                location: '456 Elm St, Springfield',
                fee: '\$150',
                profession: 'Dermatologist',
              ),
              const SizedBox(height: 16),
              _buildAppointmentCard(
                date: '20th Aug 2024',
                time: '11:00 AM',
                doctor: 'Dr. Michael Brown',
                hospital: 'Sunrise Clinic',
                location: '789 Oak St, Springfield',
                fee: '\$120',
                profession: 'Pediatrician',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppointmentCard({
    required String date,
    required String time,
    required String doctor,
    required String hospital,
    required String location,
    required String fee,
    required String profession,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 8,
      shadowColor: Colors.blueAccent,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [Colors.white, Color(0xFFE3F2FD)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildInfoRow(
                icon: Icons.calendar_today,
                label: 'Date:',
                value: date,
              ),
              const SizedBox(height: 16),
              _buildInfoRow(
                icon: Icons.access_time,
                label: 'Time:',
                value: time,
              ),
              const SizedBox(height: 16),
              _buildInfoRow(
                icon: Icons.person,
                label: 'Doctor:',
                value: doctor,
              ),
              const SizedBox(height: 16),
              _buildInfoRow(
                icon: Icons.local_hospital,
                label: 'Hospital:',
                value: hospital,
              ),
              const SizedBox(height: 16),
              _buildInfoRow(
                icon: Icons.location_on,
                label: 'Location:',
                value: location,
              ),
              const SizedBox(height: 16),
              _buildInfoRow(
                icon: Icons.money,
                label: 'Doctor Fee:',
                value: fee,
              ),
              const SizedBox(height: 16),
              _buildInfoRow(
                icon: Icons.work,
                label: 'Profession:',
                value: profession,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 28,
        ),
        const SizedBox(width: 12),
        Text(
          '$label ',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}
