import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:random_quraan/drawer.dart';
import 'package:random_quraan/surasx.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Writing2 extends StatefulWidget {
  static const routeName = '/Writing2';
  final int indx;

  Writing2(
    this.indx,
  );
  @override
  _Writing2State createState() => _Writing2State();
}

class _Writing2State extends State<Writing2> {
  bool? _showstatic = false;
  int next = 0;
  final ItemScrollController itemScrollController = ItemScrollController();
  final ScrollOffsetController scrollOffsetController =
      ScrollOffsetController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  final ScrollOffsetListener scrollOffsetListener =
      ScrollOffsetListener.create();
  ScrollController controller = ScrollController();
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
    int x;
    List<ItemScrollController> scrollx = [];

    for (x = 0; x < i; x++) {
      scrollx.add(ItemScrollController());
    }
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: AppDrawerr(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Column(children: [
          Text('بسم الله الرحمن الرحيم'),
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

                _showstatic == true
                    ? setState(() {
                        next = next + 1;
                      })
                    : null;
              }),
        ]),
        centerTitle: true,
      ),
      body: Center(
          child: Padding(
              padding: EdgeInsets.fromLTRB(
                  size.width * 0.02, 3, size.width * 0.02, 3),
              child: Center(
                  child: Card(
                      elevation: 20,
                      child: SizedBox(
                          height: heightx * 0.9,
                          child: ScrollablePositionedList.builder(
                              itemScrollController: itemScrollController,
                              scrollOffsetController: scrollOffsetController,
                              scrollOffsetListener: scrollOffsetListener,
                              itemPositionsListener: itemPositionsListener,
                              itemCount: i,
                              initialScrollIndex: widget.indx,
                              itemBuilder: (ctx, index) =>
                                  SingleChildScrollView(
                                      child: SizedBox(
                                          height: heightx * 0.8,
                                          child: Column(children: [
                                            Container(
                                                margin:
                                                    const EdgeInsets.all(5.0),
                                                //   padding: const EdgeInsets.all(3.0),
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.green,
                                                        width: 4),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: SelectableText(
                                                  '${allquraan[index].keys.first.toString()}',
                                                  style: TextStyle(
                                                      fontStyle:
                                                          FontStyle.italic,
                                                      fontSize: 30),
                                                  textAlign: TextAlign.center,
                                                  onTap: () {},
                                                )),
                                            SizedBox(
                                                height: heightx * 0.7,
                                                child: ScrollablePositionedList
                                                    .builder(
                                                        itemScrollController:
                                                            scrollx[index],
                                                        itemCount:
                                                            allquraan[index]
                                                                .values
                                                                .first!
                                                                .length,
                                                        //      initialScrollIndex: widget.indx,
                                                        itemBuilder: (ctxx,
                                                                indexx) =>
                                                            SizedBox(
                                                                height:
                                                                    heightx *
                                                                        0.6,
                                                                child: Column(
                                                                    children: [
                                                                      SelectableText(
                                                                        '${allquraan[index].values.first!.first.toString()}',
                                                                        style: TextStyle(
                                                                            fontStyle:
                                                                                FontStyle.italic,
                                                                            fontSize: 30),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                      ),
                                                                      SelectableText(
                                                                        '${allquraan[index].values.first!.toString().split(allquraan[index].values.first!.first).last}',
                                                                        style: TextStyle(
                                                                            fontStyle:
                                                                                FontStyle.italic,
                                                                            fontSize: 30),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        onTap:
                                                                            () {},
                                                                      ),

                                                                      // Divider()
                                                                    ]))))
                                          ]))))))))),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _showstatic = !_showstatic!;
            });
            if (_showstatic == false) {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (ctx) => Writing2(
                      itemPositionsListener.itemPositions.value.first.index)));
            }

            print(itemPositionsListener.itemPositions.value.first.index);
          },
          child: _showstatic!
              ? Icon(Icons.pause)
              : Icon(Icons.play_arrow_rounded)),
    );
  }
}
