import 'package:coin/pages/login/widgets/login_screen_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  // const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;
  bool _isObscure = false;

  Widget buildUsernameTextField() {
    return Container(
      alignment: Alignment.topLeft,
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      height: 56.0,
      width: 350.0,
      // ignore: prefer_const_constructors
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(70.0),
              borderSide: const BorderSide(
                color: Color.fromRGBO(211, 211, 211, 1),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(70.0),
              borderSide: const BorderSide(
                color: Color.fromRGBO(211, 211, 211, 1),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(70.0),
              borderSide: const BorderSide(
                color: Color.fromRGBO(211, 211, 211, 1),
              ),
            ),
            contentPadding: const EdgeInsets.fromLTRB(27.0, 20.0, 0.0, 20.0),
            // prefixIcon: Icon(
            //   Icons.email,
            //   color: Colors.white,
            // )),
            hintText: 'Username',
            hintStyle: const TextStyle(
              color: Color.fromRGBO(186, 186, 186, 1),
              fontSize: 16.0,
              fontWeight: FontWeight.normal,
            )
            // hintStyle:
            ),
      ),
    );
  }

  Widget buildPasswordTextField() {
    return Container(
      alignment: Alignment.topLeft,
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      height: 56.0,
      width: 350.0,
      // ignore: prefer_const_constructors
      child: TextField(
        obscureText: _isObscure,
        keyboardType: TextInputType.visiblePassword,
        // ignore: prefer_const_constructors
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(70.0),
            borderSide: const BorderSide(
              color: Color.fromRGBO(211, 211, 211, 1),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(70.0),
            borderSide: const BorderSide(
              color: Color.fromRGBO(211, 211, 211, 1),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(70.0),
            borderSide: const BorderSide(
              color: Color.fromRGBO(211, 211, 211, 1),
            ),
          ),
          contentPadding: const EdgeInsets.fromLTRB(27.0, 20.0, 0.0, 20.0),
          suffixIcon: _isObscure
              ? Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 19.0, 22.0, 21.0),
                  child: GestureDetector(
                    onTap: () {
                      print("now text is visible!");
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    child: Image.asset(
                      "assets/images/icons/obscure_text_true.png",
                      width: 24.0,
                      height: 16.0,
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 15.0, 21.0, 16.0),
                  child: GestureDetector(
                    onTap: () {
                      print("now text is invisible!");
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    child: Image.asset(
                      "assets/images/icons/obscure_text_false.png",
                      width: 26.0,
                      height: 25.0,
                    ),
                  )),
          hintText: 'Password',
          hintStyle: const TextStyle(
            color: Color.fromRGBO(186, 186, 186, 1),
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
          ),

          // hintStyle:
        ),
      ),
    );
  }

  Widget buildRememberMeCheckBox() {
    return Container(
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(
              unselectedWidgetColor: const Color.fromRGBO(211, 211, 211, 1),
            ),
            child: Checkbox(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0)),
              value: _rememberMe,
              checkColor: Colors.black,
              activeColor: const Color.fromRGBO(211, 211, 211, 1),
              onChanged: (value) {
                setState(() {
                  _rememberMe = value!;
                });
              },
            ),
          ),
          Container(
            child: _rememberMe
                ? const Text(
                    "Remember me",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                    ),
                  )
                : const Text(
                    "Remember me",
                    style: TextStyle(
                      color: Color.fromRGBO(186, 186, 186, 1),
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
          )
        ],
      ),
    );
  }

  Widget buildEnterButton() {
    return SizedBox(
      width: 350,
      height: 56,
      child: Align(
        alignment: Alignment.center,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(350.0, 56.0),
            primary: const Color.fromRGBO(234, 234, 234, 1),
            shape: const StadiumBorder(),
            elevation: 0.0,
          ),
          onPressed: () {
            // go to home page
          },
          child: const Text(
            "Enter",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildForgetPasswordButton() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Forgot password?",
            style: const TextStyle(
              color: Color.fromRGBO(211, 211, 211, 1),
              fontSize: 14.0,
              fontWeight: FontWeight.normal,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print("Forgot password? button was tapped!");
              },
          ),
        ],
      ),
    );
  }

  Widget buildDontHaveAccountButton() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Don't have an account?",
            style: const TextStyle(
              color: Color.fromRGBO(211, 211, 211, 1),
              fontSize: 14.0,
              fontWeight: FontWeight.normal,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print("Don't have an account button was tapped!");
              },
          ),
        ],
      ),
    );
  }

  Widget buildSignUpButton() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Sign up",
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14.0,
              fontWeight: FontWeight.normal,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print("Sign up button was tapped!");
              },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // background color
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
          // scroll view
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(
                vertical: 120.0,
                horizontal: 40.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SignInText(),
                  const SizedBox(height: 55.0),
                  buildUsernameTextField(),
                  const SizedBox(height: 19.0),
                  buildPasswordTextField(),
                  const SizedBox(height: 25.0),
                  buildRememberMeCheckBox(),
                  const SizedBox(height: 58.0),
                  buildEnterButton(),
                  const SizedBox(height: 12.0),
                  buildForgetPasswordButton(),
                  const SizedBox(height: 191.0),
                  buildDontHaveAccountButton(),
                  const SizedBox(height: 2.0),
                  buildSignUpButton(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


// class Login extends StatelessWidget {
//   @override
//   Widget buildView(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
//       decoration: const BoxDecoration(
//         color: Colors.white,
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFEF)),
//       home: Scaffold(
//         resizeToAvoidBottomInset: false,
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [],
//         ),
//       ),
//     );
//   }
// }