import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SignUpScreen extends StatefulWidget {
  final VoidCallback onViewSwitch;

  const SignUpScreen({Key? key, required this.onViewSwitch}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Nueva Cuenta Integral Public",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.teal,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Escribe tu usuario aquí',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Correo electrónico',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: passwordController,
              obscureText: _isObscure,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Contraseña',
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off)),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                    ),
                    onPressed: () {
                      Get.offNamed('/content');
                    },
                    child: const Text("Registrar"),
                  ),
                ),
              ),
            ],
          ),
          const Text('Si tienes una cuenta creada, clic aqui'),
          TextButton(
            onPressed: widget.onViewSwitch,
            child: const Text(
              "Inicia sesion",
              style: TextStyle(fontSize: 20.0),
            ),
            style: TextButton.styleFrom(
              primary: Colors.teal,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
