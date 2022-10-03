import 'package:flutter/material.dart';
import 'package:instagram_clone/login_page.dart';

class EmailOrPhone extends StatefulWidget {
  const EmailOrPhone({Key? key}) : super(key: key);

  @override
  State<EmailOrPhone> createState() => _EmailOrPhoneState();
}

class _EmailOrPhoneState extends State<EmailOrPhone> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                Image(
                  image: const AssetImage('assets/template_photo.png'),
                  width: MediaQuery.of(context).size.width * 0.45,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                const DefaultTabController(
                    initialIndex: 1,
                    length: 2,
                    child: TabBar(indicatorColor: Colors.black, tabs: <Widget>[
                      Text(
                        "PHONE",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Text(
                        "EMAIL",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      )
                    ])),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
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
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: TextButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                          ))),
                      onPressed: () {},
                      child: const Text(
                        "Next",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
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
                    const Text("Already have an account? "),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                      child: const Text(
                        'Login.',
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
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
              ])),
        ),
      ),
    );
  }
}
