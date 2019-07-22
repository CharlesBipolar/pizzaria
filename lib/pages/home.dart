import 'package:flutter/material.dart';
import 'package:flutter_app/models/mpizza.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Pizza> ListaPizzas = [
    Pizza(
        nome: "Batata Frita",
        ingredientes: "batata frita, molho de tomate, mussarela, azeitona",
        imagem: "images/pizzas/pizza_batata_frita.png"),
    Pizza(
        nome: "Calabresa",
        ingredientes: "calabresa, molho de tomate, azeitona",
        imagem: "images/pizzas/pizza_calabresa.png"),
    Pizza(
        nome: "Camarão",
        ingredientes: "camarão, molho de tomate, n sei :/",
        imagem: "images/pizzas/pizza_camarao.png"),
    Pizza(
        nome: "Frutos do Mar",
        ingredientes: "frutos do mar :3",
        imagem: "images/pizzas/pizza_frutos_mar.png"),
    Pizza(
        nome: "Manjericão",
        ingredientes: "não sei",
        imagem: "images/pizzas/pizza_manjericao.png"),
    Pizza(
        nome: "Mussarela",
        ingredientes: "olokinho meu",
        imagem: "images/pizzas/pizza_mussarela.png"),
    Pizza(
        nome: "Portuquesa",
        ingredientes: "coloniais",
        imagem: "images/pizzas/pizza_portuguesa.png"),
    Pizza(
        nome: "Strogonoff",
        ingredientes: "carne magica",
        imagem: "images/pizzas/pizza_strogonoff.png"),
  ];

  ListTile criarListTile(IconData icone, String texto) {
    return ListTile(
      leading: Icon(
        icone,
        color: Color.fromARGB(255, 240, 85, 69),
      ),
      title: Text(
        texto,
        style: TextStyle(
          fontSize: 16.0,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange ,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 28, 28, 28),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.local_pizza),
            SizedBox(width: 5.0),
            Text("Ma'que Pizza"),
          ],
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: ListView.builder(
        itemCount: ListaPizzas.length,
        itemBuilder: (BuildContext, int index) {
          print("Qual é o indice? ${ListaPizzas[index].nome}? $index");
          return Column (
            children: <Widget>[
              ListTile (
                leading: CircleAvatar(
                  backgroundImage: AssetImage(ListaPizzas[index].imagem),
                ),
                title: Text(ListaPizzas[index].nome),
                subtitle: Text(ListaPizzas[index].ingredientes),
              ),
              Divider(color: Colors.black38,)
            ],
          );
        },
      ),
      //widget que serve para construir o menu "gaveta"
      //É o menu que aparece quando apertamos nos três pauzinhos (hamburger)
      drawer: Drawer(
        child: Container(
          color: Color.fromARGB(255, 255, 255, 255),
          child: Column(
            children: <Widget>[
              Container(
                color: Color.fromARGB(255, 0, 14, 28),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Icon(
                        Icons.account_circle,
                        color: Color.fromARGB(255, 181, 181, 181),
                        size: 140.0,
                      ),
                    ),
                    //o FlatButton é um botão que aparece so um texto
                    //ou seja, não tem sombreamento
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 28.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //ListTile cria itens de Lista
              //pode ter icones no começo e no fim de cada item
              //separamos em um método para ficar mais organisada
              criarListTile(Icons.list, "Cardápio"),
              criarListTile(Icons.local_drink, "Bebidas"),
              criarListTile(Icons.cake, "Sobremesas"),
              Divider(
                color: Colors.black,
              ),
              criarListTile(Icons.star, "avalie o app"),
              criarListTile(Icons.info, "sobre"),
              criarListTile(Icons.perm_phone_msg, "contato"),
              criarListTile(Icons.settings, "configurações")
            ],
          ),
        ),
      ),
    );
  }
}
