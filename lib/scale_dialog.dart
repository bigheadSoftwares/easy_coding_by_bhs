part of 'big_head_softwares.dart';

class ScaleWidget extends StatefulWidget {
  const ScaleWidget({
    Key? key,
    required this.child,
    this.responseIcon,
    this.responseIconBackgroundColor,
    this.backgroundColor,
    this.responseIconColor,
    this.button,
    this.height,
    this.width,
    this.curve,
  }) : super(key: key);
  final Widget child;
  final IconData? responseIcon;
  final Color? responseIconBackgroundColor;
  final Color? backgroundColor;
  final Color? responseIconColor;
  final Widget? button;
  final double? height;
  final double? width;
  final Curve? curve;

  @override
  State<StatefulWidget> createState() => ScaleWidgetState();
}

class ScaleWidgetState extends State<ScaleWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    scaleAnimation = CurvedAnimation(
      parent: controller,
      curve: widget.curve ?? Curves.easeInExpo,
    );
    controller.addListener(() {
      setState(() {});
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            height: widget.height,
            width: widget.width,
            decoration: BoxDecoration(
              color: widget.backgroundColor ?? Colors.white,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
