import '../hsbcbancoyfotos/botones.dart';
import '../hsbcbancoyfotos/coloresytemas.dart';
import '../hsbcbancoyfotos/utils.dart';
import 'transferencia.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetallesWidget extends StatefulWidget {
  const DetallesWidget({Key key}) : super(key: key);

  @override
  _DetallesWidgetState createState() => _DetallesWidgetState();
}

class _DetallesWidgetState extends State<DetallesWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: temasycolores.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: botones(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Color(0xFFD40000),
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Detalles',
          style: temasycolores.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Color(0xFFD40000),
              ),
        ),
        actions: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              botones(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 44,
                icon: Icon(
                  Icons.more_vert,
                  color: temasycolores.of(context).secondaryText,
                  size: 24,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ],
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: temasycolores.of(context).primaryBackground,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TransferenciaWidget(),
            ),
          );
        },
        backgroundColor: Color(0xFFD40000),
        elevation: 8,
        child: InkWell(
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TransferenciaWidget(),
              ),
            );
          },
          child: Icon(
            Icons.compare_arrows_sharp,
            color: Colors.white,
            size: 28,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(4, 4, 0, 4),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: temasycolores.of(context)
                                    .secondaryBackground,
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'Ganancias',
                                              style:
                                                  temasycolores.of(context)
                                                      .bodyText2,
                                            ),
                                          ),
                                          Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: Color(0x63D40000),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2, 2, 2, 2),
                                              child: Text(
                                                '^ 25%',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 10,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 0, 0, 8),
                                          child: Text(
                                            '\$6,489.00 MXN',
                                            style: temasycolores.of(context)
                                                .title2
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFFD40000),
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(2, 4, 4, 4),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: temasycolores.of(context)
                                    .secondaryBackground,
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'Ahorros',
                                              style:
                                                  temasycolores.of(context)
                                                      .bodyText2,
                                            ),
                                          ),
                                          Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: Color(0x63D40000),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2, 2, 2, 2),
                                              child: Text(
                                                '^ 25%',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 10,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 0, 0, 8),
                                          child: Text(
                                            '\$13,586.00 MXN',
                                            style: temasycolores.of(context)
                                                .title2
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFFD40000),
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 12),
                          child: Text(
                            'Esta semana',
                            style: temasycolores.of(context).bodyText2,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: temasycolores.of(context)
                                .secondaryBackground,
                            border: Border.all(
                              color: temasycolores.of(context)
                                  .primaryBackground,
                              width: 1,
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 44,
                                  height: 44,
                                  decoration: BoxDecoration(
                                    color: Color(0x4CD25D39),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.trending_down_rounded,
                                    color: temasycolores.of(context)
                                        .tertiaryColor,
                                    size: 24,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12, 0, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '-\$480.51',
                                              style:
                                                  temasycolores.of(context)
                                                      .subtitle1,
                                            ),
                                            Expanded(
                                              child: Text(
                                                'Transferencia',
                                                textAlign: TextAlign.end,
                                                style:
                                                    temasycolores.of(context)
                                                        .bodyText2,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 4, 4, 0),
                                                child: Text(
                                                  'BANCO HSBC',
                                                  style: temasycolores.of(
                                                          context)
                                                      .bodyText2,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: temasycolores.of(context).secondaryBackground,
                        border: Border.all(
                          color: temasycolores.of(context).primaryBackground,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                color: Color(0x4C39D2C0),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.trending_up_outlined,
                                color:
                                    temasycolores.of(context).secondaryColor,
                                size: 24,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '+\$239.20',
                                          style: temasycolores.of(context)
                                              .subtitle1,
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Deposito',
                                            textAlign: TextAlign.end,
                                            style: temasycolores.of(context)
                                                .bodyText2,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 4, 4, 0),
                                            child: Text(
                                              'EMPRESA TRABAJO',
                                              style:
                                                  temasycolores.of(context)
                                                      .bodyText2,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 12),
                          child: Text(
                            'Semana anterior',
                            style: temasycolores.of(context).bodyText2,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: temasycolores.of(context).secondaryBackground,
                        border: Border.all(
                          color: temasycolores.of(context).primaryBackground,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                color: Color(0x4C39D2C0),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.trending_up_outlined,
                                color:
                                    temasycolores.of(context).secondaryColor,
                                size: 24,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '+\$127.20',
                                          style: temasycolores.of(context)
                                              .subtitle1,
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Deposito',
                                            textAlign: TextAlign.end,
                                            style: temasycolores.of(context)
                                                .bodyText2,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 4, 4, 0),
                                            child: Text(
                                              'ING. ALCALDES',
                                              style:
                                                  temasycolores.of(context)
                                                      .bodyText2,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: temasycolores.of(context).secondaryBackground,
                        border: Border.all(
                          color: temasycolores.of(context).primaryBackground,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                color: Color(0x4C39D2C0),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.trending_up_outlined,
                                color:
                                    temasycolores.of(context).secondaryColor,
                                size: 24,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '+\$4,849.29',
                                          style: temasycolores.of(context)
                                              .subtitle1,
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Deposito',
                                            textAlign: TextAlign.end,
                                            style: temasycolores.of(context)
                                                .bodyText2,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 4, 4, 0),
                                            child: Text(
                                              'DR. ALVARADO',
                                              style:
                                                  temasycolores.of(context)
                                                      .bodyText2,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
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
          ],
        ),
      ),
    );
  }
}
