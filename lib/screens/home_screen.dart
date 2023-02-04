import 'package:flutter/material.dart';
import 'package:flutter_ui_designs/widgets/background.dart';
import 'package:flutter_ui_designs/widgets/card_table.dart';
import 'package:flutter_ui_designs/widgets/custom_bottom_navigation.dart';
import 'package:flutter_ui_designs/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Background(), _HomeBody()],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        //Titles
        PageTitle(),
        //Card Table
        CardTable()
      ]),
    );
  }
}
