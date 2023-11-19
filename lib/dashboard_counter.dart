import 'package:flutter/material.dart';

class DashboardCounter extends StatefulWidget {
  const DashboardCounter({super.key});

  @override
  State<DashboardCounter> createState() => _DashboardCounterState();
}

class _DashboardCounterState extends State<DashboardCounter> {
   int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double deviceWIdth = MediaQuery.of(context).size.width;
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index){
        setState(() {
          _selectedIndex=index;
        });

        } ,
        selectedItemColor: Colors.teal,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.coffee,),label: 'Dashboard'),
        BottomNavigationBarItem(icon: Icon(Icons.directions_railway_filled_outlined,),label: 'Pos'),
        BottomNavigationBarItem(icon: Icon(Icons.room_service,),label: 'Order'),
      ]),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                    backgroundImage: AssetImage('lib/assests/profile.jpg')),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'QR-Menu',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text(
                      'Mc.Abc',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
            Icon(
              Icons.menu_outlined,
              color: Colors.black,
              size: 40,
            )
          ],
        ),
        //  leading: const CircleAvatar(backgroundImage: AssetImage('lib/assests/profile.jpg')),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:16.0,right: 16,top: 10),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 150,
                    width: 250,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.grey.shade300,
                      width: 2,
                    )),
                    child:  const Column(
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                          Icon(Icons.room_service,size: 50,color: Colors.black54,),
                          Text('0',style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Colors.black54),)
                        ],),
                        Text('Current Order',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black54),)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    height: 150,
                    width: 250,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.grey.shade300,
                      width: 2,
                    )),
                    child: const Column(
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                          Icon(Icons.storage,size: 50,color: Colors.black54,),
                          Text('4',style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Colors.black54),)
                        ],),
                        Text('Total Order',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black54),)
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 150,
                    width: 250,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.grey.shade300,
                      width: 2,
                    )),
                    child: const Column(
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                          Icon(Icons.inventory_2_sharp,size: 50,color: Colors.black54,),
                          Text('4',style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Colors.black54),)
                        ],),
                        Text('Total Sales',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black54),)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    height: 150,
                    width: 250,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.grey.shade300,
                      width: 2,
                    )),
                    child:  const Column(
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                          Icon(Icons.person_2,size: 50,color: Colors.black54,),
                          Text('4',style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Colors.black54),)
                        ],),
                        Text('Total Customer',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black54),)
                      ],
                    ),
                  ),
                )
              ],
            ),

              const SizedBox(height: 20,),
            const Text('Current Orders',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
           const SizedBox(height: 20,),
            Container(
              width: 500,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: Colors.grey.shade300,
                  width: 2,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  style: BorderStyle.solid
                )
              ),
              child: const Column(
                children: [
                  SizedBox(height: 20,),
                  Icon(Icons.emoji_emotions_outlined,size: 50,color: Colors.black54,),
              SizedBox(height: 5,),
                Text('Cheers!',style: TextStyle(fontSize: 22,color: Colors.black54,),),
                Text('You have no order right now',style: TextStyle(fontSize: 22,color: Colors.black54,),),
                ],
              ),
            ),
            SizedBox(height: 20,),


          ]),
        ),
      ),
    );
  }
}
