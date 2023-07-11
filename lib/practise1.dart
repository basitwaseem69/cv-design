import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:task_cv/snack.dart';
import 'package:task_cv/widget.dart';

class Practise1 extends StatefulWidget {
  const Practise1({super.key});

  @override
  State<Practise1> createState() => _Practise1State();
}

class _Practise1State extends State<Practise1> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "password",
                style: TextStyle(
                    color: Colors.black12,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: Size.width * .50,
                //wrap kiya Textfeild container mai...
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Email",













                
                style: TextStyle(
                    color: Colors.black12,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: Size.width * .50,
                //wrap kiya Textfeild container mai...
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              if (emailController.text.isEmpty) {
                snack(context, "Please Enter Email");
              } else if (!emailController.text.contains("@")) {
                snack(context, "Please Enter The Valid Mail");
              } else if (passwordController.text.isEmpty) {
                snack(context, "Please enter Password");
              } else if (passwordController.text.length < 7) {
                snack(context, "Please enter The minimun 7 character");
              } else {
                try {
                  FirebaseAuth.instance.signInWithEmailAndPassword(
                      email: emailController.text,
                      password: passwordController.text);
                  snack(context, "Successfully Created login");
                } catch (e) {
                  snack(context, e.toString());
                }
              }
            },
            child: Text(
              "login",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
