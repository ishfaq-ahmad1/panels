import 'package:flutter/material.dart';

class ChooseMethod extends StatelessWidget {
  const ChooseMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      padding: EdgeInsets.all(16.0),
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        
      ),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
         const  Text(
            'Select Payment Method',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20,),
          ListTile(
            leading: const ImageIcon(
                AssetImage('assets/images/Easypaisa.png'),
                  size: 80.0,
                  // Optional: apply a color
                ),
            title:const  Text('EasyPaisa', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            onTap: () {
         
            },
          ),

          const SizedBox(height: 15,),
          ListTile(
            leading: const ImageIcon(
                AssetImage('assets/images/Jazzcash.png'),
                  size: 80.0,
                  // Optional: apply a color
                ),
            title: const Text('JazzCash', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            onTap: () {
             

            },
          ),

            const SizedBox(height: 15,),
          ListTile(
            leading: const ImageIcon(
                AssetImage('assets/images/Jazzcash.png'),
                  size: 80.0,
                  // Optional: apply a color
                ),
            title: const Text('UPaisa', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            onTap: () {
             

            },
          ),
          
        ],
      ),
    ),
    );
  }
}