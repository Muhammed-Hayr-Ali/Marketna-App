import 'package:google_sign_in/google_sign_in.dart';

abstract class MyGoogleSignInAccount {
  final GoogleSignIn googleSignIn;

  MyGoogleSignInAccount({required this.googleSignIn});

  Future<Map<String, dynamic>?> getGoogleSignInAccount();
}

class MyGoogleSignInAccountImpl implements MyGoogleSignInAccount {
  @override
  GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);

  @override
  Future<Map<String, dynamic>?> getGoogleSignInAccount() async {
    try {
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

      if (googleUser == null) {
        return null;
      }

      final data = {
        'name': googleUser.displayName.toString(),
        'email': googleUser.email,
        'password': googleUser.id,
        'profile': googleUser.photoUrl.toString()
      };

      return data;
    } catch (e) {
      return null;
    }
  }
}
