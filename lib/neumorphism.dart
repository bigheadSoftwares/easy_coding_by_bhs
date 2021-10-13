part of 'big_head_softwares.dart';


/// [neumophism] can be used on any widget that you desire but it is best suited to use on [RoundContainer]
extension OuterNeumorphism on Widget {
  Widget neumorphism({

    /// By changing the [offset] the direction of neumorphism shadow will change
    Offset offset = const Offset(5, 5),

    /// [blurRadius] is the value to define the extned of bluriness on the shadow
    double blurRadius = 10,

    /// [topShadowColor] is the starting color on neumorphism
    Color topShadowColor = Colors.white60,

    /// [bottomShadowColor] is the end color on neumorphism
    Color bottomShadowColor = const Color(0x266A7183),
  }) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: offset,
            blurRadius: blurRadius,
            color: bottomShadowColor,
          ),
          BoxShadow(
            offset: Offset(-offset.dx, -offset.dx),
            blurRadius: blurRadius,
            color: topShadowColor,
          ),
        ],
      ),
      child: this,
    );
  }
}
