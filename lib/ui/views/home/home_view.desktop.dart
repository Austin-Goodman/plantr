import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantr/ui/common/app_colors.dart';
import 'package:plantr/ui/common/app_constants.dart';
import 'package:plantr/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:plantr/ui/views/home/widgets/home_image.dart';
import 'package:plantr/ui/views/home/widgets/home_notify_button.dart';
import 'package:plantr/ui/views/home/widgets/home_subtitle.dart';
import 'package:plantr/ui/views/home/widgets/home_title.dart';
import 'package:plantr/ui/widgets/common/academy_icon.dart';
import 'package:plantr/ui/widgets/common/input_field.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  final TextEditingController? controller;
  const HomeViewDesktop({super.key, this.controller});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Center(
        child: SizedBox(
          width: kdDesktopMaxContentWidth,
          height: kdDesktopMaxContentHeight,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AcademyIcon(),
                  const Spacer(flex: 2),
                  const HomeTitle(),
                  const HomeSubtitle(),

                  // Arrow
                  verticalSpaceMedium,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: SvgPicture.asset('assets/sign-up-arrow.svg'),
                  ),
                  verticalSpaceSmall,

                  Row(
                    children: [
                      InputField(
                        controller: controller,
                      ),
                      horizontalSpaceSmall,
                      HomeNotifyButton(onTap: viewModel.captureEmail)
                    ],
                  ),
                  const Spacer(flex: 3)
                ],
              ),
              const HomeImage()
            ],
          ),
        ),
      ),
    );
  }
}
