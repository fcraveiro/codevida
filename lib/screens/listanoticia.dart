import 'package:flutter/material.dart';

class ListaNoticia extends StatelessWidget {

  final imagem;
  final titu;
  final descri;

  ListaNoticia({
    this.imagem,
    this.titu,
    this.descri,
  });

  @override
  Widget build(BuildContext context) {
    debugPrint(this.imagem);
    debugPrint(this.titu);
    debugPrint(this.descri);
    debugPrint('ok');
    print('ok2');
    return new Container(
      width: 100.0,
      height: 40.0,
      color: Colors.yellow,
    );

        }
}



/*


    return new Container(
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
                      imagem,
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
                      titu,
                      maxLines: 2, textAlign: TextAlign.start,
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
                      descri,
                      maxLines: 4, textAlign: TextAlign.justify,
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



 */