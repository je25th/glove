import 'package:flutter/material.dart';
import 'package:glove/component/tag.dart';

class ListItem extends StatelessWidget {
  final String title;
  final String sourceUrl;
  final DateTime createdAt;

  ListItem({
    super.key,
    required this.title,
    required this.sourceUrl,
    required this.createdAt,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title),
        const SizedBox(height: 10.0),
        Text(sourceUrl),
        Container(
          height: 100,
          color: Colors.orange,
          child: Text('123'),
        ),
        Row(
          children: [
            Text(createdAt.toString()),
            Expanded(
              child: SizedBox(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => Tag(
                    tagName: '태그_$index',
                  ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 5.0),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
