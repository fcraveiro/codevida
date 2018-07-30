import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Noticias extends StatefulWidget {
  String animal;
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
              height: 128.0,
              decoration: BoxDecoration(
                border: new Border(
                    bottom: new BorderSide(
                  width: 2.0,
                  color: Colors.black,
                )),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
//FOTO

                      Container(
                        width: 110.0,
                        height: 105.0,
//                        color: Colors.pink[200],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Image.network(
                              urlImagem,
                              width: 95.0,
                              height: 95.0,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ),

// DATA

                      Container(
                        width: 100.0,
                        height: 15.0,
//                        color: Colors.red[300],
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              '12/07/2018',
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

// LADO DIREITO

                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      height: 120.0,
//                      color: Colors.purple[900],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

// TITULO

                          Container(
                            height: 46.0,
//                            color: Colors.green[600],
                            child: new Text(
                              titulo,
                              maxLines: 2,textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                            ),
                          ),

// TEXTO

                          Container(
                            height: 70.0,
//                            color: Colors.blue[600],
                            child: new Text(
                              descricao,
                              maxLines: 4,textAlign: TextAlign.justify,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black87,
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
//            debugPrint('$index');

            return Container(
              child: new ListTile(
//               contentPadding:
//                EdgeInsets.symmetric(vertical: 11.0, horizontal: 10.0),


                leading: GestureDetector(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 70.0,
                        height: 70.0,
                        child: Image.network(
                          urlImagem,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: 70.0,
                        height: 10.0,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),

                title: new Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        titulo,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                      ),
                      height: 45.0,
                      color: Colors.blue,
                    ),
                  ],
                ),
                subtitle: Column(
                  children: <Widget>[
                    Container(
                      child: new Text(
                        descricao,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black87,
                        ),
                      ),
                      color: Colors.red,
                      height: 60.0,
                    ),
                  ],
                ),
              ),

              decoration: BoxDecoration(
                border: new Border(
                    bottom: new BorderSide(
                      width: 1.0,color: Colors.black12,
                    )
                ),
              ),
            );
 */
