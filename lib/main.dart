import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tinder',
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.pink,
                    Colors.red,
                  ]),
            ),
            child: Center(
              child: Column(children: [
                const SizedBox(height: 100),
                SizedBox(
                  width: 300,
                  height: 150,
                  child: Image.network(
                      'https://logosmarcas.net/wp-content/uploads/2020/09/Tinder-Logo-650x366.png',
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 35, right: 35),
                    child: Text(
                      'Ao tocar em entrar, você concorda com os nossos Termos. Saiba como processamos seus dados em nossas Políticas de Privacidade e Políticas de Cookies',
                      maxLines: 4,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 15),
                          Container(
                            height: 40,
                            width: 40,
                            child: Image.network(
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/768px-Google_%22G%22_Logo.svg.png'),
                          ),
                          SizedBox(width: 25),
                          Text('ENTRAR COM GOOGLE')
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 80,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 15),
                          Container(
                            height: 40,
                            width: 40,
                            child: Image.network(
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Facebook_f_logo_%282019%29.svg/2048px-Facebook_f_logo_%282019%29.svg.png'),
                          ),
                          SizedBox(width: 25),
                          Text('ENTRAR COM FACEBOOK')
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 80,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 15),
                          Container(
                            height: 40,
                            width: 40,
                            child: Image.network(
                                'https://logodownload.org/wp-content/uploads/2013/12/apple-logo-1-1.png'),
                          ),
                          SizedBox(width: 25),
                          Text('ENTRAR COM APPLE')
                        ],
                      ),
                    ),
                    SizedBox(height: 80),
                    Text(
                      'Problemas para fazer o login?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ]),
            ),
          )),
    );
  }
}
