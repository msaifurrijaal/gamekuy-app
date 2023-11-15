import 'package:flutter/material.dart';
import 'package:gamekuy_app/theme.dart';
import 'package:gamekuy_app/widgets/navbar.dart';

final formKey = GlobalKey<FormState>();

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool passToggle = false;
  bool checkboxToggle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            'Masuk',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                          hintText: "Email",
                          hintStyle: TextStyle(color: greyColor),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            borderSide: BorderSide(color: greyColor),
                          ),
                          focusedBorder: InputBorder.none,
                          filled: true,
                          fillColor: greyLightColor,
                        ),
                        validator: (email) {
                          if (email == null || email.isEmpty) {
                            return 'Silahkan isi email';
                          }
                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(email)) {
                            return 'Silahkan gunakan email yang benar';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Kata Sandi',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: passwordController,
                        obscureText: !passToggle,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                          hintText: "Kata Sandi",
                          hintStyle: const TextStyle(color: greyColor),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            borderSide: BorderSide(color: greyColor),
                          ),
                          focusedBorder: InputBorder.none,
                          filled: true,
                          fillColor: greyLightColor,
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                passToggle = !passToggle;
                              });
                            },
                            child: Icon(
                                passToggle
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: greyColor),
                          ),
                        ),
                        validator: (password) => password!.isEmpty
                            ? 'Silahkan isi kata sandi'
                            : null,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: checkboxToggle,
                          onChanged: (bool? newValue) {
                            setState(() {
                              checkboxToggle = newValue!;
                            });
                          },
                          checkColor: redColor,
                          fillColor: MaterialStateProperty.all(whiteColor),
                        ),
                        Text(
                          'Ingat Saya',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    Text(
                      'Lupa password?',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: redColor),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                        minimumSize: MaterialStateProperty.all(
                          const Size(double.infinity, 48),
                        ),
                      ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => (Navbar())));
                    }
                  },
                  child: Text(
                    'Masuk',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500, color: whiteColor),
                  ),
                ),
                const SizedBox(height: 28),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(color: black),
                        height: 0.5,
                      ),
                    ),
                    const SizedBox(width: 14),
                    Text(
                      'atau masuk dengan',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(color: black),
                        height: 0.5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: whiteColor,
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/logo_google.png'),
                              const SizedBox(width: 8),
                              Text(
                                "Google",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xFF3C5A9A),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/logo_fb.png'),
                              const SizedBox(width: 8),
                              Text(
                                "Facebook",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: whiteColor,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 36),
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    // Navigator.pushNamed(context, RegisterPage.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Belum mempunyai akun?',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Daftar',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.w500,
                              color: redColor,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
