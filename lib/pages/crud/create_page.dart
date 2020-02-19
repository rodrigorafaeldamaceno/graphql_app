import 'package:flutter/material.dart';

class CreatePage extends StatelessWidget {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criar'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            children: <Widget>[
              customTextField('Nome', _nameController),
              SizedBox(height: 10),
              customTextField(
                'Email',
                _nameController,
                type: TextInputType.emailAddress,
              ),
              SizedBox(height: 10),
              customTextField(
                'Idade',
                _nameController,
                type: TextInputType.number,
              ),
              SizedBox(height: 30),
              RaisedButton(
                onPressed: () {},
                child: Text('Cadastrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customTextField(String label, TextEditingController controller,
      {TextInputType type: TextInputType.text}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(labelText: label),
      keyboardType: type,
    );
  }
}
