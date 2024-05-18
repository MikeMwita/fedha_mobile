import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends AuthState<ResetPasswordPage> {
  bool _isLoading = false;
  late final TextEditingController _passwordController;
  late final TextEditingController _passwordVerifyController;

  @override
  void initState() {
    _passwordController = TextEditingController();
    _passwordVerifyController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _passwordVerifyController.dispose();
    super.dispose();
  }

  Future<void> _resetPassword() async {
    if (!validatePassword()) {
      context.showErrorSnackBar(message: "Passwords do not match");
      return;
    }

    setState(() {
      _isLoading = true;
    });

    final response = await supabase.auth.api.updateUser(
        supabase.auth.currentSession!.accessToken,
        UserAttributes(password: _passwordController.text));
    final error = response.error;
    if (error != null) {
      context.showErrorSnackBar(message: error.message);
    } else {
      context.showSnackBar(message: 'Password updated');
      _passwordController.clear();
      _passwordVerifyController.clear();
      Navigator.of(context)
          .pushNamedAndRemoveUntil('/account', (route) => false);
    }

    setState(() {
      _isLoading = false;
    });
  }

  bool validatePassword() {
    return _passwordController.text.length > 5 &&
        _passwordController.text == _passwordVerifyController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reset Password')),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
        children: [
          TextFormField(
            controller: _passwordController,
            decoration: const InputDecoration(labelText: 'Password'),
            obscureText: true,
          ),
          TextFormField(
            controller: _passwordVerifyController,
            decoration: const InputDecoration(labelText: 'Verify Password'),
            obscureText: true,
          ),
          ElevatedButton(
            onPressed: _isLoading ? null : _resetPassword,
            child: Text(_isLoading
                ? 'Loading'
                : validatePassword()
                    ? 'Update Password'
                    : 'Verify Passwords'),
          )
        ],
      ),
    );
  }
}
