import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'screens/avatares.dart';
import 'screens/animais.dart';
import 'package:rotas/screens/pagina1.dart';
import 'package:rotas/screens/pagina2.dart';
import 'package:rotas/screens/lateral.dart';
import 'package:rotas/screens/noticias.dart';
import 'package:rotas/screens/maps.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

Map data;

List userData;
List dadosAvatar;
var qtdeAvatar;

String _urlAvatar = 'http://52.67.253.92/avatar.php';

void main() async {
  dadosAvatar = await lerDados(_urlAvatar);
  qtdeAvatar = dadosAvatar.length;
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,



    routes: <String, WidgetBuilder>{
      '/Pagina1': (BuildContext context) => new Pagina1(),
      '/Pagina2': (BuildContext context) => new Pagina2(),
      '/Noticias': (BuildContext context) => new Noticias(),
//      '/Maps': (BuildContext context) => new MapsDemo(mapWidget, controller.mapController),
    },
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

Future lerDados(String apiUrl) async {
  http.Response response = await http.get(apiUrl);
  data = json.decode(response.body);
  userData = data["avatar"];
  return userData;
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
//    double altura = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        actions: <Widget>[
          Icon(
            Icons.more_vert,
            color: Colors.green,
          ),
          SizedBox(
            width: 7.0,
          ),
        ],
        backgroundColor: Colors.green[700],
        title: Text('CodeVida'),
        centerTitle: true,
      ),
      drawer: Lateral(),
      body: new Center(
        child: new ListView(
          children: <Widget>[
//  AVATAR ******************************************************************

            Container(
              color: Colors.white,
              height: 125.0,
              child: Avatares(
                dados: dadosAvatar,
                qtde: qtdeAvatar,
              ),
            ),

//  BOTÃO DOAR *****************************************************************

            Center(
              child: Container(
                margin: EdgeInsets.only(top: 5.0),
                color: Colors.green[100],
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
// 1
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          new MaterialPageRoute(
                            builder: (context) {
                              return new Animais(animal: 'caes');
                            },
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 0.0),
                        width: largura / 3 - 15,
                        height: 37.0,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: StadiumBorder(
                            side: BorderSide(
                                color: Colors.green[800],
                                width: 0.7,
                                style: BorderStyle.solid),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(4.0),
                                  width: 40.0,
                                  height: 35.0,
                                  child: Image.asset(
                                    'assets/dog.png',
                                    fit: BoxFit.contain,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Cães',
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'Nunito',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
// 2
                    Container(
                      margin: EdgeInsets.only(top: 0.0),
                      width: largura / 3 - 15,
                      height: 37.0,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: StadiumBorder(
                          side: BorderSide(
                              color: Colors.green[800],
                              width: 0.7,
                              style: BorderStyle.solid),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(4.0),
                                width: 40.0,
                                height: 35.0,
//                                color: Colors.red,
                                child: Image.asset(
                                  'assets/doar.png',
                                  fit: BoxFit.contain,
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Doar',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'Nunito',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
// 3
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          new MaterialPageRoute(
                            builder: (context) {
                              return new Animais(animal: 'gatos');
                            },
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 0.0),
                        width: largura / 3 - 15,
                        height: 37.0,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: StadiumBorder(
                            side: BorderSide(
                                color: Colors.green[800],
                                width: 0.7,
                                style: BorderStyle.solid),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(4.0),
                                  width: 40.0,
                                  height: 35.0,
//                                  color: Colors.red,
                                  child: Image.asset(
                                    'assets/cat.png',
                                    fit: BoxFit.contain,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Gatos',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'Nunito',
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
            SizedBox(
              height: 5.0,
            ),

//  ******************************************************************

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      width: largura / 2 - 15,
                      height: 60.0,
                      child: RaisedButton(
                        onPressed: () => debugPrint('Denuncia'),
                        elevation: 4.0,
                        color: Color.fromARGB(242, 242, 241, 241),
                        shape: StadiumBorder(),
                        child: Image.asset('assets/denuncia.png', fit: BoxFit.cover,),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  children: <Widget>[
                    Container(
                      width: largura / 2 - 15,
                      height: 65.0,
                      child: RaisedButton(
                        onPressed: () => debugPrint('Localização'),
                        elevation: 4.0,
                        color: Color.fromARGB(242, 242, 241, 241),
                        shape: StadiumBorder(),
                        child: Image.asset('assets/localizacao.png', fit: BoxFit.fitHeight,),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 60.0,
            ),
            SizedBox(
              width: 20.0,
            ),

//  ******************************************************************

            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                    child: Text(
                      'Teste 400 registros',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                    color: Colors.teal[800],
                    shape: StadiumBorder(),
                    onPressed: () {
                      Navigator.of(context).push(
                        new MaterialPageRoute(
                          builder: (context) {
                            return new Animais(animal: 'teste');
                          },
                        ),
                      );
                    }),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),

//  ******************************************************************

            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text(
                    'Teste Noticias',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                  color: Colors.teal[800],
                  shape: StadiumBorder(),
                  onPressed: () {
                    Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (context) {
                          return new Noticias();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),

//  ******************************************************************

            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                    child: Text(
                      'Teste de Navegação',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                    color: Colors.teal[800],
                    shape: StadiumBorder(),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/Pagina1');
                    }),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),

//  ******************************************************************
          ],
        ),
      ),
    );
  }
}
