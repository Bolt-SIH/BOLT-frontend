import '../../file_exported.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:bolt/services/google_authentication.dart';

class GettingStarted extends StatelessWidget {
  const GettingStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: const Text(
          "Bolt ⚡",
          style: TextStyle(
            fontFamily: "Montserrat",
            // fontWeight: FontWeight.w200,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 17),
        height: MediaQuery.of(context).size.height,
        child: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Image.asset("assets/images/GirlReading.png"),
          const Spacer(
            flex: 1,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hello there!",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color(0xffFFAC17),
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  "Let's get started.",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    // fontWeight: FontWeight.w700,
                    fontSize: 25,
                  ),
                ),
                RichText(
                    text: const TextSpan(
                        text: "",
                        style: TextStyle(fontSize: 17),
                        children: [
                      TextSpan(
                        text: "Discover ",
                        style: TextStyle(color: Color(0xffEA4E4E)),
                      ),
                      TextSpan(text: "ideas "),
                      TextSpan(
                        text: "Learn ",
                        style: TextStyle(color: Color(0xffA246AF)),
                      ),
                      TextSpan(text: "and feed "),
                      TextSpan(
                        text: "intellectual ",
                        style: TextStyle(color: Color(0xffFFBBBB)),
                      ),
                      TextSpan(text: " pills to your brain."),
                    ])),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet<void>(
                      // context and builder are
                      // required properties in this widget
                      context: context,
                      builder: (BuildContext context) {
                        // we set up a container inside which
                        // we create center column and display text

                        // Returning SizedBox instead of a Container
                        return Container(
                          height: 290,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 17, vertical: 17),
                          decoration: const BoxDecoration(
                            color: CustomColors.backgroundColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Spacer(
                                flex: 2,
                              ),
                              ElevatedButton.icon(
                                onPressed: () {
                                  try {
                                    final provider =
                                        Provider.of<GoogleSignInProvider>(
                                            context,
                                            listen: false);
                                    provider.googleLogin();
                                    Navigator.pop(context);
                                  } catch (e) {
                                    log(e.toString());
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xffffffff),
                                  onPrimary: const Color(0xff000000),
                                  minimumSize: const Size.fromHeight(60),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                ),
                                label: const Text(
                                  'Continue with Google',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                icon: SvgPicture.asset(
                                  "assets/icons/google.svg",
                                  height: 24,
                                  width: 24,
                                ),
                              ),
                              const Spacer(
                                flex: 4,
                              ),
                              RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(
                                    text:
                                        "By Creating an account , you agree with out ",
                                    style: TextStyle(color: Color(0xff878787)),
                                    children: [
                                      TextSpan(
                                          text: "Terms and Condition ",
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                          )),
                                      TextSpan(
                                        text: "& ",
                                      ),
                                      TextSpan(
                                          text: "Privacy Policy",
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                          )),
                                    ]),
                              ),
                              const Spacer(
                                flex: 1,
                              ),
                              RichText(
                                  text: const TextSpan(
                                      text: "Have an account already ? ",
                                      children: [
                                    TextSpan(
                                        text: "Sign In",
                                        style:
                                            TextStyle(color: Color(0xffEA4E4E)))
                                  ])),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xffE7C1EA),
                      onPrimary: const Color(0xff000000),
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      )),
                  child: const Text('Get Started for free'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                      text: const TextSpan(
                          text: "Have an account already ? ",
                          children: [
                        TextSpan(
                            text: "Sign In",
                            style: TextStyle(color: Color(0xffEA4E4E)))
                      ])),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
