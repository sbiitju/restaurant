import 'package:flutter/material.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
      child: SizedBox(
        height: 600,
        width: 300,
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
         
          children: [
            const Icon(Icons.apple,size: 130,color: Colors.grey,),
            const SizedBox(height: 50,),
            const Text('Welcome to QR-Menu!',style:TextStyle(fontSize: 24,fontWeight: FontWeight.bold) ,),
            const SizedBox(height: 40,),
            Container(
              height: 50,
              width: 250,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(),
              color: Colors.grey.withOpacity(0.2),
              ),
              child:  const TextField(
                
                decoration: InputDecoration(
                  border:InputBorder.none,
                  
                  contentPadding:EdgeInsets.all(10),
                  hintText: 'Residential Code',
                
              
                ),
              ),
            ),
            SizedBox(height: 30,),
         SizedBox(
          width: 250,
          height: 50,
           child: FloatingActionButton(onPressed: (){},
           shape:  RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
            
           ),
           backgroundColor: Colors.teal,
           child: Text('Enter',style: TextStyle(fontSize: 18),),
           
           
           ),
         )

          ],
        ),
      ),
      ),
    );
  }
}