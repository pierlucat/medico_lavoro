import 'package:flutter/material.dart';
import 'package:medico_lavoro/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

class BreakpointUtils {
  static const xsmall = BreakpointData(start: 0, end: 750, name: 'XSMALL');
  static const small = BreakpointData(start: 751, end: 950, name: 'SMALL');
  static const medium = BreakpointData(start: 951, end: 1200, name: 'MEDIUM');
  static const large = BreakpointData(start: 1201, end: 10000, name: 'LARGE');

  static T getResponsiveValue<T>(BuildContext context, List<T> values) {
    return ResponsiveValue(
      context,
      conditionalValues: [
        Condition.equals(name: 'XSMALL', value: values[0]),
        Condition.equals(name: 'SMALL', value: values[1]),
        Condition.equals(name: 'MEDIUM', value: values[2]),
        Condition.equals(name: 'LARGE', value: values[3]),
      ],
    ).value;
  }

  static final appBreakpointsList = [
    Breakpoint(
      start: BreakpointUtils.xsmall.start,
      end: BreakpointUtils.xsmall.end,
      name: BreakpointUtils.xsmall.name,
    ),
    Breakpoint(
      start: BreakpointUtils.small.start,
      end: BreakpointUtils.small.end,
      name: BreakpointUtils.small.name,
    ),
    Breakpoint(
      start: BreakpointUtils.medium.start,
      end: BreakpointUtils.medium.end,
      name: BreakpointUtils.medium.name,
    ),
    Breakpoint(
      start: BreakpointUtils.large.start,
      end: BreakpointUtils.large.end,
      name: BreakpointUtils.large.name,
    ),
  ];
}
