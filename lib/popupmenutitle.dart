library popupmenutitle;

import 'package:flutter/material.dart';

class PopUpMenuTitle<T> extends PopupMenuEntry<T> {
  final Widget child;
  const PopUpMenuTitle({
    required this.child,
    super.key,
  });

  @override
  double get height => kMinInteractiveDimension;

  @override
  bool represents(T? value) => false;

  @override
  State<StatefulWidget> createState() => _PopupMenuTitleState();
}

class _PopupMenuTitleState extends State<PopUpMenuTitle> {
  @override
  Widget build(BuildContext context) => widget.child;
}
