import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:screenshot/screenshot.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:alert/alert.dart';

class relation extends StatefulWidget {
  // const relation({super.key});
  late String s1;
  late String s2;
  late String result;
  relation({required this.s1, required this.s2, required this.result});
  @override
  State<relation> createState() => _relationState(s1, s2, result);
}

class _relationState extends State<relation> {
  late String s1;
  late String s2;
  late String result;
  _relationState(this.s1, this.s2, this.result);
  final controller = ScreenshotController();
  @override
  Widget build(BuildContext context) {
    return Screenshot(
      controller: controller,
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 25, 0, 0),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: (() {
                            Navigator.of(context).pop();
                          }),
                          icon: const Icon(Icons.arrow_back_ios)),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 10,
                      ),
                      const Text(
                        'Relation Card',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )),
            buildimage(),
            GestureDetector(
              onTap: () async {
                final image = await controller.captureFromWidget(buildimage());

                if (image == null) return;

                await saveImage(image);
                //  await AlertDialog(
                //   title: Text("Image Downloaded"),
                //   content: Text("Check image in Gallery"),
                //   actions: [
                //     okbutton(context)
                //   ],
                // );
                Alert(message: 'ok', shortDuration: true).show();
              },
              child: Text('Click here to download',
                  style: TextStyle(
                      color: Color.fromARGB(47, 0, 0, 0),
                      fontWeight: FontWeight.w200,
                      fontFamily: 'Poppins',
                      fontSize: 12)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.height * 0.7,
              child: Lottie.asset('Assets/loop.json'),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Note : Use small names for clear realtion card',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Color.fromARGB(47, 0, 0, 0),
                      fontWeight: FontWeight.w200,
                      fontFamily: 'Poppins',
                      fontSize: 12)),
            ),
          ],
        ),
      ),
    );
  }

  Future<String> saveImage(Uint8List bytes) async {
    await [Permission.storage].request();
    final time = DateTime.now()
        .toIso8601String()
        .replaceAll('.', '_')
        .replaceAll(':', '_');
    final name = 'Flamer_$time';
    final result = await ImageGallerySaver.saveImage(bytes, name: name);
    return result['filepath'];
  }

  // Widget okbutton(context) => TextButton(onPressed: (){ Navigator.of(context).pop();},  child: Text("OK"),);
  Widget buildimage() => GestureDetector(
        onTap: () async {
          final image = await controller.captureFromWidget(buildimage());
        },
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 0, 10, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20), // Image border

                child: Image.asset('Assets/card.jpg',
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.93,
                    fit: BoxFit.fill),
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width * 0.06,
              bottom: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'Assets/profile.png',
                        height: 100,
                        width: 100,
                        fit: BoxFit.fill,
                      ),
                      Text(
                        s1,
                        overflow: TextOverflow.fade,
                        style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 110,
                    child: Center(
                        child: GradientText(result,
                            gradientType: GradientType.linear,
                            colors: const [
                              Color.fromARGB(255, 251, 0, 255),
                              Colors.white,
                              Color.fromARGB(255, 251, 0, 255),
                            ],
                            style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.italic))),
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'Assets/profile.png',
                        height: 100,
                        width: 100,
                        fit: BoxFit.fill,
                      ),
                      Text(
                        s2,
                        style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
}
