import 'package:flutter/material.dart';



class DefaultBackButton extends StatelessWidget {
  const DefaultBackButton({
    Key ?key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios, color: Color(0xFFFF8084)),
      onPressed: () => Navigator.of(context).pop(),
    );
  }
}