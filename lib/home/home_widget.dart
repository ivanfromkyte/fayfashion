import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_static_map.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/lat_lng.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapbox_search/mapbox_search.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.4,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).gray10,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2,
                            color: Color(0x33808C9E),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).gray08,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 5,
                                            color: Color(0x1A2A323F),
                                            spreadRadius: 1,
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(10),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(60),
                                        child: Image.asset(
                                          'assets/images/FayFashion.jpg',
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              1,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 0, 10),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 5, 0, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'go2qljjd' /* Top quality leather products */,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Graphik',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Stack(
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () async {
                                              await launchURL(
                                                  'https://api.whatsapp.com/send?phone=255738926076');
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              '16fo4tkz' /* Whatsapp */,
                                            ),
                                            options: FFButtonOptions(
                                              width: 120,
                                              height: 36,
                                              color: Color(0xFFFF006E),
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText2
                                                  .override(
                                                    fontFamily: 'Graphik',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                              elevation: 0,
                                              borderSide: BorderSide(
                                                width: 0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 0, 0),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30,
                                          borderWidth: 1,
                                          buttonSize: 44,
                                          icon: Icon(
                                            FFIcons.kphoneIcon,
                                            color: FlutterFlowTheme.of(context)
                                                .gray01,
                                            size: 24,
                                          ),
                                          onPressed: () async {
                                            await launchURL(
                                                'tel://255738926076');
                                          },
                                        ),
                                      ),
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30,
                                        borderWidth: 1,
                                        buttonSize: 44,
                                        icon: Icon(
                                          FFIcons.kinstagramIcon2,
                                          color: FlutterFlowTheme.of(context)
                                              .gray01,
                                          size: 24,
                                        ),
                                        onPressed: () async {
                                          await launchURL(
                                              'https://www.instagram.com/fayfashiontz/');
                                        },
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 0, 0, 0),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30,
                                          borderWidth: 1,
                                          buttonSize: 44,
                                          icon: Icon(
                                            FFIcons.kyoutubeIcon,
                                            color: FlutterFlowTheme.of(context)
                                                .gray01,
                                            size: 24,
                                          ),
                                          onPressed: () async {
                                            await launchURL(
                                                'https://www.youtube.com/channel/UCAxkPP0cC9RuV5DOkUV5nkQ');
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 0, 0, 0),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30,
                                          borderWidth: 1,
                                          buttonSize: 44,
                                          icon: Icon(
                                            FFIcons.ktipIcon,
                                            color: FlutterFlowTheme.of(context)
                                                .gray01,
                                            size: 24,
                                          ),
                                          onPressed: () async {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    NavBarPage(
                                                        initialPage:
                                                            'contactUS'),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 7,
                            color: Color(0x2F1D2429),
                            offset: Offset(0, 3),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 15, 10, 10),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'k1q152hr' /* About us */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Graphik',
                                        color: Color(0xFFFF006E),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        useGoogleFonts: false,
                                      ),
                                ),
                                Divider(
                                  height: 16,
                                  thickness: 2,
                                  color: Color(0xFFF1F4F8),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 10),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEEEEEE),
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset(
                                        'assets/images/1660227620461.jpg',
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                1,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 5),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '6cy0c3j6' /* Proudly Made in Tanzania */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Graphik',
                                          color: Color(0xFF101213),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: false,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 5),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'e0a3abwq' /* Fay Fashion Products carries t... */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          fontFamily: 'Graphik',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 0, 10),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => NavBarPage(
                                                  initialPage: 'menu'),
                                            ),
                                          );
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'unifax2x' /* Make an order */,
                                        ),
                                        options: FFButtonOptions(
                                          width: 130,
                                          height: 40,
                                          color: Color(0xFFFF006E),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Graphik',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
                                              ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '0f7c6fkg' /* Business hours */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Graphik',
                                        color: Color(0xFFFF006E),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        useGoogleFonts: false,
                                      ),
                                ),
                                Divider(
                                  height: 16,
                                  thickness: 2,
                                  color: Color(0xFFF1F4F8),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 5),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'ah0c9lur' /* Monday to Friday:  9am - 5pm

... */
                                      ,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          fontFamily: 'Graphik',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                          lineHeight: 1.3,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'dtqm98zb' /* 
Where we are */
                                    ,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Graphik',
                                        color: Color(0xFFFF006E),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        useGoogleFonts: false,
                                      ),
                                ),
                                Divider(
                                  height: 16,
                                  thickness: 2,
                                  color: Color(0xFFF1F4F8),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 5),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'eik0cf4u' /* Bunju B Opposite BAF Oil Stati... */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          fontFamily: 'Graphik',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                          lineHeight: 1.3,
                                        ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    await launchURL(
                                        'https://g.page/fayfashiontz?share');
                                  },
                                  child: FlutterFlowStaticMap(
                                    location: LatLng(
                                        -6.6284009958168655, 39.09257494135522),
                                    apiKey:
                                        'pk.eyJ1Ijoia3l0ZWFwcCIsImEiOiJjbDVzcGRwOGQwYm42M2ttdTB5djc1N2NkIn0.CULOROboVk4w8bSx6EGJ2Q',
                                    style: MapBoxStyle.Streets,
                                    width: MediaQuery.of(context).size.width,
                                    height: 300,
                                    fit: BoxFit.cover,
                                    borderRadius: BorderRadius.circular(0),
                                    markerColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    zoom: 15,
                                    tilt: 0,
                                    rotation: 90,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
