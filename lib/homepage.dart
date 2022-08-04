import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/gg.dart';
import 'package:lottie/lottie.dart';
import 'package:flamesapp/flames.dart';
import 'package:flamesapp/relation.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  late var s1;
  late var s2;
  String result = '';
  final controller = TextEditingController();
  final controller1 = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _formKeys = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap:
        () => FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            SizedBox(
                height: 100,
                width: 500,
                child: Image.asset('Assets/flamer.png')),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.08,
                  0,
                  MediaQuery.of(context).size.width * 0.08,
                  0),
              child: Form(
                key: _formKeys,
                child: TextFormField(
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Text is empty';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontSize: 17,
                  ),
                  controller: controller,
                  onChanged: (Text) {
                    setState(() {
                      s1 = Text;
                    });
                  },
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      isDense: true,
                      //contentPadding:  EdgeInsets.fromLTRB(7.0,0,0,0),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                        child: const Iconify(
                          Gg.boy,
                          size: 20,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 255, 0, 247),
                            width: 4.0),
                      ),
                      //labelText: 'Enter Name',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          width: 4,
                          color: Color.fromARGB(255, 255, 0, 247),
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          width: 4,
                          color: Color.fromARGB(255, 255, 0, 247),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          width: 4,
                          color: Color.fromARGB(255, 255, 0, 247),
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          width: 4,
                          color: Color.fromARGB(255, 255, 0, 247),
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          width: 4,
                          color: Color.fromARGB(255, 255, 0, 247),
                        ),
                      ),
                      hintText: 'Enter First Name',
                      hintStyle: const TextStyle(
                          color: Color.fromARGB(47, 0, 0, 0),
                          fontWeight: FontWeight.w200,
                          fontFamily: 'Poppins',
                          fontSize: 16)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.08,
                  0,
                  MediaQuery.of(context).size.width * 0.08,
                  0),
              child: Form(
                key: _formKey,
                child: TextFormField(
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Text is empty';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontSize: 17,
                  ),
                  controller: controller1,
                  onChanged: (Text) {
                    setState(() {
                      s2 = Text;
                    });
                  },
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      isDense: true,
                      //contentPadding:  EdgeInsets.fromLTRB(7.0,0,0,0),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                        child: const Iconify(
                          Gg.girl,
                          size: 20,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 255, 0, 247),
                            width: 4.0),
                      ),
                      //labelText: 'Enter Name',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          width: 4,
                          color: Color.fromARGB(255, 255, 0, 247),
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          width: 4,
                          color: Color.fromARGB(255, 255, 0, 247),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          width: 4,
                          color: Color.fromARGB(255, 255, 0, 247),
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          width: 4,
                          color: Color.fromARGB(255, 255, 0, 247),
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          width: 4,
                          color: Color.fromARGB(255, 255, 0, 247),
                        ),
                      ),
                      hintText: 'Enter Second Name',
                      hintStyle: const TextStyle(
                          color: Color.fromARGB(47, 0, 0, 0),
                          fontWeight: FontWeight.w200,
                          fontFamily: 'Poppins',
                          fontSize: 16)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: GestureDetector(
                onTap: (() {
                  if (_formKey.currentState!.validate() &&
                      _formKeys.currentState!.validate()) {
                    // TODO submit

                    setState(() {
                      result = flames(s1.toString(), s2.toString());
                    });
                  }
                  FocusScope.of(context).unfocus();
                }),
                child: Container(
                  height: 48,
                  width: 179,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 0, 247),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 182, 182, 182),
                        offset: Offset(4, 4),
                        blurRadius: 20,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4, -4),
                        blurRadius: 15,
                      )
                    ],
                  ),
                  child: const Center(
                      child: Text('FLAMES',
                          style: TextStyle(
                              letterSpacing: 2.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 20))),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.height * 0.35,
                child: result == 'Friends'
                    ? Lottie.asset('Assets/friend.json')
                    : (result == 'Lovers'
                        ? Lottie.asset('Assets/love.json')
                        : result == 'Marriage'
                            ? Lottie.asset('Assets/marraige.json')
                            : result == 'Enemies'
                                ? Lottie.asset('Assets/enemy.json')
                                : result == 'Siblings'
                                    ? Lottie.asset('Assets/sibling.json')
                                    : result == 'Affectionate'
                                        ? Lottie.asset('Assets/feeling.json')
                                        : null)),
            Text(
              result,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Material(
                  color: Colors.transparent,
                  child: Ink(
                    decoration: const ShapeDecoration(
                      color: Color.fromARGB(255, 255, 0, 247),
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.credit_card),
                      color: Colors.white,
                      onPressed: () {
                        if (_formKey.currentState!.validate() &&
                            _formKeys.currentState!.validate()) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => relation(
                                  s1: s1.toString(),
                                  s2: s2.toString(),
                                  result: result.toString())));
                        }
                        FocusScope.of(context).unfocus();
                      },
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
