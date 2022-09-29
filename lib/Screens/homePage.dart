import 'package:easydeli/constants/myButton.dart';
import 'package:easydeli/constants/myColor.dart';
import 'package:easydeli/constants/myImage.dart';
import 'package:easydeli/constants/myText.dart';
import 'package:easydeli/constants/myTextFormField.dart';
import 'package:easydeli/constants/size_config.dart';
import 'package:easydeli/constants/validator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

int _selectedIndex = 0;

TextEditingController codeEditingController = TextEditingController();

class _HomePageState extends State<HomePage> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(21, 47, 21, 0),
          child: SingleChildScrollView(
            child: Center(
              child: _pages.elementAt(_selectedIndex),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color(0xff292D32),
          unselectedItemColor: const Color(0xff292D32),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/home.png')),
                label: ''),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/truck-fast.png')),
                label: ''),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/setting-2.png')),
                label: ''),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/profile-circle.png')),
                label: ''),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped),
    );
  }
}

const List<Widget> _pages = <Widget>[
  Home(),
  Icon(
    Icons.call,
    size: 150,
  ),
  Icon(
    Icons.camera,
    size: 150,
  ),
  Icon(
    Icons.chat,
    size: 150,
  ),
];

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          myText(
            data: 'Hello, ',
            color: Palette.kTextColor,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
          myText(
            data: 'User FirstNmae',
            color: Palette.kTextColor,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ],
      ),
      const SizedBox(height: 6),
      KTextFormField(
          hint: 'Enter tracking code',
          textEditingController: codeEditingController,
          keyboardType: TextInputType.name,
          obscureText: false,
          validator: Validator().validateFullName,
          width: getProportionateScreenWidth(336),
          isPasswordType: false),
      const SizedBox(height: 16),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          myButton2(
              height: 134,
              width: getProportionateScreenWidth(156),
              color: Palette.kColorWhite,
              borderRadius: 5,
              child: Column(
                children: [
                  const SizedBox(height: 5),
                  myImage('assets/images/box-tick.png'),
                  const SizedBox(height: 20),
                  const myText(data: 'Deliver Package')
                ],
              )),
          const Spacer(),
          myButton2(
              height: 134,
              width: getProportionateScreenWidth(156),
              color: Palette.kColorWhite,
              borderRadius: 5,
              child: Column(
                children: [
                  const SizedBox(height: 5),
                  myImage('assets/images/empty-wallet.png'),
                  const SizedBox(height: 20),
                  const myText(data: 'Fund Wallet')
                ],
              )),
        ],
      ),
      const SizedBox(height: 32),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          myButton2(
              height: 134,
              width: getProportionateScreenWidth(156),
              color: Palette.kColorWhite,
              borderRadius: 5,
              child: Column(
                children: [
                  const SizedBox(height: 5),
                  myImage('assets/images/align-left.png'),
                  const SizedBox(height: 20),
                  const myText(data: 'Track History')
                ],
              )),
          const Spacer(),
          myButton2(
              height: 134,
              width: getProportionateScreenWidth(156),
              color: Palette.kColorWhite,
              borderRadius: 5,
              child: Column(
                children: [
                  const SizedBox(height: 5),
                  myImage('assets/images/bag-2.png'),
                  const SizedBox(height: 20),
                  const myText(data: 'Track an Item')
                ],
              )),
        ],
      ),
    ]);
  }
}
