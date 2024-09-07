import 'package:flutter/material.dart';

class ContextUtility {
  static final GlobalKey<NavigatorState> _navigatorakey = GlobalKey<NavigatorState>();

  static GlobalKey<NavigatorState> get navigatorKey => _navigatorakey;

  static NavigatorState? get currentState => _navigatorakey.currentState;

  static BuildContext? get context => _navigatorakey.currentContext;
}
