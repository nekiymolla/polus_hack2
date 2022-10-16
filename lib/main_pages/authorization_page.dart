import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Widget _button() {
    final ButtonStyle Elstyle = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      padding:
          const EdgeInsets.only(left: 120, top: 20, bottom: 20, right: 120),
      foregroundColor: const Color(0xFF373A36),
      backgroundColor: const Color(0xFF373A36),
    );
    return ElevatedButton(
      style: Elstyle,
      onPressed: () async {
        Navigator.pushReplacementNamed(context, '/main');
      },
      child: const Text(
        'Войти',
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }

  Widget _inputAuth(
      String hint, TextEditingController controller, bool obscure) {
    return Container(
      height: 40,
      padding: const EdgeInsets.only(left: 50, right: 50),
      alignment: Alignment.center,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        cursorColor: Colors.black,
        controller: controller,
        obscureText: obscure,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontFamily: 'calibri',
        ),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white, width: 0.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white, width: 0.0),
          ),
          filled: true,
          focusColor: const Color(0xFFBF5AF2),
          fillColor: Colors.white,
          hintStyle: const TextStyle(
              fontSize: 14, color: Colors.white, fontFamily: 'Stem-Regular'),
          hintText: hint,
        ),
      ),
    );
  }

  Widget _formLogin() {
    return Column(
      children: <Widget>[
        const Text(
          'Авторизация',
          style: TextStyle(
              fontSize: 28, color: Colors.white, fontFamily: 'Stem-Bold'),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.only(right: 220),
          child: Text(
            'Логин',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        const SizedBox(height: 5),
        _inputAuth('', _emailController, false),
        const SizedBox(height: 15),
        const Padding(
          padding: EdgeInsets.only(right: 210),
          child: Text(
            'Пароль',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        const SizedBox(height: 5),
        _inputAuth('', _passwordController, true),
        const SizedBox(height: 20),
        _button(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          constraints: const BoxConstraints.expand(),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/pages/auth_landing.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(
                  right: 200,
                  top: 40,
                ),
                child: Image(
                  width: 150,
                  image: AssetImage('assets/images/logo/logo.png'),
                ),
              ),
              const SizedBox(height: 50),
              _formLogin(),
            ],
          ),
        ),
      ),
    );
  }
}
