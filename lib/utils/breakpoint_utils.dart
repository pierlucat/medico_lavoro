import 'package:responsive_framework/responsive_framework.dart';

class BreakpointUtils {
  // Semplificazione: Solo due stati.
  // Mobile va da 0 a 800px.
  // Desktop va da 801px in su.
  static const mobile = BreakpointData(start: 0, end: 800, name: MOBILE);
  static const tablet = BreakpointData(start: 801, end: 1200, name: TABLET);
  static const desktop =
      BreakpointData(start: 1201, end: double.infinity, name: DESKTOP);

  static final appBreakpointsList = [
    Breakpoint(start: mobile.start, end: mobile.end, name: mobile.name),
    Breakpoint(start: tablet.start, end: tablet.end, name: tablet.name),
    Breakpoint(start: desktop.start, end: desktop.end, name: desktop.name),
  ];
}

class BreakpointData {
  final double start;
  final double end;
  final String name;
  const BreakpointData(
      {required this.start, required this.end, required this.name});
}
