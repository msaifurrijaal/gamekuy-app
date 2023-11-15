import 'package:flutter/material.dart';
import 'package:gamekuy_app/models/game.dart';
import 'package:gamekuy_app/theme.dart';

class CardGame extends StatelessWidget {
  const CardGame({
    super.key,
    required this.gameItem,
  });

  final Game gameItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
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
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        children: [
          Image.network(
            gameItem.thumbnail ?? '',
            width: 250,
            height: 150,
            fit: BoxFit.cover,
          ),
          Positioned(
            height: 40,
            left: 0,
            right: 0,
            bottom: 0,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.transparent.withOpacity(0.5),
                    child: Center(
                      child: Text(
                        gameItem.title ?? '',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: whiteColor),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: whiteColor,
                  child: Center(
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_outline,
                          color: Colors.red,
                        )),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
