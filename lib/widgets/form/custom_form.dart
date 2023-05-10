import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_task/utils/constants/text_styles.dart';
import 'package:test_task/widgets/form/custom_text_field.dart';
import 'package:test_task/widgets/form/submit_button.dart';

class CustomForm extends StatelessWidget {
  CustomForm({Key? key}) : super(key: key);

  final _firstNameController = TextEditingController();
  final _secondNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _adressController = TextEditingController();

  void _submitButtonHandler() {
    debugPrint('\tFORM');
    debugPrint('First Name: ${_firstNameController.text}');
    debugPrint('Second Name: ${_secondNameController.text}');
    debugPrint('Email: ${_emailController.text}');
    debugPrint('Adress: ${_adressController.text}');
    debugPrint('----------------------');

    clearText();
  }

  void clearText() {
    _firstNameController.clear();
    _secondNameController.clear();
    _emailController.clear();
    _adressController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 560,
      child: Stack(
        children: [
          SvgPicture.asset('assets/graphics/form_bg.svg'),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Send your data',
                  style: AppTextStyles.whiteHeadline2,
                ),
                const SizedBox(height: 17),
                CustomTextField(
                  hint: 'First Name',
                  controller: _firstNameController,
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  hint: 'Second Name',
                  controller: _secondNameController,
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  hint: 'Email',
                  controller: _emailController,
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  hint: 'Adress',
                  controller: _adressController,
                ),
                const SizedBox(height: 24),
                SubmitButton(handler: _submitButtonHandler),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
