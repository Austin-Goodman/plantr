import 'package:plantr/ui/common/app_colors.dart';
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

class HomeViewMobile extends ViewModelWidget<HomeViewModel> {
  final TextEditingController? controller;
  const HomeViewMobile({super.key, this.controller});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
        backgroundColor: kcBackgroundColor,
        body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 50,
          ),
          children: [
            const AcademyIcon(),
            verticalSpaceLarge,
            const HomeTitle(),
            verticalSpaceTiny,
            const HomeSubtitle(),
            verticalSpaceLarge,
            InputField(
              controller: controller,
            ),
            verticalSpaceMedium,
            HomeNotifyButton(onTap: viewModel.captureEmail),
            verticalSpaceMedium,
            const HomeImage(),
          ],
        ));
  }
}
