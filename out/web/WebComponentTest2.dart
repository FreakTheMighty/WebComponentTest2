// Auto-generated from WebComponentTest2.html.
// DO NOT EDIT.

library WebComponentTest2_html;

import 'dart:html' as autogenerated_html;
import 'dart:web_audio' as autogenerated_audio;
import 'dart:svg' as autogenerated_svg;
import 'package:web_components/web_components.dart' as autogenerated;

import 'dart:html';


// Original code
void main() {
  var dataValue = "Jesse";
  query("#text")
    ..text = "Click me!"
    ..on.click.add(reverseText);
}

void reverseText(Event event) {
  var text = query("#text").text;
  var buffer = new StringBuffer();
  for (int i = text.length - 1; i >= 0; i--) {
    buffer.add(text[i]);
  }
  query("#text").text = buffer.toString();
}


// Additional generated code
/** Create the views and bind them to models. */
void init_autogenerated() {
  var _root = autogenerated_html.document.body;
  autogenerated_html.DivElement __container;
  
  autogenerated_html.DivElement __e1;
  
  var __binding0;
  
  List<autogenerated.WatcherDisposer> __stoppers1;
  
  autogenerated_html.ParagraphElement __text;
  


  // Initialize fields.
  __container = _root.query('#container');
  __e1 = __container.query('#__e-1');
  __binding0 = new autogenerated_html.Text('');
  __stoppers1 = [];
  __e1.nodes.add(new autogenerated_html.Text('Hello '));
  __e1.nodes.add(__binding0);
  __e1.nodes.add(new autogenerated_html.Text('!'));
  __text = __container.query('#text');
  

  // Attach model to views.
  __stoppers1.add(autogenerated.watchAndInvoke(() => '${dataValue}', (__e) {
    __binding0 = autogenerated.updateBinding(dataValue, __binding0, __e.newValue);
  }));
  

}
