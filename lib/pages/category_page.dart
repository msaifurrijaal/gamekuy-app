import 'package:flutter/material.dart';
import 'package:gamekuy_app/theme.dart';
import 'package:gamekuy_app/widgets/category_card_widget.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              Text(
                'Category',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: redColor,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const SizedBox(height: 5),
              Text(
                'Find the best games according to your interests, easily and quickly.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 25),
              const CategoryCard(
                imageAsset: 'assets/images/fantasy.jpg',
                title: 'Fantasy Game',
                category: 'fantasy',
              ),
              const SizedBox(height: 12),
              const CategoryCard(
                imageAsset: 'assets/images/mmorpg.jpg',
                title: 'MMORPG Game',
                category: 'mmorpg',
              ),
              const SizedBox(height: 12),
              const CategoryCard(
                imageAsset: 'assets/images/moba.jpg',
                title: 'Moba Game',
                category: 'moba',
              ),
              const SizedBox(height: 12),
              const CategoryCard(
                imageAsset: 'assets/images/racing.jpg',
                title: 'Racing Game',
                category: 'racing',
              ),
              const SizedBox(height: 12),
              const CategoryCard(
                imageAsset: 'assets/images/action.jpg',
                title: 'Action Game',
                category: 'action',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
