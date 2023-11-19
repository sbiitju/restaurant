import 'package:flutter/material.dart';

class QrMenu extends StatelessWidget {
  const QrMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const SizedBox(
          height: 100,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.qr_code_2,
            ),
            SizedBox(width: 5,),
            Text(
              'QR-Menu',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(
          height: 20
        ),
        SizedBox(
          height: 500,
          width: 320,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
           child:  Column(
            children: [
              const SizedBox(height: 30,),
              const CircleAvatar(
                radius: 40,
                foregroundImage: AssetImage('lib/assests/profile.jpg'),
              ),
             const SizedBox(height:10),
              const Text("Welcome to Cafelytics",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.brown),),
          const SizedBox(height: 8,),
          const Text('Your kixxro shown you are order',style: TextStyle(color: Colors.grey),),
           const Text('apply for order',style: TextStyle(color: Colors.grey)),
           const SizedBox(height: 15,),
           Container(
            padding: const EdgeInsets.all(13),
            height: 180,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey[100],
              border: Border.all(
                color: Colors.grey.shade200,
                strokeAlign:BorderSide.strokeAlignCenter
              )
            ),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
             children: [ const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("Your Order No"),
                    SizedBox(height:5),
                    Text('52',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                  ],),
                  Icon(Icons.qr_code_scanner,color:Colors.brown ,)
              ],),
              const Divider(),
              const SizedBox(height: 5,),
              const Text('Your Name'),
              const SizedBox(height: 8,),
              Container(
                height: 50,
                width: 250,
                padding: const EdgeInsets.all(13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey.shade400
                  ),
                  
                ),
                child: const Text('Mathewe Mache'),
              ),
              
              
              ],
            ),
           ),
           const Spacer(),
           SizedBox(width:250,child: FloatingActionButton(child: Text('Continue To Exploer'),backgroundColor: Colors.brown,onPressed: (){},shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),))
          , const Spacer()
            ],
           ),
          ),
        ),
      ]),
    );
  }
}
