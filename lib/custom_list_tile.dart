part of 'big_head_softwares.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    this.onTap,
    this.leading,
    this.title,
    this.subtitle,
    this.description,
    this.trailing,
    this.trailingTop,
    this.trailingBottom,
    this.tileAlignment,
    this.mainAxisSize,
    this.backgroundColor,
    this.borderRadius,
    this.contentPadding,
    this.spaceBetweenLeadingAndTitle,
    this.spaceBetweenTrailingAndTitle,
    this.spaceBetweenTitleAndSubtitle,
    this.titleAndSubtitleAlignment,
    this.descriptionPadding,
    this.splashColor,
  }) : super(key: key);

  ///A function which will be triggered on tapping the `CustomListTile`
  final Function()? onTap;

  ///A Widget which will be displayed in the leading of the `CustomListTile`
  final Widget? leading;

  ///A Widget which will be displayed in the title of the `CustomListTile`
  final Widget? title;

  ///A Widget which will be displayed in the subtitle of the `CustomListTile`
  final Widget? subtitle;

  ///A Widget which will be displayed in the description of the `CustomListTile`
  final Widget? description;

  ///A Widget which will be displayed in the center trailing of the `CustomListTile`
  final Widget? trailing;

  ///A Widget which will be displayed in the top of trailing of the `CustomListTile`
  final Widget? trailingTop;

  ///A Widget which will be displayed in the bottom of trailing of the `CustomListTile`
  final Widget? trailingBottom;

  ///The `alignment` with which the `leading, texts and trailing` would be aligned.
  final CrossAxisAlignment? tileAlignment;

  ///The `mainAxisSize` of the List Tile.
  final MainAxisSize? mainAxisSize;

  final Color? backgroundColor;
  final double? borderRadius;
  final EdgeInsetsGeometry? contentPadding;
  final double? spaceBetweenLeadingAndTitle;
  final double? spaceBetweenTrailingAndTitle;
  final double? spaceBetweenTitleAndSubtitle;
  final CrossAxisAlignment? titleAndSubtitleAlignment;
  final EdgeInsetsGeometry? descriptionPadding;
  final Color? splashColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: splashColor,
      child: Container(
        padding: contentPadding ?? EdgeInsets.zero,
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.transparent,
          borderRadius: BorderRadius.circular(borderRadius ?? 0.0),
        ),
        child: Column(
          crossAxisAlignment: tileAlignment ?? CrossAxisAlignment.start,
          mainAxisSize: mainAxisSize ?? MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ///This is the `leading` of the `CustomListTile`
                ConstrainedBox(
                  constraints:
                      const BoxConstraints(maxHeight: 200, maxWidth: 200),
                  child: leading ?? const SizedBox.shrink(),
                ),
                sizedBoxWidth(
                  spaceBetweenLeadingAndTitle ?? screenWidth(context) * 0.02,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        titleAndSubtitleAlignment ?? CrossAxisAlignment.start,
                    children: <Widget>[
                      ///This is the `title` of the `CustomListTile`
                      title ?? const SizedBox.shrink(),
                      sizedBoxHeight(spaceBetweenTitleAndSubtitle ?? 0),
                      ///This is the `subtitle` of the `CustomListTile`
                      subtitle ?? const SizedBox.shrink(),
                    ],
                  ),
                ),
                sizedBoxWidth(spaceBetweenTrailingAndTitle ??
                    screenWidth(context) * 0.02),

                ///This is the `trailing` of the `CustomListTile`
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    trailingTop ?? const SizedBox.shrink(),
                    sizedBoxHeight(screenHeight(context) * 0.005),
                    trailing ?? const SizedBox.shrink(),
                    sizedBoxHeight(screenHeight(context) * 0.005),
                    trailingBottom ?? const SizedBox.shrink()
                  ],
                )
              ],
            ),

            ///This is the `description` of the `CustomListTile`
            if (description == null)
              const SizedBox.shrink()
            else
              Padding(
                padding:descriptionPadding ??EdgeInsets.zero,
                child: description ?? const SizedBox.shrink(),
              ),
          ],
        ),
      ),
    );
  }
}
