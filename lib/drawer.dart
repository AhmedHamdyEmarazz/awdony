import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:random_quraan/bond.dart';
import 'package:random_quraan/listSuras.dart';

class AppDrawerr extends StatefulWidget {
  @override
  _AppDrawerrState createState() => _AppDrawerrState();
}

class _AppDrawerrState extends State<AppDrawerr> {
  @pragma('vm:entry-point')
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final eight = size.width * 0.8;
    return Drawer(
        width: eight,
        child: Container(
            height: 500,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  AppBar(
                    elevation: 0,
                    backgroundColor: Color.fromARGB(255, 252, 250, 250),
                    foregroundColor: Colors.black,
                    centerTitle: true,
                    toolbarHeight: 80,
                    title: Center(
                        child: SizedBox(
                            //   height: 100,
                            //   width: double.infinity,
                            child: Image.asset(
                      'assets/quraansmall.jpeg',
                      fit: BoxFit.contain,
                    ))),
                    automaticallyImplyLeading: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(
                              eight * 0.1, 3, eight * 0.1, 3),
                          child: ListTile(
                              tileColor:
                                  const Color.fromARGB(46, 158, 158, 158),
                              splashColor: Colors.amber,
                              leading: const Icon(Icons.home_outlined),
                              //      minLeadingWidth: 100,
                              title: Center(
                                  child: const Text(
                                'الرئيسية',
                                textAlign: TextAlign.center,
                                //    overflow: TextOverflow.visible,
                                style: const TextStyle(
                                  fontFamily: 'Tajawal',
                                ),
                              )),
                              onTap: () async {
                                Future.delayed(
                                    const Duration(milliseconds: 500), (() {
                                  Navigator.pushReplacementNamed(
                                      context, Bond.routeName);
                                }));
                              }))),
                  //  const Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(
                              eight * 0.1, 3, eight * 0.1, 3),
                          child: ListTile(
                            tileColor: const Color.fromARGB(46, 158, 158, 158),
                            splashColor: Colors.amber,
                            leading: const Icon(Icons.book),
                            title: Center(
                                child: const Text(
                              'سور القران الكريم',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12),
                            )),
                            onTap: () {
                              Future.delayed(const Duration(milliseconds: 500),
                                  (() {
                                Navigator.pushReplacementNamed(
                                    context, ListSuras.routeName);
                              }));
                            },
                          ))),
                  SizedBox(height: size.height * 0.15),
                  Center(
                      child: AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText('اللهم اغفر وارحم وعافِ ابي عبدك',
                          colors: [
                            Color.fromARGB(255, 129, 107, 1),
                            Color.fromARGB(255, 98, 82, 0),

                            //   const Color.fromARGB(255, 3, 64, 92)
                          ],
                          textStyle: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontFamily: 'Tajawal',
                              fontSize: 13),
                          textAlign: TextAlign.center,
                          speed: Duration(milliseconds: 200))
                    ],
                    repeatForever: true,
                  )),
                  Center(
                      child: AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText('"حمدي عماره"',
                          colors: [
                            Colors.lightBlueAccent,
                            Color.fromARGB(255, 9, 118, 168)
                          ],
                          textStyle: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontFamily: 'Tajawal',
                              fontSize: 13),
                          textAlign: TextAlign.center,
                          speed: Duration(milliseconds: 200))
                    ],
                    repeatForever: true,
                  )),
                  Center(
                      child: AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                          ' واجعل الحسنات التي قدمها في حياته صدقة جارية له في الآخرة. اللهم اجعلها من الصدقات الباقية التي تنفعه وتكرم ذكره وترفع درجاته في جنتك. اللهم اجعل هذه الصدقة مستودعة له عندك، واجعلها شفيعة له يوم لا ينفع مالٌ ولا بنون إلا من أتى الله بقلبٍ سليم',
                          colors: [
                            Color.fromARGB(255, 129, 107, 1),
                            Color.fromARGB(255, 98, 82, 0),

                            //     const Color.fromARGB(255, 3, 64, 92)
                          ],
                          textStyle: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontFamily: 'Tajawal',
                              fontSize: 13),
                          textAlign: TextAlign.center,
                          speed: Duration(milliseconds: 200))
                    ],
                    repeatForever: true,
                  )),
                ],
              ),
            )));
  }
}
