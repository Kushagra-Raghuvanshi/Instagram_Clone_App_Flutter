import 'package:flutter/material.dart';
import 'package:instagram_clone/email_or_phone.dart';
import 'package:instagram_clone/login_page.dart';

const List<String> list = <String>[
  'English (United States)',
  'Hindi',
  'French'
];

class page extends StatefulWidget {
  const page({Key? key}) : super(key: key);

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            DropdownButton<String>(
              value: dropdownValue,
              // icon: const Icon(Icons.arrow_downward),
              elevation: 0,
              style: const TextStyle(color: Colors.grey),
              underline: Container(
                height: 0,
              ),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Image(
              image: const AssetImage('assets/Instagram_Logo.png'),
              width: MediaQuery.of(context).size.width * 0.45,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.06,
              child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EmailOrPhone()),
                    );
                  },
                  child: const Text(
                    "Create new account",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: const Text(
                'Log In',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ]),
    ));
  }
}
