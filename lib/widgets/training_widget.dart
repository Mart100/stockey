import 'package:flutter/material.dart';
import 'package:stockey/services/tag.dart';

class Training_widget extends StatefulWidget {
  final String title;
  final String subtitle;
  final List<Tag> tags;

  const Training_widget({
    Key key,
    this.title,
    this.subtitle,
    this.tags,
  }) : super(key: key);

  @override
  _Training_widget_state createState() => _Training_widget_state();
}

class _Training_widget_state extends State<Training_widget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title),
      subtitle: Text(widget.subtitle),
    );
  }
}
