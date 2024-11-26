import 'package:flower_shop_app/data/category_data.dart';
import 'package:flower_shop_app/view/home/colors.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43,
      child: ListView.builder(
        itemCount: categoryData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Container(
            width: 125,
            decoration: BoxDecoration(
                color: categoryData[index].active ? kprimeryClr : klightGreyClr,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  categoryData[index].icon,
                  color: categoryData[index].active ? kwhiteCLr : kblackClr,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  categoryData[index].title,
                  style: TextStyle(
                    color: categoryData[index].active ? kwhiteCLr : kblackClr,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
