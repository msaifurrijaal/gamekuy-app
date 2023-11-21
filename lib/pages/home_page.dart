import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamekuy_app/blocs/game/game_bloc.dart';
import 'package:gamekuy_app/models/article.dart';
import 'package:gamekuy_app/theme.dart';
import 'package:gamekuy_app/widgets/article_card_widget.dart';
import 'package:gamekuy_app/widgets/game_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<GameBloc>().add(GetAllGameEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(top: 10),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Text(
                            'GAME',
                            style: TextStyle(
                                color: blackColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 24),
                          ),
                          Text(
                            'Z',
                            style: TextStyle(
                                color: redColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 24),
                          ),
                          Text(
                            'ONE',
                            style: TextStyle(
                                color: blackColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 24),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.notifications_none_outlined,
                              color: redColor,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.person_outline_rounded,
                              color: redColor,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: softGreyColor,
                        blurRadius: 100,
                        offset: Offset(0, 0), // Mengatur posisi bayangan
                      ),
                    ],
                  ),
                  child: SearchBar(
                    onChanged: (value) {},
                    textStyle: MaterialStatePropertyAll(
                        Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.w100,
                              color: greyColor,
                            )),
                    hintText: "Search",
                    hintStyle: MaterialStatePropertyAll(
                        Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.w100,
                              color: greyColor,
                            )),
                    elevation: const MaterialStatePropertyAll(0),
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(18),
                        ), // Mengatur border radius menjadi 10
                      ),
                    ),
                    leading: Container(
                      padding: const EdgeInsets.all(10),
                      child: const Icon(
                        Icons.search,
                        color: Color(0xff98A2B3),
                        size: 28,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Top Games',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 10),
                BlocBuilder<GameBloc, GameState>(
                  builder: (context, state) {
                    if (state is GameLoading) {
                      return const SizedBox(
                        height: 150,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }
                    if (state is GameSuccess) {
                      var listGames = state.games.take(10).toList();
                      return Container(
                        height: 150,
                        child: ListView.builder(
                          padding: const EdgeInsets.only(left: 10),
                          scrollDirection: Axis.horizontal,
                          itemCount: listGames.length,
                          itemBuilder: (context, index) {
                            return CardGame(
                              gameItem: listGames[index],
                              marginLeft: 10.0,
                              width: 250.0,
                            );
                          },
                        ),
                      );
                    }
                    if (state is GameError) {
                      return SizedBox(
                        height: 150,
                        child: Center(
                          child: Text(state.errorMessage),
                        ),
                      );
                    }
                    return const SizedBox(
                      height: 150,
                      child: Center(
                        child: Text('No Data'),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Popular Platform',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              width: 64,
                              'assets/images/logo_console.png',
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Console',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Container(
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              width: 64,
                              'assets/images/logo_mobile.png',
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Mobile',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Container(
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              width: 64,
                              'assets/images/logo_pc.png',
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'PC',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Recommended Articles',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: articleList.length,
                    itemBuilder: (context, index) {
                      final Article article = articleList[index];
                      return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: ArticleCard(articleItem: article));
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
