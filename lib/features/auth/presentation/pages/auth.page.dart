import 'package:emeron/core/utils/constants/constants.dart';
import 'package:emeron/core/utils/widgets/default_stack.widgets.dart';
import 'package:emeron/features/auth/presentation/controllers/auth.controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AuthPage extends GetView<AuthController> {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultStack(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Alinha os elementos para o topo
            children: <Widget>[
              const SizedBox(height: 60), // Espaço entre o topo e os elementos
              Container(
                margin: const EdgeInsets.only(bottom: 16.0), // Margem inferior menor para a logo
                child: Image.asset(AppImages.logo), // Exibe a imagem corretamente
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5), // Fundo branco com 50% de opacidade
                  borderRadius: const BorderRadius.all(Radius.circular(19)),
                ),
                padding: const EdgeInsets.all(16), // Margem interna do container
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Usuário',
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Margem interna do campo
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)), // Borda arredondada
                      ),
                    ),
                    const SizedBox(height: 20), // Espaço entre os campos
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Margem interna do campo
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)), // Borda arredondada
                      ),
                    ),
                    const SizedBox(height: 20),
                    OutlinedButton(onPressed: null, child: const Text("Logar")),
                    const Align(
                      alignment: Alignment.centerRight, // Posiciona no canto inferior direito
                      child: Text(
                        "Esqueceu a senha?",
                        style: TextStyle(
                          fontSize: 12, // Tamanho menor
                          color: Colors.blue, // Personalize a cor, se necessário
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
