// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomWebview extends StatefulWidget {
  const CustomWebview({
    Key? key,
    required this.url,
    this.width,
    this.height,
    this.bypass = false,
    this.horizontalScroll = false,
    this.verticalScroll = false,
    this.userAgent = 'random',
  }) : super(key: key);

  final bool bypass;
  final bool horizontalScroll;
  final bool verticalScroll;
  final double? height;
  final double? width;
  final String url;
  final String userAgent;

  @override
  _CustomWebviewState createState() => _CustomWebviewState();
}

class _CustomWebviewState extends State<CustomWebview> {
  @override
  Widget build(BuildContext context) => WebViewX(
        key: webviewKey,
        width: widget.width ?? MediaQuery.of(context).size.width,
        height: widget.height ?? MediaQuery.of(context).size.height,
        ignoreAllGestures: false,
        initialContent: widget.url,
        userAgent: widget.userAgent,
        initialMediaPlaybackPolicy:
            AutoMediaPlaybackPolicy.requireUserActionForAllMediaTypes,
        initialSourceType:
            widget.bypass ? SourceType.urlBypass : SourceType.url,
        javascriptMode: JavascriptMode.unrestricted,
        webSpecificParams: const WebSpecificParams(
          webAllowFullscreenContent: true,
        ),
        mobileSpecificParams: MobileSpecificParams(
          debuggingEnabled: false,
          gestureNavigationEnabled: true,
          mobileGestureRecognizers: {
            if (widget.verticalScroll)
              Factory<VerticalDragGestureRecognizer>(
                () => VerticalDragGestureRecognizer(),
              ),
            if (widget.horizontalScroll)
              Factory<HorizontalDragGestureRecognizer>(
                () => HorizontalDragGestureRecognizer(),
              ),
          },
          androidEnableHybridComposition: true,
        ),
      );

  Key get webviewKey => Key(
        [
          widget.url,
          widget.width,
          widget.height,
          widget.bypass,
          widget.horizontalScroll,
          widget.verticalScroll,
        ].map((s) => s?.toString() ?? '').join(),
      );
}
