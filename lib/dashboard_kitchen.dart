import 'package:flutter/material.dart';

class DashBoardKitchen extends StatefulWidget {
  const DashBoardKitchen({super.key});

  @override
  State<DashBoardKitchen> createState() => _DashBoardKitchenState();
}

class _DashBoardKitchenState extends State<DashBoardKitchen> {
  bool as = true;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
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
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
          child: Column(children: [
            Container(
              padding: const EdgeInsets.all(13),
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blue[100],
                  border: Border.all(color: Colors.blue.shade300, width: 4)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Order #A-1',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Icon(Icons.timer),
                        Text('20Min', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                     Divider(
                      endIndent:  deviceWidth*.2,
                      thickness: 2,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: as,
                          onChanged: (bool? value) {},
                          fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.selected)) {
                                // Color when the checkbox is checked
                                return Colors.green;
                              }
                              // Default color
                              return Colors.white;
                            },
                          ),
                        ),
                         SizedBox(
                            width:  120,
                            child: Text('Item Name 1',
                                style: TextStyle(fontSize: 18))),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text('xAmount', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: as,
                          onChanged: (bool? value) {},
                          fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.selected)) {
                                // Color when the checkbox is checked
                                return Colors.green;
                              }
                              // Default color
                              return Colors.white;
                            },
                          ),
                        ),
                         SizedBox(
                            width:  120,
                            child:
                                Text('Item 2', style: TextStyle(fontSize: 18))),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text('x2', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                    const Spacer(),
                    SizedBox(
                        width: double.infinity,
                        child: FloatingActionButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          backgroundColor: Colors.teal,
                          child: const Text(
                            'Start',
                            style: TextStyle(fontSize: 19),
                          ),
                        ))
                  ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(13),
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.teal[100],
                  border: Border.all(color: Colors.teal.shade300, width: 4)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Order #A-1',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Icon(Icons.timer),
                        Text('20Min', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                     Divider(
                      endIndent:  deviceWidth*.2,
                      thickness: 2,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: as,
                          onChanged: (bool? value) {},
                          fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.selected)) {
                                // Color when the checkbox is checked
                                return Colors.green;
                              }
                              // Default color
                              return Colors.white;
                            },
                          ),
                        ),
                        const SizedBox(
                            width: 120,
                            child: Text(
                              'Item Name 1',
                              style: TextStyle(fontSize: 18),
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text('xAmount', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (bool? value) {},
                          fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.selected)) {
                                // Color when the checkbox is checked
                                return Colors.green;
                              }
                              // Default color
                              return Colors.white;
                            },
                          ),
                        ),
                        const SizedBox(
                            width: 120,
                            child:
                                Text('Item 2', style: TextStyle(fontSize: 18))),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text('x2', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                    const Spacer(),
                    SizedBox(
                        width: double.infinity,
                        child: FloatingActionButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          backgroundColor: Colors.teal,
                          child: const Text(
                            'Start',
                            style: TextStyle(fontSize: 19),
                          ),
                        ))
                  ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(13),
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.red[100],
                  border: Border.all(color: Colors.red.shade300, width: 4)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Order #A-1',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Icon(Icons.timer),
                        Text('20Min', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                     Divider(
                      endIndent:  deviceWidth*.2,
                      thickness: 2,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: as,
                          onChanged: (bool? value) {},
                          fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.selected)) {
                                // Color when the checkbox is checked
                                return Colors.green;
                              }
                              // Default color
                              return Colors.white;
                            },
                          ),
                        ),
                        const SizedBox(
                            width: 120,
                            child: Text(
                              'Item Name 1',
                              style: TextStyle(fontSize: 18),
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text('xAmount', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (bool? value) {},
                          fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.selected)) {
                                // Color when the checkbox is checked
                                return Colors.green;
                              }
                              // Default color
                              return Colors.white;
                            },
                          ),
                        ),
                        const SizedBox(
                            width: 120,
                            child:
                                Text('Item 2', style: TextStyle(fontSize: 18))),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text('x2', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                    const Spacer(),
                    SizedBox(
                        width: double.infinity,
                        child: FloatingActionButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          backgroundColor: Colors.teal,
                          child: const Text(
                            'Start',
                            style: TextStyle(fontSize: 19),
                          ),
                        ))
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}
