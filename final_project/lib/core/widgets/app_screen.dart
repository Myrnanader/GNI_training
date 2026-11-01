import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_colors.dart';
import '../theme/app_dimensions.dart';

class AppScreen extends StatelessWidget {
  final Widget child;
  final Widget? bottomAction;
  final bool scrollable;
  final bool useSafeArea;
  final double? horizontalPadding;
  final BoxDecoration? decoration;

  const AppScreen({
    super.key,
    required this.child,
    this.bottomAction,
    this.scrollable = true,
    this.useSafeArea = true,
    this.horizontalPadding,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    final padding = EdgeInsets.symmetric(
      horizontal: (horizontalPadding ?? AppDimensions.screenPadding).w,
    );

    final content = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: scrollable
              ? SingleChildScrollView(
                  padding: padding,
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  child: child,
                )
              : Padding(padding: padding, child: child),
        ),
        if (bottomAction != null)
          Padding(
            padding: EdgeInsets.fromLTRB(
              AppDimensions.formPadding.w,
              AppDimensions.spacing12.h,
              AppDimensions.formPadding.w,
              AppDimensions.bottomActionBottom.h,
            ),
            child: bottomAction,
          ),
      ],
    );

    return Scaffold(
      backgroundColor: AppColors.background,
      resizeToAvoidBottomInset: true,
      body: DecoratedBox(
        decoration: decoration ?? const BoxDecoration(),
        child: SizedBox.expand(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: AppDimensions.mobileMaxWidth,
              ),
              child: useSafeArea ? SafeArea(child: content) : content,
            ),
          ),
        ),
      ),
    );
  }
}
