import '../hsbcbancoyfotos/tarjetacredito.dart';
import '../hsbcbancoyfotos/botones.dart';
import '../hsbcbancoyfotos/opciones.dart';
import '../hsbcbancoyfotos/coloresytemas.dart';
import '../hsbcbancoyfotos/utils.dart';
import '../hsbcbancoyfotos/widgets.dart';
import 'inicio.dart';
import 'iniciosesion.dart';
import 'perfil.dart';
import 'transacciones.dart';
import 'transfer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransferenciaWidget extends StatefulWidget {
  const TransferenciaWidget({Key key}) : super(key: key);

  @override
  _TransferenciaWidgetState createState() => _TransferenciaWidgetState();
}

class _TransferenciaWidgetState extends State<TransferenciaWidget> {
  String radioButtonValue;
  final creditCardFormKey = GlobalKey<FormState>();
  CreditCardModel creditCardInfo = emptyCreditCard();
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
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color(0xFFF1F4F8),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.88, -0.98),
                          child: Text(
                            'Transferencias Bacarias',
                            style:
                                temasycolores.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.8, 1),
                          child: opciones(
                            options: [
                              'HSBC Advance Platinum',
                              'HSBC Premier World Elite',
                              'HSBC Basic Credit'
                            ].toList(),
                            onChanged: (value) {
                              setState(() => radioButtonValue = value);
                            },
                            optionHeight: 30,
                            textStyle:
                                temasycolores.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.vertical,
                            radioButtonColor: Color(0xFFD40000),
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -1),
                child: Container(
                  width: 400,
                  height: 450,
                  decoration: BoxDecoration(
                    color: Color(0xFFF1F4F8),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                        child: tarjetacredito(
                          formKey: creditCardFormKey,
                          creditCardModel: creditCardInfo,
                          obscureNumber: false,
                          obscureCvv: false,
                          spacing: 5,
                          textStyle: temasycolores.of(context).bodyText1,
                          inputDecoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD40000),
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD40000),
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.06, -0.2),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TransferWidget(),
                              ),
                            );
                          },
                          text: 'Transferir Ahora',
                          options: FFButtonOptions(
                            width: 250,
                            height: 43,
                            color: Color(0xFFD40000),
                            textStyle:
                                temasycolores.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                            elevation: 12,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 12,
                          ),
                        ),
                      ),
                    ],
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
                        color: Color(0xFFD40000),
                        size: 30,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                    botones(
                      borderColor: Colors.transparent,
                      borderRadius: 25,
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
