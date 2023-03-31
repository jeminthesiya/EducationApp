import 'package:all_in_one/all_in_one/provider/all_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Link_Screen extends StatefulWidget {
  const Link_Screen({Key? key}) : super(key: key);

  @override
  State<Link_Screen> createState() => _Link_ScreenState();
}

class _Link_ScreenState extends State<Link_Screen> {
  App_provider? Ptrue;
  App_provider? Pfalse;

  @override
  Widget build(BuildContext context) {
    Ptrue = Provider.of<App_provider>(context, listen: true);
    Pfalse = Provider.of<App_provider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        body: WebViewWidget(controller: Pfalse!.webViewController!),
      ),
    );
  }
}
