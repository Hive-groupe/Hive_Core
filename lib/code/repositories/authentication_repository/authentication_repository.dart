// Import
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'authentication_repository_firebase_impl.dart';

abstract class AuthenticationRepository {
  // SignInWithCredentials
  Future<void> signInWithCredentials(
      {@required String email, @required String password});

  // SignInWithGoogle
  Future<User> signInWithGoogle();

  // SignInWithFacebook
  Future<User> signInWithFacebook();

  // SignUp - Registro
  Future<void> signUp({@required String email, @required String password});

  // SignOut
  Future<void> signOut();

  // Recover password
  Future<bool> recoverPassword(
      {@required String language, @required String email});

  // Recover password
  Future<bool> updatePassword({@required String password});

  // Esta logeado?
  Future<bool> isSignedIn();

  // Esta el email verificado?
  Future<bool> isEmailVerified();

  // Obtener usuario
  Future<User> getCurrentUser();
  Future<String> getCurrentUserMail();
  Future<String> getCurrentUserId();
}
