import 'package:cozy_stay/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Controller to manage selected index
class NavigationController extends GetxController {
  var selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }
}

/// Item model for each navigation tab
class ItemNavigationView {
  final Widget childBefore;
  final Widget childAfter;
  final String title;
  final int? badgeCount;

  ItemNavigationView({
    required this.childBefore,
    required this.childAfter,
    required this.title,
    this.badgeCount,
  });
}

/// Main Navigation View
class NavigationView extends StatelessWidget {
  final Function(int)? onChangePage;
  final Color? backgroundColor;
  final Color? borderTopColor;
  final Curve? curve;
  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  final Gradient? gradient;
  final Duration? durationAnimation;
  final List<ItemNavigationView> items;
  final TextStyle? titleTextStyle;
  final TextStyle? badgeTextStyle;
  final Color? badgeColor;
  final double? badgeSize;

  NavigationView({
    Key? key,
    required this.items,
    this.onChangePage,
    this.durationAnimation,
    this.backgroundColor,
    this.borderRadius,
    this.gradient,
    this.color,
    this.curve,
    this.borderTopColor,
    this.titleTextStyle,
    this.badgeTextStyle,
    this.badgeColor,
    this.badgeSize = 18.0,
  }) : super(key: key);

  // GetX controller
  final NavigationController controller = Get.put(NavigationController());

  // Your specific badge color
  static Color red = const Color(0xffE74C3C);

  @override
  Widget build(BuildContext context) {
    final double _defaultBorderRadius = 11.1;
    final Color _defaultColor = Colors.blue;
    final Duration _duration =
        durationAnimation ?? const Duration(milliseconds: 250);

    return Obx(() {
      final int _currentPage = controller.selectedIndex.value;

      return Container(
        width: double.maxFinite,
        color: backgroundColor ?? Colors.white,
        height: 70, // Increased height to accommodate title
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: 1,
              color: borderTopColor ?? Colors.grey.withAlpha(20),
            ),
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Stack(
                    children: [
                      // Animated background
                      AnimatedPositioned(
                        curve: curve ?? Curves.easeInOutQuint,
                        left:
                            (constraints.maxWidth / items.length) *
                            _currentPage,
                        width: constraints.maxWidth / items.length,
                        height: constraints.maxHeight,
                        duration: Duration(
                          milliseconds: _duration.inMilliseconds,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 5,
                            left: 45 / items.length,
                            right: 45 / items.length,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius:
                                  borderRadius ??
                                  BorderRadius.circular(_defaultBorderRadius),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 5,
                                    ),
                                    child: AnimatedContainer(
                                      duration: Duration(
                                        microseconds:
                                            _duration.inMilliseconds ~/ 2.1,
                                      ),
                                      decoration: BoxDecoration(
                                        gradient:
                                            gradient ??
                                            LinearGradient(
                                              colors: [
                                                Colors.white.withAlpha(0),
                                                (color ?? _defaultColor)
                                                    .withOpacity(0.2),
                                              ],
                                              begin: const FractionalOffset(
                                                0.0,
                                                0.0,
                                              ),
                                              end: const FractionalOffset(
                                                0.0,
                                                1.0,
                                              ),
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 4,
                                  ),
                                  child: AnimatedContainer(
                                    duration: Duration(
                                      milliseconds:
                                          _duration.inMilliseconds ~/ 2,
                                    ),
                                    width: double.maxFinite,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      color: color ?? _defaultColor,
                                      borderRadius:
                                          borderRadius ??
                                          const BorderRadius.only(
                                            topLeft: Radius.circular(4),
                                            topRight: Radius.circular(4),
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Items row
                      SizedBox(
                        width: double.maxFinite,
                        height: double.maxFinite,
                        child: Row(
                          children: items.map((e) {
                            final int index = items.indexOf(e);
                            final bool isSelected = _currentPage == index;

                            return Flexible(
                              flex: 1,
                              child: InkWell(
                                onTap: () {
                                  controller.changePage(index);
                                  if (onChangePage != null)
                                    onChangePage!(index);
                                },
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Badge and icon container
                                      Stack(
                                        clipBehavior: Clip.none,
                                        children: [
                                          // Icon with cross fade animation
                                          Container(
                                            padding: const EdgeInsets.all(4),
                                            child: AnimatedCrossFade(
                                              firstChild: e.childBefore,
                                              secondChild: e.childAfter,
                                              crossFadeState: isSelected
                                                  ? CrossFadeState.showSecond
                                                  : CrossFadeState.showFirst,
                                              duration: Duration(
                                                milliseconds:
                                                    _duration.inMilliseconds ~/
                                                    2,
                                              ),
                                            ),
                                          ),
                                          // Badge - positioned to stack on top of icon
                                          if (e.badgeCount != null &&
                                              e.badgeCount! > 0)
                                            Positioned(
                                              top: -2, // Stacked on top of icon
                                              right:
                                                  -4, // Stacked on right of icon
                                              child: Container(
                                                height: badgeSize,
                                                width: badgeSize,
                                                decoration: BoxDecoration(
                                                  color:
                                                      badgeColor ??
                                                      MyColor
                                                          .red, // Using your specific red color
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                    color:
                                                        backgroundColor ??
                                                        Colors.white,
                                                    width: 1.5,
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    e.badgeCount! > 99
                                                        ? '99+'
                                                        : e.badgeCount
                                                              .toString(),
                                                    style:
                                                        badgeTextStyle ??
                                                        TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              badgeSize! * 0.5,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                      // Title
                                      const SizedBox(height: 4),
                                      Text(
                                        e.title,
                                        style:
                                            titleTextStyle ??
                                            TextStyle(
                                              fontSize: 12,
                                              fontWeight: isSelected
                                                  ? FontWeight.bold
                                                  : FontWeight.normal,
                                              color: isSelected
                                                  ? (color ?? _defaultColor)
                                                  : Colors.grey,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      );
    });
  }
}
