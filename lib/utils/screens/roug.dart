import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(right: 25, left: 25),
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1,
                )),
                TextField(
                    decoration: InputDecoration(
                        hintText: 'First Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)))),
                SizedBox(
                  height: 15,
                ),
                TextField(
                    decoration: InputDecoration(
                        hintText: 'Last Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)))),
                SizedBox(
                  height: 15,
                ),
                TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)))),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        hintText: 'Number',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)))),
                SizedBox(
                  height: 15,
                ),
                TextField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                        hintText: 'Your BirthDate',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)))),
                SizedBox(
                  height: 15,
                ),
                TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)))),
                SizedBox(
                  height: 15,
                ),
                TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Re-Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)))),
                SizedBox(height: 0),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(94, 23, 235, 0.867)),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Login'.toUpperCase(),
                      )),
                ),
                Row(
                  children: [
                    Text(
                      "Do you Have Account ?",
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          '            Login Your Account',
                          textAlign: TextAlign.right,
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
