import 'package:flutter/material.dart';
import 'package:get/get.dart';

class header_box extends StatelessWidget {
  header_box({
    required this.icon,required this.text
  });
  String text;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: Get.width*0.08,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text,style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
                Icon(icon,color: Colors.grey,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}