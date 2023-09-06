import 'package:flutter/material.dart';
import '../pages/main page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //used to send login data to the next page
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(40, 40, 40, 40),
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              child: Column(children: [
                Text(
                  "Login",
                  style: TextStyle(fontSize: 40),
                ),
                //Email
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                        labelText: "E-mail",
                        hintText: "Write your email",
                        prefixIcon: Icon(Icons.email),
                        suffixIcon: Icon(Icons.alternate_email),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(45))),
                  ),
                ),
                //Password
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: password,
                    obscureText:_obscureText,
                    decoration: InputDecoration(
                        hintText: "Enter a strong password",
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState((){_obscureText =!_obscureText;});
                          },
                          child: Icon(_obscureText?Icons.visibility : Icons.visibility_off),
                        ),
                        labelText: "Password",
                        prefixIcon: Icon(Icons.key),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(45))),
                  ),
                ),
                //Login button
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: MaterialButton(
                    minWidth: 120,
                    height: 60,
                    onPressed: () {
                      print("Email : ${email.text}");
                      print("password : ${password.text}");
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) {
                        return Skype();
                      }));
                    },
                    color: Colors.yellowAccent,
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
              ]),
            ),
          )),
    );
  }
}
