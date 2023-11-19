import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 250,
          height: 400,
          child: Column(
            children: [
             const CircleAvatar(radius: 50,backgroundImage: AssetImage('lib/assests/profile.jpg'), ),
              Container(
                height: 50,
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade400)),
                child:  TextField(
                  
                  controller: _textEditingController,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      border: InputBorder.none,
                      hintText: 'Email'),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade400)),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      border: InputBorder.none,
                      hintText: 'Password'),
                ),
              ),
              const SizedBox(height: 22,),
              SizedBox(
                width: 250,
                height: 50,
                child: FloatingActionButton(
                  onPressed: () {

                    String userinput=_textEditingController.text;
                    if(userinput=='chef@gmail.com'){
                      context.goNamed('Dashboard_Kitchen');
                    }
                    else {
                       context.goNamed('Dashboard_Counter');
                    }
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: Colors.teal,
                  child: const Text(
                    'Sign In',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
