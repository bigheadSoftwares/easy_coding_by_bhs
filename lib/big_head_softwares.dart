library big_head_softwares;

import 'dart:ui';

import 'package:flutter/material.dart';

part 'navigation.dart';
part 'round_container.dart';
part 'glassmorphism.dart';
part 'capitalize.dart';
part 'neumorphism.dart';

/// [screenHeight] provides the current screen height.
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

/// [screenWidth] provides the current screen width.
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

/// [screenPaddingTop] provides the current screen padding from the top
double screenPaddingTop(BuildContext context) =>
    MediaQuery.of(context).padding.top;

/// [screenPaddingBottom] provides the screen padding from the bottom
double screenPaddingBottom(BuildContext context) =>
    MediaQuery.of(context).padding.bottom;

/// [screenPaddingRight] provides the screen padding from the right
double screenPaddingRight(BuildContext context) =>
    MediaQuery.of(context).padding.right;

/// [screenPaddingLeft] provides the screen padding from the left
double screenPaddingLeft(BuildContext context) =>
    MediaQuery.of(context).padding.left;

/// [theme] is called to access all the theme data.
/// Note: if you want to use textTheme from in theme data prefer [textTheme]
/// if you want to use primary color you can call [primaryColor] same as for [accentColor] and [scaffoldColor]
ThemeData theme(BuildContext context) => Theme.of(context);

/// [textTheme] this will help you to access any predefined text themes
TextTheme textTheme(BuildContext context) => Theme.of(context).textTheme;

/// [primaryColor] gives access to primary color of theme
Color primaryColor(BuildContext context) => Theme.of(context).primaryColor;

/// [accentColor] gives access to accent color of theme
Color accentColor(BuildContext context) => Theme.of(context).accentColor;

/// [scaffoldColor] gives access to scaffold color of theme
Color scaffoldColor(BuildContext context) =>
    Theme.of(context).scaffoldBackgroundColor;

/// [sizedBoxHeight] helps you to create a space between to widgets vertically just pass any double value as the parameter
/// Note: No child widget can be provided to this sizedBoxHeight. if you want to use child widget please refer to [SizedBox]
SizedBox sizedBoxHeight(double height) => SizedBox(height: height);

/// [sizedBoxHeight] helps you to create a space between to widgets horizontally just pass any double value as the parameter
/// Note: No child widget can be provided to this sizedBoxWidth
/// . if you want to use child widget please refer to [SizedBox]
SizedBox sizedBoxWidth(double width) => SizedBox(width: width);

/// [radius] helps to replace [BorderRadius.circular(double)] to [radius(double)] 
BorderRadius radius(double radius) => BorderRadius.circular(radius);
