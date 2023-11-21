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
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            padding: const EdgeInsets.only(top: 60),
            alignment: Alignment.topCenter,
            width: double.infinity,
            color: redColor,
            child: Text(
              'Profile',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: whiteColor,
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                width: double.infinity,
                height: 120,
                color: redColor,
              ),
              Positioned(
                top: 35,
                child: Container(
                  width: 160,
                  height: 160,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://randomuser.me/api/portraits/men/5.jpg"),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(
                      side: BorderSide(width: 8, color: whiteColor),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 120),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 90),
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
                                      style:
                                          Theme.of(context).textTheme.bodyLarge)
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
                                      style:
                                          Theme.of(context).textTheme.bodyLarge)
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
                                      style:
                                          Theme.of(context).textTheme.bodyLarge)
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
                                      style:
                                          Theme.of(context).textTheme.bodyLarge)
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 40),
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
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                        ),
                                        backgroundColor:
                                            const MaterialStatePropertyAll(
                                                whiteColor),
                                        minimumSize:
                                            const MaterialStatePropertyAll(
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
                                    WidgetsBinding.instance
                                        .addPostFrameCallback((_) {
                                      Navigator.pushReplacementNamed(
                                          context, LoginPage.routeName);
                                    });
                                  }
                                  return Expanded(
                                    child: ElevatedButton(
                                      style: Theme.of(context)
                                          .elevatedButtonTheme
                                          .style
                                          ?.copyWith(
                                            minimumSize:
                                                const MaterialStatePropertyAll(
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
                                        context
                                            .read<AuthBloc>()
                                            .add(LogoutEvent());
                                      },
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
