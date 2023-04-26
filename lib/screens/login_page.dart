import 'package:flutter/material.dart';

import '../utils/routes.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = " ";
  bool changebtn = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 50,
          ),
          Image.asset(
            "assets/images/login2.png",
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
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 45, horizontal: 50),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter Username", labelText: "Username"),
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
                ),
                const SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      changebtn = true;
                    });
                    await Future.delayed(const Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRouts.homeroutes);
                  },
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    width: changebtn ? 70 : 120,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        // shape: changebtn ? BoxShape.circle : BoxShape.rectangle,
                        borderRadius:
                            BorderRadius.circular(changebtn ? 100 : 6)),
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
                                fontSize: 22),
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
    );
  }
}
