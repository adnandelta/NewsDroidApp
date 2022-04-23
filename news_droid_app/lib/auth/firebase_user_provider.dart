import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class NewsDroidAppFirebaseUser {
  NewsDroidAppFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

NewsDroidAppFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<NewsDroidAppFirebaseUser> newsDroidAppFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<NewsDroidAppFirebaseUser>(
            (user) => currentUser = NewsDroidAppFirebaseUser(user));
