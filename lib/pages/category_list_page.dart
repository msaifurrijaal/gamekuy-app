import 'package:flutter/material.dart';

class CategoryListPage extends StatefulWidget {
  const CategoryListPage({super.key, required this.category});

  final String category;

  @override
  State<CategoryListPage> createState() => _CategoryListPageState();
}

class _CategoryListPageState extends State<CategoryListPage> {
  @override
  Widget build(BuildContext context) {
    final String category = widget.category;
    return Scaffold(
      body: Center(
        child: Text(category),
      ),
    );
  }
}
