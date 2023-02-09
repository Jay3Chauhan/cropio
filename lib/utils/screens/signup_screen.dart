import 'package:cropio/authtenticate/controllers/signup_contorller.dart';
import 'package:cropio/utils/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  GlobalKey<FormState> _key = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupContorller());
    final _formkey = GlobalKey<FormState>();
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Container(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [
                TextFormField(
                  controller: controller.firstname,
                  decoration: InputDecoration(
                      labelText: 'FIrst Name',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: controller.lastname,
                  decoration: InputDecoration(
                      labelText: 'Last Name',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: controller.email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: controller.phonnumber,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Number',
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: controller.birthdate,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                      labelText: 'BirthDate',
                      prefixIcon: Icon(Icons.date_range),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: controller.password,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Re-Password',
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(94, 23, 235, 0.867)),
                      ),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          SignupContorller.instance.registerUser(
                              controller.email.text.trim(),
                              controller.password.text.trim());
                        }
                      },
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: Text(
                          '              Login Your Account',
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
