import 'package:flower_shop_app/view/home/colors.dart';
import 'package:flower_shop_app/view/home/widgids/category_card.dart';
import 'package:flower_shop_app/view/home/widgids/product_section.dart';
import 'package:flutter/material.dart';

import 'widgids/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              //app bar code

              const customAppBar(),
              const SizedBox(
                height: 15,
              ),

              //search bar

              TextFormField(
                decoration: InputDecoration(
                    fillColor: klightGreyClr,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: 'Search here...',
                    prefixIcon: const Icon(
                      Icons.search,
                    )),
              ),
              const SizedBox(
                height: 15,
              ),

              //category card

              const CategoryCard(),
              // product view
              const SizedBox(
                height: 15,
              ),
              //product section
              const ProductSection(),
            ],
          ),
        ),
      ),
    );
  }
}
