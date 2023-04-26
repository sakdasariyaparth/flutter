import 'package:flutter/material.dart';

import '../utils/routes.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = " ";
  bool changebtn = false;
  final _formkey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebtn = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRouts.homeroutes);
      setState(() {
        changebtn = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              "assets/images/hey.png",
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Welcome $name",
              style: const TextStyle(
                  fontSize: 40,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 50),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username Can Not Be Empty.";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password Can Not Be Empty.";
                      } else if (value.length < 6) {
                        return "Password Length Requrired Six Letters.";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Material(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(changebtn ? 100 : 6),
                    child: InkWell(
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        width: changebtn ? 70 : 120,
                        height: 40,
                        alignment: Alignment.center,
                        // decoration: BoxDecoration(
                        //     color: Colors.purple,
                        //     // shape: changebtn ? BoxShape.circle : BoxShape.rectangle,
                        //     ),
                        child: changebtn
                            ? const Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : const Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRouts.homeroutes);
                  //   },
                  //   child: Text("Log In"),
                  //   style: TextButton.styleFrom(
                  //       minimumSize: const Size(120, 45),
                  //       backgroundColor: Colors.purple),
                  // )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
