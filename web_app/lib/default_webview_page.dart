import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DefaultWebViewPage extends StatefulWidget {
  DefaultWebViewPage({Key key, this.url}) : super(key: key);

  final String url;

  @override
  _DefaultWebViewPageState createState() => _DefaultWebViewPageState();
}

class _DefaultWebViewPageState extends State<DefaultWebViewPage> {
  String webTitle="";

  ///
  /// UI
  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SafeArea(child: _buildWebView(), bottom: true),
      resizeToAvoidBottomInset: false,
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
        leading: BackButton(),
        title: Text(
          webTitle,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(51, 51, 51, 1),
          ),
        ));
  }

  bool isLoading = true;

  Widget _buildWebView() {
    return WebView(
      initialUrl: _fullUrl(),
      javascriptMode: JavascriptMode.unrestricted,
    );
  }

  String _fullUrl() {
    String oriUrl = widget.url;
    print("url-------$oriUrl");
    //oriUrl = "https://test-mqc.to8to.com/#/discount-demand?appName=dsp-app&comid=6881&id=6881&uid=61114&ticket=RrvzarJAWEb8hGCB4d5uAPofl3h3BfXO_mAICmVr6T9G6Ri82uu23qvgx9-cJ-mdX-vDyLDLrpa631A3LHm3kdisYwaEhMZDjNbsK4MFqr7ui_Y0ZY1PeeWe-NlStzQy&appVersion=4.25.0&appType=1";
    return oriUrl;
  }
}
