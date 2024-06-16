import 'dart:io';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:random_quraan/drawer.dart';
import 'package:random_quraan/surasx.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class ayas extends StatefulWidget {
  static const routeName = '/ayas';
  final int indx;
  final int indxx;
  ayas(this.indx, this.indxx);
  @override
  _ayasState createState() => _ayasState();
}

class _ayasState extends State<ayas> {
  bool _showstatic = false;
  int index = 1000;
  int indexxx = 1000;
  int next = 0;
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemScrollController itemScrollController2 = ItemScrollController();

  final ScrollOffsetController scrollOffsetController =
      ScrollOffsetController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  final ScrollOffsetListener scrollOffsetListener =
      ScrollOffsetListener.create();
  ScrollController controller = ScrollController();
  int x = 0;
  int z = 0;
  bool highlight = false;
  @override
  void initState() {
    setState(() {
      _showstatic = false;
    });
    super.initState();
  }

  @pragma('vm:entry-point')
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final appbarheight = kToolbarHeight;
    final heightx = size.height - appbarheight;
    int i = allquraan[widget.indx].values.first!.length;
    //TODO final k = allquraan[widget.indx].values.first![0];

    //  print(i);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: AppDrawerr(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Column(children: [
          Text(
            '${allquraan[widget.indx].keys.first.characters}',
            style: TextStyle(
                //   fontFamily: 'Tajawal',
                ),
          ),
          AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText(
                  '',
                  colors: [
                    Colors.lightBlueAccent,
                    const Color.fromARGB(255, 3, 64, 92)
                  ],
                  textStyle: TextStyle(fontSize: 5),
                  speed: Duration(milliseconds: 200),
                  //    speed: const Duration(milliseconds: 500),
                  //  speed:,
                )
              ],

              //  totalRepeatCount: 3,
              repeatForever: true,
              pause: next == 0 ? Duration(seconds: 1) : Duration(seconds: 15),
              onNext: (p0, p1) {
                // _showstatic == true
                //     ? itemScrollController.scrollTo(
                //         index: i,
                //         duration: Duration(seconds: 40),
                //         curve: Curves.linear)
                //     : null;
                // _showstatic == true
                //     ? setState(() {
                //         next = next + 1;
                //       })
                //     : null;
                // print(itemPositionsListener.itemPositions.value.last.index);
                // print(i);
                print(next);

                if (_showstatic) {
                  // next >= 2
                  //     ? setState(() {
                  //         next = next - 1;
                  //       })
                  //     : null;
                  var end = Platform.isAndroid
                      ? itemPositionsListener.itemPositions.value.last.index
                      : itemPositionsListener.itemPositions.value.last.index;
                  if (end != i - 1) {
                    itemScrollController.scrollTo(
                        index: i,
                        duration: Duration(seconds: 40),
                        curve: Curves.linear);
                    if (next != 0) {
                      Future.delayed(const Duration(seconds: 15), (() {
                        itemScrollController.scrollTo(
                            index: i,
                            duration: Duration(seconds: 40),
                            curve: Curves.linear);
                      }));
                    }
                  } else {
                    Future.delayed(const Duration(seconds: 15), (() {
                      setState(() {
                        next = next + 1;
                      });
                    }));
                    Future.delayed(const Duration(seconds: 15), (() {
                      itemScrollController.jumpTo(index: 0);
                      // itemScrollController.scrollTo(
                      //     index: 0,
                      //     duration: Duration(milliseconds: 200),
                      //     curve: Curves.linear);
                    }));
                  }
                }
              }),
        ]),
        centerTitle: true,
      ),
      body: SizedBox(
          height: heightx,
          child: Card(
              elevation: 20,
              //   color: Colors.purple.shade200,
              child: ScrollablePositionedList.builder(
                  shrinkWrap: true,
                  itemScrollController: itemScrollController,
                  scrollOffsetController: scrollOffsetController,
                  scrollOffsetListener: scrollOffsetListener,
                  itemPositionsListener: itemPositionsListener,
                  itemCount: i,
                  initialScrollIndex: widget.indxx, //widget.indx,
                  itemBuilder: (ctx, indexx) => Column(children: [
//  highlight &&
//                           indexx ==
//                               //   '(${((allquraan[widget.indx].values.first!.toList()[indexx].toString()).split('(').last).toString().split(')').first})'
//                               allquraan[widget.indx].values.first!.indexWhere(
//                                   (element) =>
//                                       element ==
//                                       allquraan[widget.indx]
//                                           .values
//                                           .first!
//                                           .toList()[indexx])
                        //  ?
                        AnimatedTextKit(
                          animatedTexts: [
                            ColorizeAnimatedText('',
                                colors: [
                                  Colors.lightBlueAccent,
                                  const Color.fromARGB(255, 3, 64, 92)
                                ],
                                textStyle: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontFamily: 'Tajawal',
                                    fontSize: 3),
                                textAlign: TextAlign.center,
                                speed: Duration(milliseconds: 200))
                          ],
                          repeatForever: true,
                          onNext: (p0, p1) async {
                            final SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                            setState(() {
                              prefs.setInt("widget.indx", widget.indx);
                              index = prefs.getInt('widget.indx')!;
                              indexx <= 0
                                  ? null
                                  : {
                                      prefs.setInt("indexx", indexx),
                                      indexxx = prefs.getInt('indexx')!
                                    };
                              print(
                                  '${prefs.getInt('indexx')!} hahahahaahahahahahahahahaah');
                            });
                          },
                          onTap: () async {},
                        ),
                        //     :

                        ListTile(
                          tileColor: const Color.fromARGB(46, 158, 158, 158),
                          focusColor: Colors.amber, hoverColor: Colors.amber,
                          //    selectedTileColor: Colors.amberAccent,
                          splashColor: Colors.amber,
                          selectedColor: Colors.amber,
                          title: Center(
                            child: Text(
                              '${allquraan[widget.indx].values.first!.toList()[indexx].toString()}',
//TODO: in a stable animated text put on its on next function the following : 'indexx and widget.index and save them on sharedprefrences'
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Tajawal',
                                  fontSize: 30),
                              textAlign: TextAlign.center,
                            ),
                            // child: SelectableText(
                            //   '${allquraan[widget.indx].values.first!.toList()[indexx].toString()}',
                            //   style: TextStyle(
                            //       fontStyle: FontStyle.italic,
                            //       fontWeight: FontWeight.normal,
                            //       fontFamily: 'Tajawal',
                            //       fontSize: 30),
                            //   textAlign: TextAlign.center,
                            //   onTap: () {
                            //     setState(() {
                            //       highlight = true;
                            //     });
                            //     print(indexx);
                            //     print(allquraan[widget.indx]
                            //         .values
                            //         .first!
                            //         .indexWhere((element) =>
                            //             element ==
                            //             allquraan[widget.indx]
                            //                 .values
                            //                 .first!
                            //                 .toList()[indexx]));
                            //     print(
                            //         'https://surahquran.com/aya_view.php?sora=${widget.indx + 1}&aya=${((allquraan[widget.indx].values.first!.indexWhere((element) => element == allquraan[widget.indx].values.first![indexx])) + 1)}');
                            //     print(
                            //         '${allquraan[widget.indx].values.first!.indexWhere((element) => element == allquraan[widget.indx].values.first!.toList()[indexx]) + 1} xxx');

                            //     launchUrl((Uri.parse(
                            //         'https://surahquran.com/aya_view.php?sora=${widget.indx + 1}&aya=${((allquraan[widget.indx].values.first!.indexWhere((element) => element == allquraan[widget.indx].values.first![indexx])) + 1)}')));
                            //   },
                            // ),
                          ),
                          onTap: () {
                            setState(() {
                              highlight = true;
                            });
                            //   print(indexx);
                            print(allquraan[widget.indx]
                                .values
                                .first!
                                .indexWhere((element) =>
                                    element ==
                                    allquraan[widget.indx]
                                        .values
                                        .first!
                                        .toList()[indexx]));
                            print(
                                'https://surahquran.com/aya_view.php?sora=${widget.indx + 1}&aya=${((allquraan[widget.indx].values.first!.indexWhere((element) => element == allquraan[widget.indx].values.first![indexx])) + 1)}');
                            print(
                                '${allquraan[widget.indx].values.first!.indexWhere((element) => element == allquraan[widget.indx].values.first!.toList()[indexx]) + 1} xxx');
                            launchUrl((Uri.parse(
                                'https://surahquran.com/aya_view.php?sora=${widget.indx + 1}&aya=${((allquraan[widget.indx].values.first!.indexWhere((element) => element == allquraan[widget.indx].values.first![indexx])) + 1)}')));
                          },
                        ),
                        SizedBox(
                          height: 2,
                        )
                      ])))),
      floatingActionButton: FloatingActionButton(
          backgroundColor: ThemeData().secondaryHeaderColor.withOpacity(0.1),
          onPressed: () {
            setState(() {
              _showstatic = !_showstatic;
            });
            if (_showstatic == false) {
              itemScrollController.scrollTo(
                  index: itemPositionsListener.itemPositions.value.first.index,
                  duration: Duration(days: 10000),
                  curve: Curves.linear);

              // Navigator.of(context).pushReplacement(MaterialPageRoute(
              //     builder: (ctx) => ayas(
              //         itemPositionsListener.itemPositions.value.first.index)));
            }

            print(itemPositionsListener.itemPositions.value.first.index);
          },
          child: _showstatic
              ? Wrap(
                  direction: Axis.vertical,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(next > 0 ? 'repeated' : '0'),
                    Icon(Icons.pause)
                  ],
                )
              : Wrap(
                  direction: Axis.vertical,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(next > 0 ? 'repeated' : '0'),
                    Icon(Icons.play_arrow_rounded),
                  ],
                )

          // ? Icon(Icons.pause)
          // : Icon(Icons.play_arrow_rounded)

          ),
    );
  }
}
