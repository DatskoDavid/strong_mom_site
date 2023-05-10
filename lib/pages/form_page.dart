import 'package:flutter/material.dart';

import '../widgets/footer/footer.dart';
import '../widgets/form/custom_form.dart';
import '../widgets/header/header.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Center(
              child: SizedBox(
                width: 1240,
                child: Column(
                  children: [
                    const Header(),
                    const SizedBox(height: 100),
                    CustomForm(),
                    const SizedBox(height: 100),
                  ],
                ),
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
