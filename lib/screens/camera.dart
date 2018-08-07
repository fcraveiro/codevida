import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';
import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {

  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {

  File _image;

  Future getGaleria() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  Future getCamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: new Text('Denunciar'),
        backgroundColor: Colors.green[800],
        centerTitle: true,
      ),
      body:





//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      home: Scaffold(

//  **************************** APPBAR *******************

//        appBar: AppBar(
//          title: Text('AppBar'),
//          backgroundColor: Colors.green[700],
//          centerTitle: true,
//       ),

//  FLOATING *********************************************

      /*
        floatingActionButton: new FloatingActionButton(
          mini: false,
          onPressed: getCamera,
          elevation: 7.0,
          tooltip: 'Tirar Foto',
          shape: CircleBorder(
            side: BorderSide(
              color: Colors.blue,
              width: 1.5,
              style: BorderStyle.solid,
            ),
          ),
          child: new Icon(Icons.add_a_photo),
          backgroundColor: Colors.white,
          foregroundColor: Colors.blue,
        ),
*/

//  BODY *************************************************

//        body: Column(

    Column(

          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

//  PAGINA ***********************************************

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          top: 20.0,
                          right: 40.0,
                        ),
                        width: 170.0,
                        height: 260.0,
                        decoration: ShapeDecoration(
                            shape: Border.all(
                              color: Colors.green[300],
                              width: 1.0,
                              style: BorderStyle.solid,
                            )),
                        child: _image == null
                            ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            new Text(
                              'Sem Imagens',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.green[900],
                              ),
                            ),
                          ],
                        )
                            : new Image.file(
                          _image,
                          scale: 50.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(0.0),
                      margin: EdgeInsets.only(top: 5.0, right: 35.0),
                      width: 80.0,
                      height: 80.0,
                      child: RaisedButton(
                        padding: EdgeInsets.all(0.0),
                        onPressed: getGaleria,
                        color: Colors.green[100],
                        elevation: 6.0,
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(0.0),
                              margin: EdgeInsets.only(top: 5.0),
                              width: 75.0,
                              height: 45.0,
                              child: Icon(
                                Icons.photo_library,
                                size: 40.0,
                                color: Colors.green[900],
                              ),
                            ),
                            Container(
                              width: 75.0,
                              height: 25.0,
                              child: Text(
                                'Galeria',
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(0.0),
                      margin: EdgeInsets.only(top: 25.0, right: 35.0),
                      width: 80.0,
                      height: 80.0,
                      child: RaisedButton(
                        padding: EdgeInsets.all(0.0),
                        onPressed: getCamera,
                        color: Colors.green[100],
                        elevation: 6.0,
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(0.0),
                              margin: EdgeInsets.only(top: 5.0),
                              width: 75.0,
                              height: 45.0,
                              child: Icon(
                                Icons.photo_camera,
                                size: 40.0,
                                color: Colors.green[900],
                              ),
                            ),
                            Container(
                              width: 75.0,
                              height: 25.0,
                              child: Text(
                                'Camera',
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

//  GALERIA **********************************************

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

//  FOTO *************************************************

              ],
            ),
          ],
        ),

//  **************************** FINAL ********************

//      ),
    );
  }
}
