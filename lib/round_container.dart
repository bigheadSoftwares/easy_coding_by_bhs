part of 'big_head_softwares.dart';

/// The [RoundContainer] is an all around widget that provides a container with pre-defined radius
/// It can used as a button as well and to use it at it full potential please use [neumorphism] extension on it for eg. [RoundContainer().neumorphism()]
class RoundContainer extends StatelessWidget {
  const RoundContainer(
      {Key? key,
      required this.child,
      this.color,
      this.margin,
      this.padding,
      this.hPadding = 0,
      this.vPadding = 0,
      this.hMargin = 0,
      this.vMargin = 0,
      this.radius = 12,
      this.height,
      this.width,
      this.boxShadow,
      this.alignment,
      this.borderWidth = 1.0,
      this.borderColor = Colors.transparent,
      this.onTap,
      this.splashColor})
      : super(key: key);

  /// The [child] basically can be any kind of widget that you desire
  final Widget child;

  /// This [color] is referred to the color of [RoundContainer] itself by default the color parameter of round container is null
  final Color? color;

  /// This [margin] works as the margin that we use in other widgets
  /// but if you want to give only horizontal or vertical margin please refer to [hMargin] and [vMargin] respectively
  /// Note: please avoid any kind of margin while using [neumorphism] on [RoundContainer]
  final EdgeInsetsGeometry? margin;

  /// This [padding] works as the padding that we use in other widgets
  /// but if you want to give only horizontal or vertical padding please refer to [hPadding] and [vPadding] respectively
  final EdgeInsetsGeometry? padding;

  /// [hPadding] takes a double and that padding horizontally to the child of [RoundContainer]
  final double hPadding;

  /// [vPadding] takes a double and that padding vertically to the child of [RoundContainer]
  final double vPadding;

  /// [hMargin] takes a double and that margin horizontally to the child of [RoundContainer]
  /// Note: please avoid any kind of margin while using [neumorphism] on [RoundContainer]
  final double hMargin;

  /// [vMargin] takes a double and that margin vertically to the child of [RoundContainer]
  /// Note: please avoid any kind of margin while using [neumorphism] on [RoundContainer]
  final double vMargin;

  /// It takes double and provides it to the [RoundContainer] radius
  /// by default its value is [12]
  final double radius;

  /// [height] It is the height of whole  [RoundContainer]
  final double? height;

  /// [width] It is the height of whole  [RoundContainer]
  final double? width;

  /// [boxShadow] it takes a [List<BoxShadow>]
  final List<BoxShadow>? boxShadow;

  /// [alignment] just provides the alignment to child of [RoundContainer]
  final Alignment? alignment;

  /// [borderColor] gives color to the border by default its value is null
  final Color borderColor;

  /// [borderWidth] as the name suggest it provides width to the border by default its value is 1.0
  final double borderWidth;

  /// This [onTap] can be provided to the [RoundContainer] in order to use it as a button
  final VoidCallback? onTap;

  /// [splashColor] is just provided for the onTap functionality it has nothing to do with [RoundContainer]
  final Color? splashColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: splashColor,
      child: Container(
        height: height,
        width: width,
        alignment: alignment,
        margin: margin ??
            EdgeInsets.symmetric(
              horizontal: hMargin,
              vertical: vMargin,
            ),
        padding: padding ??
            EdgeInsets.symmetric(
              horizontal: hPadding,
              vertical: vPadding,
            ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: color,
          boxShadow: boxShadow,
          border: Border.all(
            color: borderColor,
            width: borderWidth,
          ),
        ),
        child: child,
      ),
    );
  }
}
