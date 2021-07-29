part of 'big_head_softwares.dart';

/// To push another screen on the stack use [push] and pass the [context],[Screen]/[Page]/[Widget]
/// To push a named or onGenerate route please use [pushNamed] and pass the [context],[Route],[arguments] if any
Future<Widget?> push(BuildContext context, Widget route) => Navigator.push(
      context,
      MaterialPageRoute<Widget>(
        builder: (_) => route,
      ),
    );

/// To replace screen on to the stack use [pushReplacement] and pass the [context],[Screen]/[Page]/[Widget]
/// To replace a named or onGenerate route please use [pushReplacementNamed] and pass the [context],[Route],[arguments] if any
Future<Widget?> pushReplacement(BuildContext context, Widget route) =>
    Navigator.pushReplacement(
      context,
      MaterialPageRoute<Widget>(
        builder: (_) => route,
      ),
    );

/// To clear the stack and push a screen use [pushAndRemoveUntil] and pass the [context],[Screen]/[Page]/[Widget]
/// To clear the stack and push a named or onGenerate please use [pushNamedAndRemoveUntil] and pass the [context],[Route],[arguments] if any
Future<Widget?> pushAndRemoveUntil(BuildContext context, Widget screen) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute<Widget>(builder: (_) => screen),
      (Route<dynamic> route) => false,
    );

/// To push a named or onGenerate route please use [pushNamed] and pass the [context],[Route],[arguments] if any
Future<T?> pushNamed<T extends Object?>(BuildContext context, String route,
        {Object? arguments}) =>
    Navigator.pushNamed(
      context,
      route,
      arguments: arguments,
    );

/// To replace a named or onGenerate route please use [pushReplacementNamed] and pass the [context],[Route],[arguments] if any
Future<T?> pushReplacementNamed<T extends Object?>(
        BuildContext context, String route,
        {Object? arguments}) =>
    Navigator.pushReplacementNamed(
      context,
      route,
      arguments: arguments,
    );

/// To clear the stack and push a named or onGenerate please use [pushNamedAndRemoveUntil] and pass the [context],[Route],[arguments] if any
Future<T?> pushNamedAndRemoveUntil<T extends Object?>(
        BuildContext context, String route,
        {Object? arguments}) =>
    Navigator.pushNamedAndRemoveUntil(
      context,
      route,
      (Route<dynamic> route) => false,
      arguments: arguments,
    );

/// To pop any screen use [pop] and pass the [context] as argument
void pop(BuildContext context) => Navigator.pop(context);
