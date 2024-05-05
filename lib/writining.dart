import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:random_quraan/drawer.dart';
import 'package:random_quraan/surasx.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'ayas.dart';

class Writing extends StatefulWidget {
  static const routeName = '/Writing';
  final int indx;
  Writing(this.indx);
  @override
  _WritingState createState() => _WritingState();
}

class _WritingState extends State<Writing> {
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
    int i = allquraan.length;
    // int x = 0;

    // List<Widget> bring = [];
    // for (x = 0; x < i; x++) {
    //   bring.add(Text('${allquraan[x].values.first![x]}'));
    // }
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: AppDrawerr(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Column(children: [
          Text(
            'بسم الله الرحمن الرحيم',
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
                print(itemPositionsListener.itemPositions.value.first.index);

                _showstatic == true
                    ? itemScrollController.scrollTo(
                        index: i,
                        duration: Duration(seconds: 40),
                        curve: Curves.linear)
                    : null;
// itemScrollController.scrollTo(
//                         index: itemPositionsListener
//                             .itemPositions.value.first.index,
//                         duration: Duration(seconds: 40),
//                         curve: Curves.linear);

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
          child: ScrollablePositionedList.builder(
              itemScrollController: itemScrollController,
              scrollOffsetController: scrollOffsetController,
              scrollOffsetListener: scrollOffsetListener,
              itemPositionsListener: itemPositionsListener,
              itemCount: i,
              initialScrollIndex: widget.indx,
              itemBuilder: (ctx, index) => Column(children: [
                    Container(
                        margin: const EdgeInsets.all(5.0),
                        //   padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green, width: 4),
                            borderRadius: BorderRadius.circular(10)),
                        child: SelectableText(
                          '${allquraan[index].keys.first.toString()}',
                          style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontStyle: FontStyle.italic,
                              fontSize: 30),
                          textAlign: TextAlign.center,
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => ayas(index)));
                          },
                        )),
                    Center(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(
                                size.width * 0.02, 3, size.width * 0.02, 3),
                            child: Center(
                              child: Card(
                                elevation: 20,
                                child: SizedBox(
                                    child: Column(children: [
                                  AnimatedTextKit(
                                    animatedTexts: [
                                      ColorizeAnimatedText(
                                          '${allquraan[index].values.first!.first.toString()}',
                                          colors: [
                                            Colors.lightBlueAccent,
                                            const Color.fromARGB(255, 3, 64, 92)
                                          ],
                                          textStyle: TextStyle(
                                              fontStyle: FontStyle.italic,
                                              fontFamily: 'Tajawal',
                                              fontSize: 30),
                                          textAlign: TextAlign.center,
                                          speed: Duration(milliseconds: 200)
                                          //    speed: const Duration(milliseconds: 500),
                                          //  speed:,
                                          )
                                    ],

                                    //  totalRepeatCount: 3,
                                    repeatForever: true,
                                    onNext: (p0, p1) {
                                      // for(x =0 ; x<(allquraan[index].values.first!.length); x++){},
                                      // setState(() {
                                      //   z = allquraan[index]
                                      //       .values
                                      //       .first!
                                      //       .length;
                                      // });
                                    },
                                    onTap: () {
                                      // print(index);
                                      // launchUrl((Uri.parse(
                                      //     'https://surahquran.com/aya_view.php?sora=${index + 1}&aya=${((allquraan[index + 1].values.first!.indexWhere((element) => element == (allquraan[index + 1].values.first!.first))) + 1)}')));
                                      // print(itemPositionsListener
                                      //     .itemPositions.value.first.index);
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (ctx) => ayas(index)));
                                    },
                                  ),
                                  SelectableText(
                                    '${(allquraan[index].values.first!.toString().split(allquraan[index].values.first!.first).last)}',
                                    style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontFamily: 'Tajawal',
                                        fontSize: 30),
                                    textAlign: TextAlign.center,
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (ctx) => ayas(index)));
                                    },
                                  ),
                                ])),
                              ),
                              // Divider()
                            )))
                  ]))),
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
              //     builder: (ctx) => Writing(
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
