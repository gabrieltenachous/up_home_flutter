import 'package:flutter/material.dart';

class LayoutAuthWidget extends StatelessWidget {
  final Widget child;
  const LayoutAuthWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  'https://casacor.abril.com.br/wp-content/uploads/sites/7/2021/07/fachada-platina-220.jpg?quality=80&strip=info&w=687',
                ),
              ),
            ),
          ),
          Container(
            constraints: BoxConstraints(
              minHeight: size.height,
            ),
            child: Column(
              children: [
                Container(
                  height: 550,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.background,
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(25),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 70),
                      child: child,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
