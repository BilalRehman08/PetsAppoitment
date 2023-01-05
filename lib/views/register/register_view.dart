import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedpractice/views/register/register_viewmodel.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegisterViewModel>.nonReactive(
      viewModelBuilder: () => RegisterViewModel(),
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
              viewModel.signUp();
            },
            child: const Text('Register'),
          ),
        ],
      )),
    );
  }
}
