import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedpractice/views/login/login_viewmodel.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.nonReactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, _) => const Scaffold(
        body: Center(
          child: Text("Home"),
        ),
      ),
    );
  }
}
