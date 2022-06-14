import 'package:flutter/material.dart';

class Otp extends StatelessWidget {
  // final routes = 'creat_account';

  const Otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        toolbarHeight: 88,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'OTP',
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
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
                  'Confirm the code we sent you',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 76,
                  width: 76,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    autocorrect: false,
                    expands: false,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      counterText: '',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      floatingLabelStyle:
                          TextStyle(color: Theme.of(context).primaryColor),
                      labelStyle: TextStyle(color: Color(0xfffAEAEB2)),
                      border: InputBorder.none,
                      isDense: false,
                      // labelText: 'num',
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xfffAEAEB2), width: 1.1),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).primaryColor, width: 1.1),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 76,
                  width: 76,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    autocorrect: false,
                    expands: false,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      counterText: '',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      floatingLabelStyle:
                          TextStyle(color: Theme.of(context).primaryColor),
                      labelStyle: TextStyle(color: Color(0xfffAEAEB2)),
                      border: InputBorder.none,
                      isDense: false,
                      // labelText: 'num',
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xfffAEAEB2), width: 1.1),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).primaryColor, width: 1.1),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 76,
                  width: 76,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    autocorrect: false,
                    expands: false,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      counterText: '',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      floatingLabelStyle:
                          TextStyle(color: Theme.of(context).primaryColor),
                      labelStyle: TextStyle(color: Color(0xfffAEAEB2)),
                      border: InputBorder.none,
                      isDense: false,
                      // labelText: 'num',
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xfffAEAEB2), width: 1.1),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).primaryColor, width: 1.1),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 76,
                  width: 76,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    autocorrect: false,
                    expands: false,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      counterText: '',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      floatingLabelStyle:
                          TextStyle(color: Theme.of(context).primaryColor),
                      labelStyle: TextStyle(color: Color(0xfffAEAEB2)),
                      border: InputBorder.none,
                      isDense: false,
                      // labelText: 'num',
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xfffAEAEB2), width: 1.1),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).primaryColor, width: 1.1),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(24, 10, 0, 40),
            child: Text('Resend'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: ElevatedButton(
              onPressed: () {},
              child: SizedBox(
                width: 328,
                height: 62,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Confirm',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
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
    );
  }
}
