import 'package:contacts/models/contact.model.dart';
import 'package:flutter/material.dart';

class EditorContactView extends StatelessWidget {
  final ContactModel model;

  EditorContactView({this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: model == null ? Text("Novo Contato") : Text("Editar Contato"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                initialValue:
                    model?.name, //Se existir, coloca o name, senão, deixa vazio
                onSaved: (val) {
                  model.name = val;
                },
              ),
              TextFormField(
                initialValue: model
                    ?.phone, //Se existir, coloca o name, senão, deixa vazio
                onSaved: (val) {
                  model.name = val;
                },
              ),
              TextFormField(
                initialValue: model
                    ?.email, //Se existir, coloca o name, senão, deixa vazio
                onSaved: (val) {
                  model.name = val;
                },
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: FlatButton.icon(
                  color: Theme.of(context).primaryColor,
                  onPressed: () {},
                  icon: Icon(
                    Icons.save,
                    color: Theme.of(context).accentColor,
                  ),
                  label: Text(
                    "Salvar",
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
