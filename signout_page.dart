import 'package:flutter/material.dart';

class SignoutPage extends StatelessWidget {
  const SignoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Enter Your Full Name'),
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Enter Email'),
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Enter Phone No'),
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Enter Password'),
              obscureText: true,
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Confarm Password'),
              obscureText: true,
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  //get.pu
                },
                child: const Text('Account Create Here')),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Log in Here')),
          ],
        ),
      ),
    );
  }
}
