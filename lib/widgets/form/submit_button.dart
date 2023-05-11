import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/text_styles.dart';

class SubmitButton extends StatelessWidget {
  final Function(BuildContext) handler;
   
  const SubmitButton({Key? key, required this.handler}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => handler(context),
      child: Container(
        width: 392,
        height: 58,
        decoration: BoxDecoration(
          color: AppColors.purple1,
          borderRadius: BorderRadius.circular(100),
        ),
        child: const Center(
          child: Text(
            'Sumbit',
            style: AppTextStyles.buttonCaption,
          ),
        ),
      ),
    );
  }
}
