import 'package:flutter/material.dart';
import 'package:themoviedb/Theme/app_button_style.dart';

// ignore: unused_element
class AuthScreenWidget extends StatefulWidget {
  const AuthScreenWidget({Key? key}) : super(key: key);

  @override
  State<AuthScreenWidget> createState() => _AuthScreenWidgetState();
}

class _AuthScreenWidgetState extends State<AuthScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login to your account'),
      ),
      body: ListView(
        children: const [
          _HeaderWidget(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(
      fontSize: 16,
      color: Colors.black,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 25,
          ),
          const _FromWidget(),
          const SizedBox(
            height: 25,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer interdum mattis interdum. Praesent at ornare justo.Vestibulum non lectus id velit maximus elementum ac at risus. Sed sollicitudin non purus vitae ullamcorper.  ',
            style: textStyle,
          ),
          const SizedBox(
            height: 5,
          ),
          TextButton(
            style: AppButtonStyle.linkButton,
            onPressed: () {},
            child: const Text('Register'),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer interdum mattis interdum. Praesent at ornare justo. Vestibulum non lectus id velit maximus elementum ac at risus. Sed sollicitudin non purus vitae ullamcorper. Nulla pellentesque tellus est, vel cursus massa porta vel. ',
            style: textStyle,
          ),
          const SizedBox(
            height: 5,
          ),
          TextButton(
            style: AppButtonStyle.linkButton,
            onPressed: () {},
            child: const Text('Verify email'),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}

class _FromWidget extends StatefulWidget {
  const _FromWidget({Key? key}) : super(key: key);

  @override
  State<_FromWidget> createState() => _FromWidgetState();
}

class _FromWidgetState extends State<_FromWidget> {
  final _loginTextController = TextEditingController(text: 'admin');
  final _passwordTextController = TextEditingController(text: 'admin');
  String? errorText;

  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    if (login == 'admin' && password == 'admin') {
      errorText = null;

      Navigator.of(context).pushReplacementNamed('/main_screen');
    } else {
      errorText = 'Не верный логин или пароль';
    }
    setState(() {});
  }

  void _resetPassword() {
    print('reset password');
  }

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(
      fontSize: 16,
      color: Color(0xFF212529),
    );
    InputDecoration textFieldDecorator = const InputDecoration(
      filled: true,
      border: OutlineInputBorder(
        borderSide: BorderSide(
          width: 1,
          color: Colors.black,
        ),
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      isCollapsed: true,
    );
    final errorText = this.errorText;
    Color color = const Color(0xFF01B4E4);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (errorText != null) ...[
          Text(errorText,
              style: const TextStyle(
                color: Colors.red,
                fontSize: 17,
              )),
          const SizedBox(
            height: 5,
          ),
        ],
        Text(
          'Username',
          style: textStyle,
        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          controller: _loginTextController,
          decoration: textFieldDecorator,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'Password',
          style: textStyle,
        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          controller: _passwordTextController,
          decoration: textFieldDecorator,
          obscureText: true,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: _auth,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  color,
                ),
                foregroundColor: MaterialStateProperty.all(
                  Colors.white,
                ),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 8,
                  ),
                ),
              ),
              child: const Text('Login'),
            ),
            const SizedBox(
              width: 30,
            ),
            TextButton(
              onPressed: _resetPassword,
              style: AppButtonStyle.linkButton,
              child: const Text(
                'Reset password',
              ),
            ),
          ],
        )
      ],
    );
  }
}
