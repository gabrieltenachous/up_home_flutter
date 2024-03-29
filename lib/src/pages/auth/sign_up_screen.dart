import 'package:flutter/material.dart';
import 'package:up_home/src/pages/auth/components/layout_auth_widget.dart';
import 'package:up_home/src/pages/auth/sign_in_screen.dart';
import 'package:up_home/src/widgets/text_field_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LayoutAuthWidget(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/imgs/UpHomes.png'),
                  const Text(
                    'Register Account',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextFieldWidget(
                    label: 'Name',
                    placeholder: 'Enter your name here',
                  ),
                  const TextFieldWidget(
                    label: 'Phone',
                    placeholder: 'Enter your phone here',
                  ),
                  const TextFieldWidget(
                    label: 'Email Address',
                    placeholder: 'Enter your email here',
                  ),
                  const TextFieldWidget(
                    label: 'Password',
                    placeholder: 'Enter your password here',
                  ),
                  const TextFieldWidget(
                    label: 'Confirm Password',
                    placeholder: 'Enter your confirm password here',
                  ),
                  // Adicione mais TextFieldWidgets aqui conforme necessário
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Adicione aqui a lógica para a ação do botão de login
                      },
                      child: SizedBox(
                        width: 130,
                        height: 50,
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SiginIn(),
                                ),
                              );
                            },
                            child: const Text(
                              'Create Account',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
