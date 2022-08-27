// ignore_for_file: sized_box_for_whitespace

import 'package:coin/pages/login/view/login_screen_view.dart';
import 'package:flutter/material.dart';

class SignInText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.only(bottom: 5.0),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.black,
                width: 2.0,
              ),
            ),
          ),
          child: const Text(
            "Sign In",
            style: TextStyle(
              fontSize: 28,
              color: Colors.black,
              // decorationStyle: TextDecorationStyle.dashed,
            ),
          ),
        ),
      ),
    );
  }
}

// class buildUsernameTextField extends State<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.topLeft,
//       // ignore: prefer_const_constructors
//       decoration: BoxDecoration(
//         color: Colors.white,
//       ),
//       height: 56.0,
//       width: 350.0,
//       // ignore: prefer_const_constructors
//       child: TextField(
//         keyboardType: TextInputType.emailAddress,
//         // ignore: prefer_const_constructors
//         style: TextStyle(
//           color: Colors.white,
//           // fontFamily:
//         ),
//         decoration: InputDecoration(
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(70.0),
//           ),
//           contentPadding: EdgeInsets.only(top: 14.0),
//           // prefixIcon: Icon(
//           //   Icons.email,
//           //   color: Colors.white,
//           // )),
//           hintText: 'Username',
//           // hintStyle:
//         ),
//       ),
//     );
//   }
// }

// class InputTextField extends StatefulWidget {}

// class InputTextField extends StatelessWidget {
//   const InputTextField({
//     required this.onChanged,
//     required this.hintText,
//     this.validator,
//     this.obscureText = false,
//     this.keyboardType,
//     this.suffixIcon,
//     this.textInputAction,
//   });
//   final Function(String?) onChanged;
//   final String? Function(String)? validator;
//   final String hintText;
//   final bool obscureText;
//   final TextInputType? keyboardType;
//   final Widget? suffixIcon;
//   final TextInputAction? textInputAction;

//   @override
//   Widget build(BuildContext context) {
//     return InputTextField(
//       onChanged: onChanged,
//       hintText: hintText,
//       validator: validator,
//       obscureText: obscureText,
//       keyboardType: keyboardType ?? TextInputType.text,
//       textInputAction: textInputAction,
//     );
//   }
// }

// class LoginForm extends StatelessWidget {
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(children: [

//       ]),
//     );
//   }
// }
