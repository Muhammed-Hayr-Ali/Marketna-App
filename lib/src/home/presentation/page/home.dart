import 'package:flutter/material.dart';
import 'package:marketna_app/src/home/presentation/widgets/carousel.dart';
import 'package:marketna_app/src/home/presentation/widgets/category_widget.dart';
import 'package:marketna_app/src/home/presentation/widgets/products_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselWidget(),
            const SizedBox(height: 20),
            Category(),
            const SizedBox(height: 20),
            ProductsList(),
          ],
        ),
      ),
    );
  }
}
