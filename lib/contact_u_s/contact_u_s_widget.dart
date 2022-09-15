import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactUSWidget extends StatefulWidget {
  const ContactUSWidget({Key? key}) : super(key: key);

  @override
  _ContactUSWidgetState createState() => _ContactUSWidgetState();
}

class _ContactUSWidgetState extends State<ContactUSWidget>
    with TickerProviderStateMixin {
  TextEditingController? messageFieldController;

  TextEditingController? nameFieldController;

  TextEditingController? phoneFieldController;

  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(60, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    messageFieldController = TextEditingController();
    nameFieldController = TextEditingController();
    phoneFieldController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          messageFieldController?.text = FFLocalizations.of(context).getText(
            '49hda9r3' /* Write your message here... */,
          );
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Color(0x28000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Hero(
                                      tag: 'surfLesson',
                                      transitionOnUserGestures: true,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                          'assets/images/IMG-20220629-WA0005a.jpg',
                                          width: 150,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'ewnefccp' /* 
Want to talk with us? */
                                    ,
                                  ),
                                  style: FlutterFlowTheme.of(context).title3,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 5, 5, 0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'js13oxwn' /* Fill in the following form to ... */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Graphik',
                                                useGoogleFonts: false,
                                                lineHeight: 1.3,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ).animated(
                          [animationsMap['containerOnPageLoadAnimation']!]),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 1,
                      decoration: BoxDecoration(),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Form(
                          key: formKey,
                          autovalidateMode: AutovalidateMode.disabled,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 10, 10, 10),
                                child: TextFormField(
                                  controller: nameFieldController,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText:
                                        FFLocalizations.of(context).getText(
                                      'uabyhqs0' /* Full name */,
                                    ),
                                    hintStyle:
                                        FlutterFlowTheme.of(context).bodyText2,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                  validator: (val) {
                                    if (val == null || val.isEmpty) {
                                      return FFLocalizations.of(context)
                                          .getText(
                                        'l3q4pcww' /* Campo obrigatório! */,
                                      );
                                    }

                                    return null;
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 10, 10, 10),
                                child: TextFormField(
                                  controller: phoneFieldController,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText:
                                        FFLocalizations.of(context).getText(
                                      'fvfii6rh' /* Telephone number */,
                                    ),
                                    hintStyle:
                                        FlutterFlowTheme.of(context).bodyText2,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                  keyboardType: TextInputType.phone,
                                  validator: (val) {
                                    if (val == null || val.isEmpty) {
                                      return FFLocalizations.of(context)
                                          .getText(
                                        'ki6iadbi' /* Campo obrigatório! */,
                                      );
                                    }

                                    return null;
                                  },
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 10, 10),
                                      child: TextFormField(
                                        controller: messageFieldController,
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            '3p9xcf65' /* Message */,
                                          ),
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 10, 10, 150),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                        validator: (val) {
                                          if (val == null || val.isEmpty) {
                                            return FFLocalizations.of(context)
                                                .getText(
                                              'lom17iy6' /* Campo obrigatório! */,
                                            );
                                          }

                                          return null;
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 0, 0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          await launchURL(
                                              'https://wa.me/255738926076?text=*Name:*${nameFieldController!.text}*Message:*${messageFieldController!.text}');
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'c20o8y74' /* Send */,
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
                                                fontWeight: FontWeight.w500,
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
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () async {
                            await launchURL(
                                'https://pages.flycricket.io/fay-fashion-tanzania-0/privacy.html');
                          },
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '93s26f0y' /* Privacy Policy */,
                            ),
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Graphik',
                                      color: Colors.black,
                                      useGoogleFonts: false,
                                    ),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            await launchURL(
                                'https://pages.flycricket.io/fay-fashion-tanzania-0/terms.html');
                          },
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '21os1mnk' /* Terms of use */,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Graphik',
                                      color: Colors.black,
                                      useGoogleFonts: false,
                                    ),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            await launchURL(
                                'https://drive.google.com/file/d/13TcghpRbtJX1krZ_QSdg9KZvsKs7swjr/view?usp=sharing');
                          },
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'zexetehr' /* Delete data */,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Graphik',
                                      color: Colors.black,
                                      useGoogleFonts: false,
                                    ),
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
    );
  }
}
