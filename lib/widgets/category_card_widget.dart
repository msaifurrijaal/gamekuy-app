import 'package:flutter/material.dart';
import 'package:gamekuy_app/pages/category_list_page.dart';
import 'package:gamekuy_app/theme.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.imageAsset,
    required this.title,
    required this.category,
  });

  final String imageAsset, title, category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CategoryListPage(category: category),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.bottomRight,
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              imageAsset,
            ),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: whiteColor.withOpacity(0.5),
          ),
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
