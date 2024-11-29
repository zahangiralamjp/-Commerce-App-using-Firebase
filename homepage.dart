import 'package:firebase_ecom/catagories_page.dart';
import 'package:firebase_ecom/products_section.dart';
import 'package:firebase_ecom/slider_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_bag)),
        ],
        title: const Text('HomePage'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CatagoriesPage(),
                SliderSection(),
                SizedBox(
                  height: 10,
                ),
                ProductsSection(),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
