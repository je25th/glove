import 'package:flutter/material.dart';
import 'package:glove/component/list_item.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        itemCount: 100,
        itemBuilder: (context, index) => ListItem(
          title: 'title_$index',
          sourceUrl: 'figma.com',
          createdAt: DateTime.now(),
        ),
        separatorBuilder: (context, index) => renderDividingLine(),
      ),
    );
  }

  Widget renderDividingLine() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 25.0),
        Divider(thickness: 1.0),
        SizedBox(height: 25.0),
      ],
    );
  }
}
