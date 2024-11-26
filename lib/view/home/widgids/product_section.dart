import 'package:flower_shop_app/data/product_data.dart';
import 'package:flower_shop_app/view/home/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AlignedGridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        itemCount: productData.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: const BoxDecoration(color: klightGreyClr),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      productData[index].images,
                      height: 200,
                      width: double.maxFinite,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        productData[index].category,
                        style: const TextStyle(color: ksecondryClr),
                      ),
                      const Icon(Icons.shopping_bag_outlined)
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    productData[index].title,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    productData[index].desc,
                    maxLines: 2,
                    style: const TextStyle(fontSize: 11, color: kgrayClr),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    productData[index].price,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: kgrayClr),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
