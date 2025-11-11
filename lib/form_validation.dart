import 'package:flutter/material.dart';

class FormValidation extends StatefulWidget {
  const FormValidation({super.key});

  @override
  State<FormValidation> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FormValidation> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Validation'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(label: Text('Nama')),
                validator: (value) {
                  if (value == null || value.isEmpty){
                    return 'Nama nono Kosong';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: (){
                  if(_formKey.currentState!.validate()){
                    String name = nameController.text;

                    ScaffoldMessenger.of(
                      context
                    ).showSnackBar(SnackBar(content:Text(name)));
                  }
                },
                child: Text('Submit') 
               )
            ],
          ),
        ),
      )
    );
  }
}