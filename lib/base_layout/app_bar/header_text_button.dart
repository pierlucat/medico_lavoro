import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medico_lavoro/utils/router_utils.dart';

import '../../utils/breakpoint_utils.dart';
import '../../utils/theme.dart';

class HeaderTextButton extends StatelessWidget {
  final String text;
  final String? pageName;
  const HeaderTextButton({
    super.key,
    required this.text,
    this.pageName,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: PageNotifier.currentPage,
        builder: (context, value, _) {
          final isActive = value == pageName;
          return TextButton(
            style: ButtonStyle(
              padding: WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 15, vertical: 15)),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0),
                ),
              ),
              // side: WidgetStatePropertyAll(
              //   BorderSide(
              //     color: isActive
              //         ? Color(ColorUtils.lighterPrimaryColor)
              //         : Colors.transparent,
              //   ),
              // ),
              backgroundColor: isActive
                  ? WidgetStatePropertyAll(
                      Colors.black,
                    )
                  : WidgetStatePropertyAll(
                      Colors.transparent,
                    ),
            ),
            onPressed: () {
              if (pageName != null) {
                //Navigator.of(context).pushNamed(pageName!);
                context.go(pageName!);
                return;
              }
            },
            child: Text(
              text,
              style: ThemeUtils.bodyText.copyWith(
                fontSize: BreakpointUtils.getResponsiveValue<double>(
                  context,
                  [
                    SizingUtils.bodyTextM,
                    SizingUtils.bodyTextS,
                    SizingUtils.bodyTextM,
                    SizingUtils.bodyTextL,
                  ],
                ),
                color: isActive ? Color(ColorUtils.primaryColor) : Colors.black,
              ),
            ),
          );
        });
  }
}
