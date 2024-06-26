import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:quiz_prokit/Screens/QuizDashboard.dart';
import 'package:quiz_prokit/Screens/QuizHome.dart';
import 'package:quiz_prokit/Screens/QuizProfile.dart';
import 'package:quiz_prokit/Screens/QuizSignUp.dart';
import 'package:quiz_prokit/utils/AppWidget.dart';
import 'package:quiz_prokit/utils/QuizColors.dart';
import 'package:quiz_prokit/utils/QuizStrings.dart';
import 'package:quiz_prokit/utils/QuizWidget.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';
import 'package:supabase_flutter/supabase_flutter.dart'; // Supabase paketini import ettik

class QuizSignIn extends StatefulWidget {
  static String tag = '/QuizSignIn';

  @override
  _QuizSignInState createState() => _QuizSignInState();
}

class _QuizSignInState extends State<QuizSignIn> {
  final SupabaseClient supabase = Supabase.instance.client;
  bool isContinue = false;

  @override
  void initState() {
    super.initState();
    // auth state changes'ı dinleyin
    supabase.auth.onAuthStateChange.listen((data) {
      final AuthChangeEvent event = data.event;
      final Session? session = data.session;

      if (event == AuthChangeEvent.signedIn && session != null) {
        // Kullanıcı başarılı bir şekilde giriş yaptı
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => QuizDashboard()),
        );
      }
    });
  }

  Future<void> _signInWithGoogle() async {
    try {
      await supabase.auth.signInWithOAuth(
          OAuthProvider.google); // OAuthProvider.google kullandık
    } catch (error) {
      print('Error signing in: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            //height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                24.height,
                Text(quiz_title_login, style: boldTextStyle(size: 18)),
                8.height,
                Text(quiz_info_login,
                        style: primaryTextStyle(color: quiz_textColorSecondary))
                    .center(),
/*                 Container(
                  margin: EdgeInsets.all(24.0),
                  decoration: boxDecoration(
                      bgColor: context.cardColor, showShadow: true, radius: 10),
                  child: Column(
                    children: <Widget>[
                      quizEditTextStyle(quiz_hint_your_email,
                          isPassword: false),
                      quizDivider(),
                      quizEditTextStyle(quiz_hint_your_password),
                    ],
                  ),
                ),
                30.height,
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(quiz_lbl_don_t_have_an_account,
                          style: primaryTextStyle()),
                      4.height,
                      Text(quiz_lbl_create_account,
                          style: boldTextStyle(color: quiz_colorPrimary)),
                    ],
                  ),
                ).onTap(
                  () {
                    setState(
                      () {
                        QuizSignUp().launch(context);
                      },
                    );
                  },
                ),
                8.height,
                Container(
                  margin: EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      quizButton(
                        textContent: quiz_lbl_continue,
                        onPressed: () {
                          setState(
                            () {
                              QuizDashboard().launch(context);
                            },
                          );
                        },
                      ),
                      16.height,
                      ElevatedButton(
                        onPressed: _signInWithGoogle,
                        child: Text('Sign in with Google'),
                      ),
                    ],
                  ),
                ), */
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                  child: SupaEmailAuth(
                    redirectTo: kIsWeb
                        ? null
                        : 'https://bdwaxhghrooyeemeplll.supabase.co/auth/v1/callback',
                    onSignInComplete: (response) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => QuizHome()));

                      if (response == null) {
                        // Successfully signed in
                        print('Signed in successfully');
                      } else {
                        // Sign in failed
                        print('Sign in failed: ${response}');
                      }
                    },
                    onSignUpComplete: (response) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => QuizSignIn()));
                      if (response == null) {
                        // Successfully signed up
                        print('Signed up successfully');
                      } else {
                        // Sign up failed
                        print('Sign up failed: ${response}');
                      }
                    },
                    metadataFields: [
                      MetaDataField(
                        prefixIcon: const Icon(Icons.person),
                        label: 'Username',
                        key: 'username',
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'Please enter something';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: _signInWithGoogle,
                  child: Text('Sign in with Google'),
                ),
                Visibility(
                  visible: isContinue,
                  child: quizButton(
                    textContent: quiz_lbl_continue,
                    onPressed: () {
                      setState(
                        () {
                          QuizDashboard().launch(context);
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
