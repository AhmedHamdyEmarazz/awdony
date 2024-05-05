import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:random_quraan/drawer.dart';
import 'package:random_quraan/surasx.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:url_launcher/url_launcher.dart';

class ayas extends StatefulWidget {
  static const routeName = '/ayas';
  final int indx;
  ayas(this.indx);
  @override
  _ayasState createState() => _ayasState();
}

class _ayasState extends State<ayas> {
  bool? _showstatic = false;
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
      next = widget.indx;
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
                ColorizeAnimatedText('',
                    colors: [
                      Colors.lightBlueAccent,
                      const Color.fromARGB(255, 3, 64, 92)
                    ],
                    textStyle: TextStyle(fontSize: 5),
                    speed: Duration(milliseconds: 200)
                    //    speed: const Duration(milliseconds: 500),
                    //  speed:,
                    )
              ],

              //  totalRepeatCount: 3,
              repeatForever: true,

              //  pause: const Duration(seconds: 1),
              onNext: (p0, p1) {
                //   print(next);
                //     print(itemPositionsListener.itemPositions.value.first.index);

                _showstatic == true
                    ? itemScrollController.scrollTo(
                        index: i,
                        duration: Duration(seconds: 40),
                        curve: Curves.linear)
                    : null;
                _showstatic == true
                    ? setState(() {
                        next = next + 1;
                      })
                    : null;
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
                  //       initialScrollIndex: 0, //widget.indx,
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
//                       ? AnimatedTextKit(
//                           animatedTexts: [
//                             ColorizeAnimatedText(
//                                 '${allquraan[widget.indx].values.first!.toList()[indexx].toString()}',
//                                 colors: [
//                                   Colors.lightBlueAccent,
//                                   const Color.fromARGB(255, 3, 64, 92)
//                                 ],
//                                 textStyle: TextStyle(
//                                     fontStyle: FontStyle.italic,
//                                     fontFamily: 'Tajawal',
//                                     fontSize: 30),
//                                 textAlign: TextAlign.center,
//                                 speed: Duration(milliseconds: 200))
//                           ],
//                           repeatForever: true,
//                           onNext: (p0, p1) {
//                             setState(() {
//                               //  highlight = false;
//                             });
//                           },
//                           onTap: () {
//                             print(indexx);
//                             print('https://surahquran.com/aya_view.php?sora=${[
//                               widget.indx + 1
//                             ]}&aya=${((allquraan[widget.indx].values.first!.indexWhere((element) => element == allquraan[widget.indx].values.first![indexx])) + 1)}');
//                             print(
//                                 '${allquraan[widget.indx].values.first!.indexWhere((element) => element == allquraan[widget.indx].values.first!.toList()[indexx]) + 1} xxx');
//                             launchUrl((Uri.parse(
//                                 'https://surahquran.com/aya_view.php?sora=${widget.indx + 1}&aya=${((allquraan[widget.indx].values.first!.indexWhere((element) => element == allquraan[widget.indx].values.first![indexx])) + 1)}')));
//                           },
//                         )
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
                            print(indexx);
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
          onPressed: () {
            setState(() {
              _showstatic = !_showstatic!;
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
          child: _showstatic!
              ? Icon(Icons.pause)
              : Icon(Icons.play_arrow_rounded)),
    );
  }
}
