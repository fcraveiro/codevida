import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Noticias extends StatefulWidget {
  final String animal;
  Noticias({this.animal});

  @override
  _NoticiasState createState() => _NoticiasState();
}

class _NoticiasState extends State<Noticias> {
  List data;
  String bar;

  Future<String> lerDados() async {
    var res = await http.get(Uri.encodeFull('http://52.67.253.92/noticias.php'),
        headers: {"Accept": "aplication/json"});
    setState(() {
      var resBody = json.decode(res.body);
      data = resBody['noticias'];
    });
    return "Sucess !!!";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(bar),
        backgroundColor: Colors.green[800],
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext context, int index) {
            var urlImagem = data[index]['imageUrl'];
            var titulo = data[index]['titulo'];
            var descricao = data[index]['texto'];

            return Container(
              margin: EdgeInsets.only(top: 5.0),
              height: 110.0,
              decoration: BoxDecoration(
                border: new Border(
                    bottom: new BorderSide(
                  width: 1.0,
                  color: Colors.grey,
                )),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[

// DATA

                      Container(
                        width: 95.0,
                        height: 15.0,
//                        color: Colors.red[300],
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              '12/07/2018',
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 12.0,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
//FOTO

                      Container(
                        width: 95.0,
                        height: 90.0,
//                        color: Colors.pink[200],
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Image.network(
                              urlImagem,
                              width: 85.0,
                              height: 85.0,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ),



                    ],
                  ),

// LADO DIREITO

                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 7.0, right: 7.0),
                      height: 105.0,
//                      color: Colors.purple[900],
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

// TITULO

                          Container(
                            height: 36.0,
//                            color: Colors.green[600],
                            child: new Text(
                              titulo,
                              maxLines: 2,textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.blue[700],
                              ),
                            ),
                          ),

// TEXTO

                          Container(
                            height: 63.0,
//                            color: Colors.blue[600],
                            child: new Text(
                              descricao,
                              maxLines: 4,textAlign: TextAlign.justify,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontFamily: 'MerriweatherSans',
                                fontSize: 13.0,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bar = "Todas as Noticias";
    this.lerDados();
  }
}

/*

//                                fontFamily: 'Galada',
//                                fontFamily: 'Lato',
//                                fontFamily: 'Libre',
//                                fontFamily: 'Lobster',
//                                fontFamily: 'Merriweather',
//                                fontFamily: 'MerriweatherSans',
//                                fontFamily: 'Montserrat',
//                                fontFamily: 'Nunito',
//                                fontFamily: 'Raleway',
//                                fontFamily: 'Rubik',

//                                fontFamily: 'MerriweatherSans',
//                                fontFamily: 'Raleway',
//                                fontFamily: 'Rubik',

 */
