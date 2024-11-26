import 'package:flutter/material.dart';
import 'package:flower_shop_app/view/home/colors.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
            text: const TextSpan(
                text: 'Welcome ',
                style: TextStyle(
                    color: ksecondryClr,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
                children: [
              TextSpan(
                  text: 'Mr.Ankit',
                  style: TextStyle(
                    color: kblackClr,
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ))
            ])),
        const CircleAvatar(
          backgroundColor: klightGreyClr,
          child: Icon(
            Icons.notifications_outlined,
            color: kblackClr,
          ),
        )
      ],
    );
  }
}
