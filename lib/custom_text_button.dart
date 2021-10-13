part of 'big_head_softwares.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.text,
    this.buttonColor,
    this.textColor,
    required this.onTap,
    this.isLoading = false,
    this.width,
    this.elevation,
    this.borderColor,
    this.borderWidth,
    this.radius,
    this.backgroundColor,
    this.padding,
    this.fontSize,
  }) : super(key: key);
  final String? text;
  final Color? buttonColor;
  final Color? textColor;
  final VoidCallback? onTap;
  final bool isLoading;
  final double? width;
  final double? elevation;
  final Color? borderColor;
  final double? borderWidth;
  final double? radius;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? screenWidth(context),
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(elevation ?? 0),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              side: BorderSide(
                color: borderColor ?? Colors.transparent,
                width: borderWidth ?? 0,
              ),
              borderRadius: BorderRadius.circular(radius ?? 0.0),
            ),
          ),
          padding: MaterialStateProperty.all(padding ??const EdgeInsets.all(12)),
          backgroundColor: MaterialStateProperty.all(
              backgroundColor ?? primaryColor(context)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            if (isLoading)
              const SizedBox(
                height: 22,
                width: 22,
                child: CircularProgressIndicator(strokeWidth: 1.5),
              ),
            if (isLoading) sizedBoxWidth(10),
            Text(
              text!,
              style: TextStyle(
                color: textColor ?? Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: fontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
