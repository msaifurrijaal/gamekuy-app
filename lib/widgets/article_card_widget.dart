import 'package:flutter/material.dart';
import 'package:gamekuy_app/models/article.dart';
import 'package:gamekuy_app/theme.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({super.key, required this.articleItem});

  final Article articleItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: softGreyColor,
            blurRadius: 100,
            offset: Offset(0, 0), // Mengatur posisi bayangan
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.asset(
              articleItem.imageAsset,
              width: 75,
              height: 75,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Container(
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    articleItem.category,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  Text(
                    articleItem.title,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.w500),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Text(
                    articleItem.author,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: greyColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
