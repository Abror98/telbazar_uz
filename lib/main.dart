import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telbazar_uz/webview.dart';


void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(12,136,188, 1),
                Color.fromRGBO(20,175,255, 1)
              ],
            )),
        child: Align(
          alignment: Alignment.center,
          child: Column(
              children: [
                Expanded(flex: 5, child: Container()),
                Text('TelBazar', style: TextStyle(fontSize: 40,
                    color: Colors.white,
                    fontFamily: "Pacifico",
                    fontStyle: FontStyle.italic),),
                Expanded(flex: 1, child: Container()),
                Text('Mobil ilovamiz tez orada ishga tushadi', style: TextStyle(
                  color: Color.fromRGBO(53,194,180, 1), fontSize: 20,
                ),),
                Expanded(flex: 2, child: Container()),
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
                      child: RaisedButton(onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => WebViewExample()));
                      },
                        child: Text('TelBazar.uz ga o\'tish', style: TextStyle(
                          color: Color.fromRGBO(142,203,231, 1), fontSize: 18.0,
                        ),),
                        color: Colors.white,
                      splashColor: Colors.grey,),
                  ),
                ),
                Expanded(flex: 1, child: Container()),
              ],
            ),
        ),
      ),
    );
  }
}
