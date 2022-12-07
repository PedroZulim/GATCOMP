import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  var _textOne =
      'Uma nova atividade da categoria "Grupo 2" foi adicionada ao feed "Natal Solidário 2021"';
  var _textTwo =
      'Uma nova atividade da categoria "Grupo 3" foi adicionada ao feed "Palestra de Finanças"';
  var _textThree =
      'Uma nova atividade da categoria "Grupo 1" foi adicionada ao feed "Hackaton"';
  NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notificações'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10),
        width: MediaQuery.of(context).size.width,
        height: 230,
        color: Color.fromARGB(255, 191, 212, 226),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(
                _textOne,
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(
              color: Colors.white,
              thickness: 5,
            ),
            ListTile(
              title: Text(
                _textTwo,
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(
              color: Colors.white,
              thickness: 5,
            ),
            ListTile(
              title: Text(
                _textThree,
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
