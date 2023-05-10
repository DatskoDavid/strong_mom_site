import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_task/utils/constants/colors.dart';
import 'package:test_task/utils/constants/text_styles.dart';

class GoToForm extends StatelessWidget {
  const GoToForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 262,
      child: Stack(
        children: [
          SvgPicture.asset('assets/graphics/go_to_form_bg.svg'),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Send your data',
                  style: AppTextStyles.whiteHeadline2,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 392,
                    height: 58,
                    decoration: BoxDecoration(
                      color: AppColors.purple1,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Center(
                      child: Text(
                        'Go to form',
                        style: AppTextStyles.buttonCaption,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
