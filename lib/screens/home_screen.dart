import 'package:flutter/material.dart';
import 'package:flutter_basic_design/widgets/custom_bottom_navigation.dart';
import 'package:flutter_basic_design/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          //Background
          Background(),

          _HomeBody(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(),//Center
    ); //Scaffold
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //Titulos
          PageTitle(),

          //Card table
          CardTable()

        ],
      ),
    );
  }
}