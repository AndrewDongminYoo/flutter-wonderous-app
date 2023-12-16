import 'package:wonders/common_libs.dart';

class StaticTextScale extends StatelessWidget {
  const StaticTextScale({Key? key, required this.child, this.scale = 1}) : super(key: key);
  final Widget child;
  final double scale;

  @override
  Widget build(BuildContext context) {
    final textScaler = TextScaler.linear(scale);
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: textScaler),
      child: child,
    );
  }
}
