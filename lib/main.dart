import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyApp(),
    );
  }
}


class IframeHtmlView extends StatelessWidget {

  final String htmlContent = '''
    <h1>Welcome to the Iframe View</h1>
    <p>This is an embedded iframe displaying another webpage:</p>
    <iframe src="https://www.example.com" width="100%" height="500" style="border:none;"></iframe>
  ''';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("HTML with Iframe"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: HtmlWidget(
            htmlContent,
            factoryBuilder: () => WidgetFactory(),
          ),
        ),
      ),
    );
  }
}
