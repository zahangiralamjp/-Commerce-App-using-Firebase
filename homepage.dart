import 'package:flutter/material.dart';
import 'package:flutter_ecom_firebase/catagories_item.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: const Column(
          children: [CategoriesItem()],
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
