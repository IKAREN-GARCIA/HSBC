import '../hsbcbancoyfotos/botones.dart';
import '../hsbcbancoyfotos/coloresytemas.dart';
import '../hsbcbancoyfotos/utils.dart';
import 'iniciosesion.dart';
import 'perfil.dart';
import 'transacciones.dart';
import 'transferencia.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InicioWidget extends StatefulWidget {
  const InicioWidget({Key key}) : super(key: key);

  @override
  _InicioWidgetState createState() => _InicioWidgetState();
}

class _InicioWidgetState extends State<InicioWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: temasycolores.of(context).primaryBtnText,
        automaticallyImplyLeading: false,
        title: Align(
          alignment: AlignmentDirectional(-1, 0),
          child: Image.asset(
            'assets/images/2560px-HSBC_logo_(2018).svg.png',
            width: 100,
            height: 100,
            fit: BoxFit.contain,
          ),
        ),
        actions: [
          botones(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.login,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => IniciosesionWidget(),
                ),
              );
            },
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: temasycolores.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0, -1),
                  child: Container(
                    width: 400,
                    height: 550,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.92, 0.2),
                          child: Container(
                            width: 400,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-0.88, 0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                      'assets/images/img_tdc_premier_black.jpg',
                                      width: 100,
                                      height: 70,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.8, 0.4),
                                  child: Text(
                                    '\$280,000.00 MXN',
                                    style: temasycolores.of(context).bodyText1,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.15, -0.25),
                                  child: Text(
                                    '**** 4567',
                                    style: temasycolores.of(context).bodyText1,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.25, -0.77),
                                  child: Text(
                                    'HSBC Premier Wolrd Elite',
                                    style: temasycolores.of(context).bodyText1,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.99, -1),
                                  child: botones(
                                    borderColor: Colors.transparent,
                                    borderRadius: 30,
                                    borderWidth: 1,
                                    buttonSize: 60,
                                    icon: Icon(
                                      Icons.compare_arrows_rounded,
                                      color: Color(0xFFD40000),
                                      size: 30,
                                    ),
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              TransferenciaWidget(),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.88, -0.98),
                          child: Text(
                            'Hola! Karen',
                            style: temasycolores.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.8, -0.84),
                          child: Text(
                            'Tus tarjetas de crédito',
                            style: temasycolores.of(context).bodyText1,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.92, -0.7),
                          child: Container(
                            width: 400,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-0.88, 0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                      'assets/images/img_cta_tdd.jpg',
                                      width: 100,
                                      height: 70,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.8, 0.4),
                                  child: Text(
                                    '\$80,000.00 MXN',
                                    style: temasycolores.of(context).bodyText1,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.15, -0.25),
                                  child: Text(
                                    '**** 4567',
                                    style: temasycolores.of(context).bodyText1,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.2, -0.77),
                                  child: Text(
                                    'HSBC Advance Platinum',
                                    style: temasycolores.of(context).bodyText1,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.99, -1),
                                  child: botones(
                                    borderColor: Colors.transparent,
                                    borderRadius: 30,
                                    borderWidth: 1,
                                    buttonSize: 60,
                                    icon: Icon(
                                      Icons.compare_arrows_rounded,
                                      color: Color(0xFFD40000),
                                      size: 30,
                                    ),
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              TransferenciaWidget(),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.92, -0.25),
                          child: Container(
                            width: 400,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-0.88, 0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                      'assets/images/img_tdc_basica.jpg',
                                      width: 100,
                                      height: 70,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.8, 0.4),
                                  child: Text(
                                    '\$40,000.00 MXN',
                                    style: temasycolores.of(context).bodyText1,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.15, -0.25),
                                  child: Text(
                                    '**** 4567',
                                    style: temasycolores.of(context).bodyText1,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, -0.77),
                                  child: Text(
                                    'HSBC  Basic Credit',
                                    style: temasycolores.of(context).bodyText1,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.99, -1),
                                  child: botones(
                                    borderColor: Colors.transparent,
                                    borderRadius: 30,
                                    borderWidth: 1,
                                    buttonSize: 60,
                                    icon: Icon(
                                      Icons.compare_arrows_rounded,
                                      color: Color(0xFFD40000),
                                      size: 30,
                                    ),
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              TransferenciaWidget(),
                                        ),
                                      );
                                    },
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
              Container(
                width: 400,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    botones(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.home_outlined,
                        color: Color(0xFFD40000),
                        size: 30,
                      ),
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                            reverseDuration: Duration(milliseconds: 0),
                            child: InicioWidget(),
                          ),
                        );
                      },
                    ),
                    botones(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.compare_arrows,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                            reverseDuration: Duration(milliseconds: 0),
                            child: TransferenciaWidget(),
                          ),
                        );
                      },
                    ),
                    botones(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.history,
                        color: Colors.black,
                        size: 25,
                      ),
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                            reverseDuration: Duration(milliseconds: 0),
                            child: TransaccionesWidget(),
                          ),
                        );
                      },
                    ),
                    botones(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.person_outline_sharp,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                            reverseDuration: Duration(milliseconds: 0),
                            child: PerfilWidget(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
