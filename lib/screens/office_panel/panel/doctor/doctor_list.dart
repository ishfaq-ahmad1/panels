import 'package:flutter/material.dart';

class DoctorsListScreen extends StatefulWidget {
  @override
  _DoctorsListScreenState createState() => _DoctorsListScreenState();
}

class _DoctorsListScreenState extends State<DoctorsListScreen> {
  final List<String> categories = [
    'Cardiologist', 'Dermatologist', 'Endocrinologist', 'Gastroenterologist',
    'Neurologist', 'Oncologist', 'Ophthalmologist', 'Orthopedic Surgeon',
    'Otolaryngologist', 'Pediatrician', 'Psychiatrist', 'Pulmonologist',
    'Rheumatologist', 'Urologist', 'General Surgeon'
  ];

  final List<Map<String, String>> doctors = [
    {
      'name': 'Dr. John Doe',
      'image': 'assets/images/doctor1.jpg',
    },
    {
      'name': 'Dr. Jane Smith',
      'image': 'assets/images/doctor2.jpg',
    },
    {
      'name': 'Dr. John Doe',
      'image': 'assets/images/doctor1.jpg',
    },
    {
      'name': 'Dr. John Doe',
      'image': 'assets/images/doctor1.jpg',
    },
    // Add more doctors here
  ];

  List<Map<String, String>> filteredDoctors = [];

  @override
  void initState() {
    super.initState();
    filteredDoctors = doctors;
  }

  void filterDoctors(String query) {
    final filtered = doctors.where((doctor) {
      final doctorName = doctor['name']!.toLowerCase();
      final input = query.toLowerCase();

      return doctorName.contains(input);
    }).toList();

    setState(() {
      filteredDoctors = filtered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Doctor's List",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Add your add doctor functionality here
            },
            child: const Text(
              'Add Doctor',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container with light blue background for the categories section
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Select your categories',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: categories.map((category) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4.0),
                            child: ElevatedButton(
                              onPressed: () {
                                // Handle category selection
                              },
                              child: Text(category),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              // Search Box
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextField(
                  onChanged: (query) => filterDoctors(query),
                  decoration: InputDecoration(
                    labelText: 'Search Doctors',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              
              // List of doctors
              Column(
                children: filteredDoctors.map((doctor) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(doctor['image']!),
                      ),
                      title: Text(doctor['name']!),
                      trailing: TextButton(
                        onPressed: () {
                          // Handle view profile
                        },
                        child: const Text('View Profile'),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
