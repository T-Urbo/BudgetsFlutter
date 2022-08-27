import 'package:coin/pages/login/widgets/login_screen_widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;

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
            contentPadding: const EdgeInsets.fromLTRB(27.0, 20, 0, 20),
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
          contentPadding: const EdgeInsets.fromLTRB(27.0, 20, 0, 20),
          // prefixIcon: Icon(
          //   Icons.email,
          //   color: Colors.white,
          // )),
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
                  //SignInText
                  SignInText(),
                  //Free space
                  const SizedBox(height: 55.0),
                  // Username TextField
                  buildUsernameTextField(),
                  // Free space
                  const SizedBox(height: 19.0),
                  // Password TextField
                  buildPasswordTextField(),
                  // Free space
                  const SizedBox(height: 25.0),
                  // Remember me CheckBox
                  buildRememberMeCheckBox(),
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