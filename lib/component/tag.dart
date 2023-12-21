import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final String tagName;

  const Tag({
    super.key,
    required this.tagName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.0,
      decoration: const BoxDecoration(
        color: Colors.indigoAccent,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Text(tagName),
    );
  }
}
