// Use this file to provide metadata about your project

import 'package:plugins/plugin.dart';
import 'dart:isolate';
import 'src/template_data.dart';

void main(List<String> args, SendPort port) {
  Receiver rec = new Receiver(port);
  rec.listen((Map<dynamic, dynamic> data) {
    Map stagehandTemplateData = new Map();
    stagehandTemplateData['info'] = "Change This"; 
    stagehandTemplateData['description'] = "This will show up in stagehand generators list"; // Helpful short intro about the template
    stagehandTemplateData['entrypoint'] = "web/index.html"; //Provide a valid entry point for the application
    stagehandTemplateData['help'] = "to run your app, use 'pub serve'"; //Use this to provide additional instructions for your template
    stagehandTemplateData['data'] = templateData;
    rec.send(stagehandTemplateData);
  });
}
