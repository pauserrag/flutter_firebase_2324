import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_firebase_2324/auth/servei_auth.dart';
import 'package:flutter_firebase_2324/chat/servei_chat.dart';

class PaginaInici extends StatelessWidget {
  PaginaInici({super.key});

  final ServeiAuth _serveiAuth = ServeiAuth();
  final Serveichat _serveiChat = Serveichat();

  void logout() {
    _serveiAuth.tancarSessio();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pàgina inici"),
        actions: [
          IconButton(
            onPressed: logout,
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: _construeixLlistaUsuaris(),
    );
  }

  Widget _construeixLlistaUsuaris() {
    return StreamBuilder(
        stream: _serveiChat.getUsuaris(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Text("Error");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("Carregant dades..");
          }
          // es retornen les dades.
          return ListView(
            children: snapshot.data!
                .map<Widget>((dadesUsuari) =>
                    _construeixItemUsuari(dadesUsuari, context))
                .toList(),
          );
        });
  }

  Widget _construeixItemUsuari(
      Map<String, dynamic> dadesUsuari, BuildContext context) {
    if (dadesUsuari["email"] == _serveiAuth.getUsuarisActual()!.email) {
      return Container();
    }
    return Text(dadesUsuari["email"]);
  }
}
