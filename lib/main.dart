import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'screens/avatares.dart';
import 'screens/doar.dart';
import 'screens/denuncia.dart';
import 'screens/noticiacapa.dart';

import 'package:rotas/screens/lateral.dart';
import 'package:rotas/screens/noticias.dart';
import 'package:rotas/screens/camera.dart';

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
      '/Noticias': (BuildContext context) => new Noticias(),
      '/Camera': (BuildContext context) => new Camera(),
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
            SizedBox(
              height: 15.0,
            ),

//  NOTICIAS *******************************************************************

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: new Border(
                            bottom: new BorderSide(
                              width: 1.0,
                              color: Colors.grey,
                            ),
                        ),
                      ),
                      padding: EdgeInsets.only(left: 5.0),
                      width: largura - 30,
                      height: 25.0,
                      child: Text(
                        'Noticias ...',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.green[900],
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Container(
                      width: largura - 30,
                      height: 200.0,
                      child: NoticiaCapa(),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(
              height: 5.0,
            ),

//  BOTÃO DOAR *****************************************************************

            Doar(),
            SizedBox(
              height: 15.0,
            ),

//  DENUNCIA e LOCALIZAÇÃO *****************************************************

            Denuncia(),
            SizedBox(
              height: 60.0,
            ),

//  NOTICIAS *******************************************************************
/*
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
*/
//  ******************************************************************
          ],
        ),
      ),
    );
  }
}

/*



//import 'package:rotas/screens/pagina1.dart';
//import 'package:rotas/screens/pagina2.dart';




//      '/Pagina1': (BuildContext context) => new Pagina1(),
//      '/Pagina2': (BuildContext context) => new Pagina2(),





            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      width: largura / 2 - 15,
                      height: 60.0,
                      child: RaisedButton(
                        onPressed: () {

                          Navigator.of(context).pushNamed('/Camera');



//                         Navigator.of(context).push(
//                            new MaterialPageRoute(
//                              builder: (context) {
//                                return new Camera();
//                              },
//                            ),
//                          );


                        },                        elevation: 4.0,
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



400 registros


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


Teste de navegação

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



 */
