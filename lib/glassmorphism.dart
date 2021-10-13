part of 'big_head_softwares.dart';

extension Glassmorphism on Widget {
  Container glassmorphism({
    /// [frostValue] is the value to detemine the frostiness of the widget that it is used on
    /// Lower the frost value higher the glassiness
    double frostValue = 16,

    /// [blurRadius] is the for the shadow cast by the [glassmorphism]
    /// Note: if you don't want any kind of [blurRadius] just set [boxShadow] to false
    double blurRadius = 0.0,

    /// [frostColor] is just the color of the glass effect by defaut it is [Colors.grey.shade400.withOpacity(0.2)]
    Color? frostColor,

    /// [boxShadow] takes bool as a value in order to show the shadow or not by default it is [true]
    bool boxShadow = true,

    /// [shadowColor] as the name suggest it is color of shadow which comes with the galss effect
    Color? shadowColor,

    double? borderRadius,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(
        // horizontal: horizontalMargin,
        // vertical: verticalMargin,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: frostValue, sigmaY: frostValue),
          child: Container(
            padding: EdgeInsets.symmetric(
              // horizontal: horizontalPadding,
              // vertical: verticalPadding,
            ),
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                if (boxShadow)
                  BoxShadow(
                    color: Colors.white.withOpacity(0.2),
                    blurRadius: blurRadius,
                  ),
                if (boxShadow)
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: blurRadius,
                  ),
              ],
              color: frostColor ?? Colors.grey.shade400.withOpacity(0.2),
            ),
            child: this,
          ),
        ),
      ),
    );
  }
}
