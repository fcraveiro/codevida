import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class NoticiaCapa extends StatefulWidget {
  @override
  _NoticiaCapaState createState() => _NoticiaCapaState();
}

class _NoticiaCapaState extends State<NoticiaCapa> {
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
    var url1 = data[1]['imageUrl'];
    var tit1 = data[1]['titulo'];
    var desc1 = data[1]['texto'];
    var url2 = data[2]['imageUrl'];
    var tit2 = data[2]['titulo'];
    var desc2 = data[2]['texto'];

    return Scaffold(
      body: Container(
        color: Colors.green[100],
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.green[100],
              child: mostraNoticia(url1, tit1, desc1),
            ),
            Container(
              color: Colors.green[100],
              child: mostraNoticia(url2, tit2, desc2),
            ),


          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bar = "Todas as Noticias";
    this.lerDados();
  }

  Widget mostraNoticia(urlImagem, titulo, descricao) {
    return Container(
      margin: EdgeInsets.only(top: 7.0),
      height: 90.0,
      decoration: BoxDecoration(
        border: new Border(
            bottom: new BorderSide(
          width: 1.0,
          color: Colors.grey,
        ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 85.0,
                height: 12.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '12/07/2018',
                      style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 10.0,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 75.0,
                height: 73.0,
margin: EdgeInsets.only(top: 3.0),
//                color: Colors.green,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Image.network(
                      urlImagem,
                      width: 65.0,
                      height: 65.0,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
            ],
          ),

          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 0.0, right: 5.0),
              height: 87.0,
//              color: Colors.yellow,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 33.0,
                    child: new Text(
                      titulo,
                      maxLines: 2,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),


                  Container(
                    height: 50.0,
//                    color: Colors.red,
                    child: new Text(
                      descricao,
                      maxLines: 3,
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'MerriweatherSans',
                        fontSize: 12.0,
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
  }
}
