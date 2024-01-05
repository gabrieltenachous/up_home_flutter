import 'package:flutter/material.dart';
import 'package:up_home/src/config/theme_config.dart';
import 'package:up_home/src/pages/auth/components/layout_auth_widget.dart';
import 'package:up_home/src/pages/auth/forgot_password_screen.dart';
import 'package:up_home/src/pages/auth/sign_up_screen.dart';
import 'package:up_home/src/widgets/text_field_widget.dart';

class SiginIn extends StatelessWidget {
  const SiginIn({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return LayoutAuthWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/imgs/UpHomes.png'),
          const Text(
            'Welcome Back',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const TextFieldWidget(
            label: 'Email Address',
            placeholder: 'Enter your email here',
          ),
          Center(
            child: Text(
              "Don't have an account?",
              style: TextStyle(
                fontSize: 14,
                color: theme.colorScheme.secondary,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const TextFieldWidget(
            label: 'Password',
            placeholder: 'Enter your password here',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgotPasswordScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Adicione aqui a lógica para a ação do botão de login
                  },
                  child: const SizedBox(
                    width: 130,
                    height: 50,
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpScreen(),
                  ),
                );
              },
              child: Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColorThemes.ternaryColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
