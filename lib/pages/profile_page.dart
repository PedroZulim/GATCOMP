import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String url =
      'http://www.utfpr.edu.br/icones/cabecalho/logo-utfpr/image_view_fullscreen';
  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 1,
                      height: 1,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill, image: NetworkImage(url))),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    "RA: 2142414",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Text(
                    'Guilherme Mendes',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Text(
                    'UTFPR - Câmpus Cornélio Procópio',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.blue,
            thickness: 3,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 110,
            color: Color.fromARGB(255, 191, 212, 226),
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: Text(
                    'Natal Solidario                             Trabalho Voluntario',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    '20/10/2020 - 16:00',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            color: Colors.white,
            thickness: 5,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 110,
            color: Color.fromARGB(255, 191, 212, 226),
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: Text(
                    'HackaBee                                                    Hackaton',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    '30/01/2021 - 16:00',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
