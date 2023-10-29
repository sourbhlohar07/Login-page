import 'package:flutter/material.dart';
import 'package:page/pages/register.dart';
import 'package:page/pages/login.dart';
import 'package:page/pages/textfield.dart';

final _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
class Login extends StatelessWidget {
 
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              textFiled(labelText: "Email",controller: email),
              const SizedBox(
                height: 10,
              ),
              textFiled(labelText: "Password", obscureText: true,controller: password),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    login(context, ParamsLogin(email: email.text, password: password.text));
                    
                  }
                }, child: const Text("Login")),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Register();
                      }));
                    },
                    child: const Text("Register")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}