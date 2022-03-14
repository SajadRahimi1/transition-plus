import 'package:flutter/material.dart';
import 'package:transition_plus/src/enums/scale_transition_type.dart';

class ScaleTransition1 extends PageRouteBuilder {
  /// page that you want to navigate
  final Widget page;

  /// type of the transition that default is center
  final ScaleTrasitionTypes type;

  /// trasitions duration from start that default is 1 second
  final Duration startDuration;

  /// trasitions duration when you close [page] that default is 200 milliseconds
  final Duration closeDuration;

  ScaleTransition1(
      {required this.page,
      this.type = ScaleTrasitionTypes.center,
      this.startDuration = const Duration(seconds: 1),
      this.closeDuration = const Duration(milliseconds: 200)})
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: startDuration,
          reverseTransitionDuration: closeDuration,
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            switch (type) {
              case ScaleTrasitionTypes.bottom:
                animation = CurvedAnimation(
                    curve: Curves.fastLinearToSlowEaseIn,
                    parent: animation,
                    reverseCurve: Curves.fastOutSlowIn);
                return ScaleTransition(
                  alignment: Alignment.bottomCenter,
                  scale: animation,
                  child: child,
                );
              case ScaleTrasitionTypes.top:
                animation = CurvedAnimation(
                    curve: Curves.fastLinearToSlowEaseIn,
                    parent: animation,
                    reverseCurve: Curves.fastOutSlowIn);
                return ScaleTransition(
                  alignment: Alignment.topCenter,
                  scale: animation,
                  child: child,
                );
              case ScaleTrasitionTypes.bottomLeft:
                animation = CurvedAnimation(
                    curve: Curves.fastLinearToSlowEaseIn,
                    parent: animation,
                    reverseCurve: Curves.fastOutSlowIn);
                return ScaleTransition(
                  alignment: Alignment.bottomLeft,
                  scale: animation,
                  child: child,
                );
              case ScaleTrasitionTypes.bottomRight:
                animation = CurvedAnimation(
                    curve: Curves.fastLinearToSlowEaseIn,
                    parent: animation,
                    reverseCurve: Curves.fastOutSlowIn);
                return ScaleTransition(
                  alignment: Alignment.bottomRight,
                  scale: animation,
                  child: child,
                );
              case ScaleTrasitionTypes.center:
                animation = CurvedAnimation(
                    curve: Curves.fastLinearToSlowEaseIn,
                    parent: animation,
                    reverseCurve: Curves.fastOutSlowIn);
                return ScaleTransition(
                  alignment: Alignment.center,
                  scale: animation,
                  child: child,
                );
              case ScaleTrasitionTypes.right:
                animation = CurvedAnimation(
                    curve: Curves.fastLinearToSlowEaseIn,
                    parent: animation,
                    reverseCurve: Curves.fastOutSlowIn);
                return ScaleTransition(
                  alignment: Alignment.centerRight,
                  scale: animation,
                  child: child,
                );
              case ScaleTrasitionTypes.left:
                animation = CurvedAnimation(
                    curve: Curves.fastLinearToSlowEaseIn,
                    parent: animation,
                    reverseCurve: Curves.fastOutSlowIn);
                return ScaleTransition(
                  alignment: Alignment.centerLeft,
                  scale: animation,
                  child: child,
                );
            }
          },
        );
}
