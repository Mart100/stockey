import 'dart:ui';

import 'package:stockey/services/tag.dart';
import 'package:stockey/widgets/training_widget.dart';

class Training {
  Image drawing;
  String title;
  String subtitle;
  List<Tag> tags;

  Training({this.title, this.subtitle, this.tags});

  Training_widget getWidget() {
    return Training_widget(
      subtitle: subtitle,
      title: title,
      tags: tags,
    );
  }
}
