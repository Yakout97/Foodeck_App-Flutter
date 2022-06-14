import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatelessWidget {
  final routes = 'login_email';
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              child: Image.asset(
                'images/Login_iamge.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {},
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.80,
                  height: 62,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/GoogleLogo.svg'),
                      const Text(
                        '  Login via Google',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffDD4B39),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {},
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.80,
                  height: 62,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/FacebookLogo.svg'),
                      const Text(
                        '  Login via Facebook',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff3B5998),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {},
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.80,
                  height: 62,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/AppleLogo.svg'),
                      const Text(
                        '  Login via Apple',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff000000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(routes);
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.80,
                  height: 62,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/EnvelopeSimple.svg'),
                      const Text(
                        '  Login via Email',
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
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('creat_account');
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.80,
                  height: 62,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Create an account',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color(0xfff8E8E93)),
                      ),
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Color(0xff8E8E93), width: 1),
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('Home');
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.80,
                  height: 62,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Test Login',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color(0xfff8E8E93)),
                      ),
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Color(0xff8E8E93), width: 1),
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20),
                child: RichText(
                    text: TextSpan(
                        style: const TextStyle(color: Color(0xff8E8E93)),
                        children: <TextSpan>[
                      const TextSpan(
                          text: 'By signing up, you are agreeing to our '),
                      TextSpan(
                          text: 'Terms &\nConditions',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor))
                    ]))),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
