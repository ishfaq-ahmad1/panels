import 'package:flutter/material.dart';
import 'package:patient_panel/screens/office_panel/panel/office_panel.dart';
import 'patient_panel.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(30)

                ),
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context,
                     MaterialPageRoute(builder: (context)=>PatientPanel()));

                  },
                   child: const Text("Patient Panel",style: TextStyle(color: Colors.white,fontSize: 20),)
                   ),
               ),

               const SizedBox(height: 15,),

               Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(30)

                ),
                child: TextButton(
                  onPressed: (){
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context)=>OfficePanelScreen()));
                  },
                   child: const Text("Office Panel",style: TextStyle(color: Colors.white,fontSize: 20),)
                   ),
               ),

               
            ],
          ),
        ) 
      ),
    );
  }
}