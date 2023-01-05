import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedpractice/views/login/login_viewmodel.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.nonReactive(
      viewModelBuilder: () => LoginViewModel(),
      builder: (context, viewModel, _) => Scaffold(
          body: Column(
        children: [
          TextField(
            controller: viewModel.emailController,
            decoration: const InputDecoration(
              hintText: 'Email',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: viewModel.passwordController,
            decoration: const InputDecoration(
              hintText: 'Password',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              viewModel.login();
            },
            child: const Text('Login'),
          ),
        ],
      )),
    );
  }
}
