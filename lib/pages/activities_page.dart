import 'package:flutter/material.dart';

class ActivitiesPage extends StatefulWidget {
  const ActivitiesPage({Key? key}) : super(key: key);

  @override
  State<ActivitiesPage> createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends State<ActivitiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atividades'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                ),
                hintText: 'Digite para buscar uma atividade',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5, 40, 5, 40),
              width: MediaQuery.of(context).size.width,
              height: 350,
              color: Color.fromARGB(255, 191, 212, 226),
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'Guilherme Mendes',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 100),
                        child: Text(
                          '1 hour ago',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.more_vert,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  ElevatedButton(
                    child: Text('Grupo 2'),
                    style: ButtonStyle(),
                    onPressed: () {},
                  ),
                  Text(
                    'Categoria: Trabalho Voluntário',
                    style: TextStyle(color: Colors.blue),
                  ),
                  Text(
                    'Natal Solidário',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 20, 30, 20),
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    color: Color.fromARGB(255, 60, 175, 252),
                    padding: EdgeInsets.only(top: 20, left: 20),
                    child: Text(
                      'IMAGEM',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 250),
                        child: Text(
                          'Salvar',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.save,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
