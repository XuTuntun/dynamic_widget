

import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class AspectRatioWidgetParser extends WidgetParser{
  @override
  bool forWidget(String widgetName) {
    return "AspectRatio" == widgetName;
  }

  @override
  Widget parse(Map<String, dynamic> map, ClickListener listener){
    return AspectRatio(
      aspectRatio: map["aspectRatio"],
      child: DynamicWidgetBuilder.buildFromMap(map["child"], listener),
    );
  }

}