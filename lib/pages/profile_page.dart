import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamekuy_app/blocs/auth/auth_bloc.dart';
import 'package:gamekuy_app/pages/login_page.dart';
import 'package:gamekuy_app/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            'Profile',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: const ShapeDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/120x120"),
                  fit: BoxFit.fill,
                ),
                shape: OvalBorder(
                  side: BorderSide(width: 5, color: redColor),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Icon(
                        size: 32,
                        Icons.person,
                        color: redColor,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(color: redColor),
                          ),
                          Text('Kevin De Bruyne',
                              style: Theme.of(context).textTheme.bodyLarge)
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Icon(
                        size: 32,
                        Icons.mail,
                        color: redColor,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(color: redColor),
                          ),
                          Text('kevin@mail.com',
                              style: Theme.of(context).textTheme.bodyLarge)
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Icon(
                        size: 32,
                        Icons.language,
                        color: redColor,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Country',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(color: redColor),
                          ),
                          Text('Indonesia',
                              style: Theme.of(context).textTheme.bodyLarge)
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Icon(
                        size: 32,
                        Icons.work,
                        color: redColor,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Role',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(color: redColor),
                          ),
                          Text('RPG Player',
                              style: Theme.of(context).textTheme.bodyLarge)
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 64),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: Theme.of(context)
                              .elevatedButtonTheme
                              .style
                              ?.copyWith(
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    side: const BorderSide(
                                      color: redColor,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                backgroundColor:
                                    const MaterialStatePropertyAll(whiteColor),
                                minimumSize: const MaterialStatePropertyAll(
                                  Size(double.infinity, 48),
                                ),
                              ),
                          child: Text(
                            'Edit',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: redColor),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(width: 10),
                      BlocBuilder<AuthBloc, AuthState>(
                        builder: (context, state) {
                          if (state is LogoutSuccess) {
                            return Expanded(
                                child: ElevatedButton(
                              style: Theme.of(context)
                                  .elevatedButtonTheme
                                  .style
                                  ?.copyWith(
                                    minimumSize: const MaterialStatePropertyAll(
                                      Size(double.infinity, 48),
                                    ),
                                  ),
                              child: Text(
                                'Logout',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        fontWeight: FontWeight.w700,
                                        color: whiteColor),
                              ),
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, LoginPage.routeName);
                              },
                            ));
                          }
                          return Expanded(
                              child: ElevatedButton(
                            style: Theme.of(context)
                                .elevatedButtonTheme
                                .style
                                ?.copyWith(
                                  minimumSize: const MaterialStatePropertyAll(
                                    Size(double.infinity, 48),
                                  ),
                                ),
                            child: Text(
                              'Logout',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: whiteColor),
                            ),
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, LoginPage.routeName);
                            },
                          ));
                        },
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
