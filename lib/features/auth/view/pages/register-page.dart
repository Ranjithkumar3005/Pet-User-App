import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:user_app/core/constants/sizes.dart';
import 'package:user_app/features/auth/view/pages/login-page.dart';
import 'package:user_app/features/auth/view/widgets/back-button.dart';
import 'package:user_app/features/auth/view/widgets/register-form.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Dear Comrade',
            style: TextStyle(
              fontSize: Sizes.fontSize2xl,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Find your Pet',
            style: TextStyle(
              fontSize: Sizes.fontSizeLg,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.lg),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: Sizes.spaceBtwSections,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/file.png',
                    height: 200,
                  ),
                ),
                const SizedBox(
                  height: Sizes.spaceBtwSections,
                ),

                const Text(
                  'Welcome Again',
                  style: TextStyle(
                    fontSize: Sizes.fontSize2xl,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: Sizes.defaultSpace,
                ),
                // ----------------- RegisterForm -----------------
                const RegisterForm(),
                const SizedBox(
                  height: Sizes.defaultSpace,
                ),
                Center(
                  child: BackButtonWidget(
                      text: 'Already Have an Account ? ',
                      buttonName: 'Sign In',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
