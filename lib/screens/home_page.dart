import 'package:flutter/material.dart';
import 'package:todo_hive1/screens/components/bottombar.dart';
import 'package:todo_hive1/screens/components/custom_appbar.dart';
import 'package:todo_hive1/screens/components/list_button.dart';
import 'package:todo_hive1/screens/components/list_data.dart';
import 'package:todo_hive1/screens/components/searchbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: const CustomBottomBar(),
      body: SafeArea(
        child: ListView(
          children: const [
            CustomAppBar(),
            SearchBar(),
            ListButtonContainer(),
            Listdata(),
          ],
        ),
      ),
    );
  }
}
