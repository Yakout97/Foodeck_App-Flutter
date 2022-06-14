import 'package:flutter/material.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        toolbarHeight: 88,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Forgot Password',
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: SizedBox(
                        width: 328,
                        height: 62,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Reset',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
