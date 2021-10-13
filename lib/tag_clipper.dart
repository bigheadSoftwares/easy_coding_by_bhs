part of 'big_head_softwares.dart';

class TagClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0, size.height);
    double xPosBottom = 0.0;
    double yPosBottom = size.height;
    final double increment = size.width / 2;
    while (xPosBottom < size.width) {
      xPosBottom += increment;
      yPosBottom = yPosBottom == size.height ? size.height - 5 : size.height;
      path.lineTo(xPosBottom, yPosBottom);
    }
    path.lineTo(size.width, 0);
    double xPosTop = size.width;
    double yPosTop = 0;
    final double decrement = size.width / 200;
    while (xPosTop > 0) {
      xPosTop -= decrement;
      yPosTop = yPosTop == 0 ? 15 : 0;
      path.lineTo(xPosTop, yPosTop);
    }
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
