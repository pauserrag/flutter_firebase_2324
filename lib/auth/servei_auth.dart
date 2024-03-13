import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ServeiAuth {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//Fer Login

  Future<UserCredential> loginAmbEmailIPassword(String email, password) async {
    try {
      UserCredential creadencialUsuari = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      return creadencialUsuari;
    } on FirebaseAuthException catch (e) {
      throw Exception(e);
    }
  }
  //Fer registre

  Future<UserCredential> registreAmbEmailIPassword(
      String email, password) async {
    try {
      UserCredential creadencialUsuari = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      _firestore.collection("Usuaris").doc(creadencialUsuari.user!.uid).set({
        "uid": creadencialUsuari.user!.uid,
        "email": email
      });

      return creadencialUsuari;
    } on FirebaseAuthException catch (e) {
      throw Exception(e);
    }
  }
  //Fer Logout

  Future<void> tancarSessio() async {
    return await _auth.signOut();
  }
}
