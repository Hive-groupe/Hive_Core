part of 'authentication_repository.dart';

class AuthenticationRepositoryFirebaseImpl implements AuthenticationRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  // Constructor
  AuthenticationRepositoryFirebaseImpl(
      {FirebaseAuth firebaseAuth, GoogleSignIn googleSignin})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignin ?? GoogleSignIn();

  // SignInWithCredentials
  @override
  Future<void> signInWithCredentials(
      {@required String email, @required String password}) {
    return _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  // SignInWithGoogle
  @override
  Future<User> signInWithGoogle() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    await _firebaseAuth.signInWithCredential(credential);
    return _firebaseAuth.currentUser;
  }

  // SignInWithFacebook
  @override
  Future<User> signInWithFacebook() async {
    return _firebaseAuth.currentUser;
  }

  // SignUp - Registro
  @override
  Future<void> signUp(
      {@required String email, @required String password}) async {
    return await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  // SignOut
  @override
  Future<void> signOut() async {
    return Future.wait([
      _firebaseAuth.signOut(),
      _googleSignIn.signOut(),
    ]);
  }

  // Recover password
  @override
  Future<bool> recoverPassword(
      {@required String language, @required String email}) async {
    try {
      // Establecemos idioma en el que queremos que llegue el mensaje
      _firebaseAuth.setLanguageCode(language ?? 'en');
      //Establecemos idioma en el que queremos que llegue el mensaje
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return true;
    } catch (_) {
      return false;
    }
  }

  // Recover password
  @override
  Future<bool> updatePassword({@required String password}) async =>
      (await getCurrentUser()).updatePassword(password).then((_) {
        return true;
      }).catchError((e) {
        print(e);
        return false;
      });

  // Esta logeado?
  @override
  Future<bool> isSignedIn() async => (await _firebaseAuth.currentUser) != null;

  // Esta el email verificado?
  @override
  Future<bool> isEmailVerified() async =>
      (await _firebaseAuth.currentUser).emailVerified;

  // Obtener usuario
  @override
  Future<User> getCurrentUser() async => (await _firebaseAuth.currentUser);
  @override
  Future<String> getCurrentUserMail() async =>
      (await _firebaseAuth.currentUser).email;

  @override
  Future<String> getCurrentUserId() async =>
      await isSignedIn() ? (await _firebaseAuth.currentUser).uid : null;
}
