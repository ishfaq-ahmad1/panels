import 'package:flutter/material.dart';

class FAQScreen extends StatelessWidget {
  final List<Map<String, String>> faqs = [
    {
      "question": "What is your return policy?",
      "answer": "We offer a 30-day return policy. You can return any unused items within 30 days for a full refund."
    },
    {
      "question": "How do I track my order?",
      "answer": "You can track your order through the link provided in the confirmation email or by logging into your account."
    },
    {
      "question": "What payment methods do you accept?",
      "answer": "We accept credit/debit cards, PayPal, and bank transfers."
    },
    {
      "question": "How do I contact customer support?",
      "answer": "You can reach our customer support team via email at support@example.com or by phone at 123-456-7890."
    },
    // Add more FAQs here...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQs'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: faqs.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ExpansionTile(
                title: Text(
                  faqs[index]['question']!,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(faqs[index]['answer']!),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
