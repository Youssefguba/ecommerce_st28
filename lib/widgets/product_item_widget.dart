import 'package:ecommerce_st28_second/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ProductItemWidget extends StatelessWidget {

  // Dummy Data
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Color(0xffEBF0FF)),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Image
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(
                image: NetworkImage(
                  'PUT IMAGE HERE', // TODO
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 8),
          // Title
          Text(
            'PUT TEXT HERE', // TODO
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
              color: AppColors.textColor,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            'PUT PRICE HERE', // TODO
            maxLines: 1,
            style: TextStyle(
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
