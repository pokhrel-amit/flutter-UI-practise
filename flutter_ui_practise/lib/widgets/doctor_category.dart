import 'package:flutter/material.dart';

class DoctorCategory extends StatelessWidget {
  final String iconPath;
  final String categoryName;
  const DoctorCategory({
    Key? key,
    required this.iconPath,
    required this.categoryName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData themedata = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.deepPurple.shade100.withOpacity(0.4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(iconPath),
            const SizedBox(
              width: 4,
            ),
            Text(
              categoryName,
              style: themedata.textTheme.headline5,
            ),
            const SizedBox(
              width: 6,
            )
          ],
        ),
      ),
    );
  }
}
