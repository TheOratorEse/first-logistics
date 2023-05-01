import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: WebViewApp(url: 'https://api.loading.com'), //api or url of webapp
  ));
}

class WebViewApp extends StatelessWidget {
  final String url;
  WebViewApp({required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fast Logistics"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 102, 173, 231),
              ),
              child: Text(
                'Fast Logistics',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              // onTap: (() {

              //   }),
              leading: Icon(Icons.home_rounded),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.pin_drop_rounded),
              title: Text('Track Package'),
            ),
            ListTile(
              leading: Icon(Icons.people_alt_rounded),
              title: Text('About Us'),
            ),
          ],
        ),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
