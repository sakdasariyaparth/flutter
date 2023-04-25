import 'package:flutter/material.dart';
import 'package:you_tube2/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
          const Text(
            "Welcome",
            style: TextStyle(
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
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRouts.homeroutes);
                  },
                  child: Text("Log In"),
                  style: TextButton.styleFrom(
                      minimumSize: const Size(120, 45),
                      backgroundColor: Colors.purple),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
