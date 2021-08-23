import 'package:cadastro_de_alunos/repositories/student/studentdb_repository.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _registerController = TextEditingController();

  final _nameController = TextEditingController();

  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Alunos"),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Matrícula do Aluno",
                hintText: "Somente Números Inteiros",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              controller: _registerController,
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Nome do Aluno",
                hintText: "Somente Letras",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.name,
              controller: _nameController,
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Email do Aluno",
                hintText: "Somente Emails Válidos",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
              controller: _emailController,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                ElevatedButton(onPressed: () {},
                  child: Text("Cadastrar"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void saveRegister(){
    final String name = _nameController.text;
    final int register = int.parse(_registerController.text);
    final String email = _emailController.text;
    String message;

    if(!EmailValidator.validate(email)) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Mensagem do Sistema"),
          content: Text("email inválido!!"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
            },
              child: Text("ok"),
            ),
          ],
        ),
      );
    }else{

    }
  }
}
