import 'package:bmi_calculator/core/colors.dart';
import 'package:flutter/material.dart';

class WeightAgeCard extends StatelessWidget {
  const WeightAgeCard({
    super.key,
    required this.title,
    required this.value,
    required this.onAdd,
    required this.onRemove,
  });

  final String title;
  final int value;
  final Function() onAdd;
  final Function() onRemove;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Text(
              title,
              style: TextStyle(color: AppColors.whiteColor, fontSize: 18),
            ),
            Text(
              value.toString(),
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: AppColors.greyColor,
                    foregroundColor: AppColors.whiteColor,
                  ),
                  onPressed: onRemove,
                  icon: Icon(Icons.remove),
                ),
                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: AppColors.greyColor,
                    foregroundColor: AppColors.whiteColor,
                  ),
                  onPressed: onAdd,
                  icon: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
