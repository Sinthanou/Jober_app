import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class AuthService extends ChangeNotifier {
  User? currentUser() {

    return FirebaseAuth.instance.currentUser;
  }
  FirebaseAuth auth = FirebaseAuth.instance;

  void signUp({
    required String email,
    required String password,
    required Function onSuccess,
    required Function(String err) onError,
  }) async {

    if(email.isEmpty) {
      onError("Please Enter your email");
      return;
    } else if(password.isEmpty) {
      onError("Please Enter your password");
      return;
    }

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);

      onSuccess();
    } on FirebaseAuthException catch (e) {
      
      onError(e.message!);

    } catch (e) {

      onError(e.toString());
      
    }

  }

  void signIn({
    required String email,
    required String password,
    required Function onSuccess,
    required Function(String err) onError,
  }) async {
    
    if(email.isEmpty) {
      onError("Please Enter your email");
      return;
    } else if(password.isEmpty) {
      onError("Please Enter your password");
      return;
    }

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);

      onSuccess();
      notifyListeners();
    } on FirebaseAuthException catch (e) {
      
      onError(e.message!);

    } catch (e) {

      onError(e.toString());
      
    }

  }

  void signOut () async {

    await FirebaseAuth.instance.signOut();
    notifyListeners();
  }
}