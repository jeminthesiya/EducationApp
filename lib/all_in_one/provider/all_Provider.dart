import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class App_provider extends ChangeNotifier {
  WebViewController? webViewController;

  void initcontriller(int index) {
    webViewController = WebViewController();
    webViewController!.loadRequest(
      Uri.parse("${linkList[index]}"),
    );
  }

  List logoList = [
    "assets/images/Akash.png",
    "assets/images/byjus.png",
    "assets/images/diksha.png",
    "assets/images/doubtnut.png",
    "assets/images/khan.png",
    "assets/images/prep.png",
    "assets/images/pw.png",
    "assets/images/unacademy.png",
    "assets/images/vedantu.png",
  ];

  List linkList = [
    "https://www.aakash.ac.in/",
    "https://byjus.com/",
    "https://diksha.gov.in/",
    "https://www.doubtnut.com/",
    "https://www.khanacademy.org/",
    "https://www.prepladder.com/",
    "https://www.pw.live/",
    "https://unacademy.com/",
    "https://www.vedantu.com/",
  ];
}
