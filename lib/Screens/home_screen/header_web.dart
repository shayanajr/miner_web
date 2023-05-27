import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miner_web/Screens/home_screen/component.dart';


class header extends StatelessWidget {
  const header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: Get.width,
        height: Get.height * 0.06,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.08),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            header_box(
              text: 'صفحه اصلی',
              icon: Icons.home_filled,
            ),
            header_box(
              text:'درباره ی ما' ,
              icon: Icons.info,
            ),
            header_box(
              text: 'خدمات',
              icon: Icons.library_books_rounded,
            ),
            header_box(
              text:'ایمیل' ,
              icon: Icons.email,
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Miner Web',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),),
            ),
          ],
        ),
      ),
    );
  }
}