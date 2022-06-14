import 'package:flutter/material.dart';

class CreatAccount extends StatelessWidget {
  // final routes = 'creat_account';

  const CreatAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        toolbarHeight: 88,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Create an account',
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 8,
              color: Color(0xfffF2F2F7),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 24, 0, 16),
              child: Column(
                children: [
                  Text(
                    'Input your credentials',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Column(
                children: [
                  SizedBox(
                    height: 74,
                    width: MediaQuery.of(context).size.width * 1,
                    child: TextFormField(
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        floatingLabelStyle:
                            TextStyle(color: Theme.of(context).primaryColor),
                        labelStyle: TextStyle(color: Color(0xfffAEAEB2)),
                        border: InputBorder.none,
                        isDense: false,
                        labelText: 'Name',
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xfffAEAEB2), width: 1.1),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1.1),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 74,
                    width: MediaQuery.of(context).size.width * 1,
                    child: TextFormField(
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        floatingLabelStyle:
                            TextStyle(color: Theme.of(context).primaryColor),
                        labelStyle: TextStyle(color: Color(0xfffAEAEB2)),
                        border: InputBorder.none,
                        isDense: false,
                        labelText: 'Email',
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xfffAEAEB2), width: 1.1),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1.1),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 74,
                    width: MediaQuery.of(context).size.width * 1,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        floatingLabelStyle:
                            TextStyle(color: Theme.of(context).primaryColor),
                        labelStyle: TextStyle(color: Color(0xfffAEAEB2)),
                        border: InputBorder.none,
                        isDense: false,
                        labelText: 'Phone No.',
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xfffAEAEB2), width: 1.1),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1.1),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 74,
                    width: MediaQuery.of(context).size.width * 1,
                    child: TextFormField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        floatingLabelStyle:
                            TextStyle(color: Theme.of(context).primaryColor),
                        labelStyle: TextStyle(color: Color(0xfffAEAEB2)),
                        border: InputBorder.none,
                        isDense: false,
                        labelText: 'Password',
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xfffAEAEB2), width: 1.1),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1.1),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('otp');
                      },
                      child: Container(
                        width: 328,
                        height: 62,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Create an account',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop('login_email');
                      },
                      child: Container(
                        width: 328,
                        height: 62,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Login instead',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xfff8E8E93)),
                            ),
                          ],
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Color(0xff8E8E93), width: 1),
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
