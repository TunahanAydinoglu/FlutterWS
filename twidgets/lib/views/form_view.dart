import 'package:flutter/material.dart';

class FormView extends StatefulWidget {
  @override
  _FormViewState createState() => _FormViewState();
}

class _FormViewState extends State<FormView> {
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _textFieldUserName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Center(
          child: Text("Form View"),
        ),
      ),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              validator: (val) {
                if (val.isEmpty) {
                  return "have a error";
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              controller: _textFieldUserName,
              decoration: InputDecoration(
                hintText: "Hint Text",
                labelText: "Label Text",
                border: OutlineInputBorder(),
              ),
              validator: (val) {
                if (val.length < 6 || val.length > 15) {
                  return "min char : 6, max char:15";
                } else {
                  return null;
                }
              },
            ),
            IconButton(
                icon: Icon(Icons.check),
                onPressed: () {
                  if (formKey.currentState.validate()) {
                    print("Validate Ok");
                  } else {
                    scaffoldKey.currentState.showSnackBar(
                      SnackBar(
                        content: Text(_textFieldUserName.text),
                      ),
                    );
                  }
                })
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    formKey.currentState.dispose();
    scaffoldKey.currentState.dispose();
    super.dispose();
  }
}
