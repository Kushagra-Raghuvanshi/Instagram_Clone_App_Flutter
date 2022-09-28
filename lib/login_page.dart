import 'package:flutter/material.dart';
import 'package:instagram_clone/page.dart';

const List<String> list = <String>[
  'English (United States)',
  'Hindi',
  'French'
];

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String dropdownValue = list.first;
  bool _isObscure = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
            padding: EdgeInsets.zero,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
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
                    height: MediaQuery.of(context).size.height * 0.20,
                  ),
                  Image(
                    image: const AssetImage('assets/Instagram_Logo.png'),
                    width: MediaQuery.of(context).size.width * 0.45,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: const InputDecoration(
                          fillColor: Color.fromARGB(255, 243, 241, 242),
                          filled: true,
                          border: OutlineInputBorder(),
                          // errorStyle: const TextStyle(
                          //   color: Colors.white,
                          // ),
                          hintText: 'Phone number, email or username',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: TextFormField(
                      textInputAction: TextInputAction.done,
                      obscureText: !(_isObscure),
                      style: const TextStyle(color: Colors.black),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          fillColor: const Color.fromARGB(255, 243, 241, 242),
                          filled: true,
                          border: const OutlineInputBorder(),
                          // errorStyle: const TextStyle(
                          //   color: Colors.white,
                          // ),
                          hintText: 'Enter Password',
                          suffixIcon: IconButton(
                              icon: Icon(
                                _isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              }),
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0),
                            ))),
                        onPressed: () {},
                        child: const Text(
                          "Log In",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Forgot your login details? "),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          'Get help logging in',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Row(children: const <Widget>[
                      Expanded(
                          child: Divider(
                        thickness: 2,
                      )),
                      Text("OR"),
                      Expanded(
                          child: Divider(
                        thickness: 2,
                      )),
                    ]),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: TextButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0x00000000)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0),
                            ))),
                        onPressed: () {},
                        child: Row(children: [
                          Image(
                            image: const AssetImage('assets/facebook_Logo.jpg'),
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          const Text(
                            "Log In with Facebook",
                            style: TextStyle(color: Colors.blue, fontSize: 14),
                          )
                        ])),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account? "),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const page()),
                          );
                        },
                        child: const Text(
                          'Sign Up.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                ])),
      ),
    );
  }
}
