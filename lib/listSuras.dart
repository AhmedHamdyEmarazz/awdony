import 'package:flutter/material.dart';
import 'package:random_quraan/drawer.dart';
import 'package:random_quraan/surasx.dart';
import 'package:random_quraan/writining.dart';

class ListSuras extends StatefulWidget {
  static const routeName = '/listsuras';

  @override
  _ListSurasState createState() => _ListSurasState();
}

class _ListSurasState extends State<ListSuras> {
  @pragma('vm:entry-point')
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final appbarheight = kToolbarHeight;
    final heightx = size.height - appbarheight;
    ScrollController controller = ScrollController();
    int i = allquraan.length;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        drawer: AppDrawerr(),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('فهرس القرآن الكريم'),
          centerTitle: true,
        ),
        body: SizedBox(
            height: heightx,
            child: SingleChildScrollView(
                child: Column(children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: heightx * 0.9,
                  child: ListView.builder(
                      itemCount: i,
                      itemBuilder: (ctx, index) => Column(children: [
                            Center(
                                child: Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        size.width * 0.02,
                                        3,
                                        size.width * 0.02,
                                        3),
                                    child: Container(
                                        margin: const EdgeInsets.all(5.0),
                                        //   padding: const EdgeInsets.all(3.0),
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.green),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: ListTile(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          tileColor: const Color.fromARGB(
                                              46, 158, 158, 158),
                                          splashColor: Colors.amber,
                                          leading: const Icon(Icons.book),
                                          trailing: Text(
                                            '${allquraan[index].keys.first}',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Tajawal',
                                            ),
                                          ),
                                          onTap: () {
                                            Future.delayed(
                                                const Duration(
                                                    milliseconds: 500), (() {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (ctx) =>
                                                          Writing(index)));
                                              // Writing2(
                                              //     index,
                                              //     allquraan[index]
                                              //         .keys
                                              //         .first)));
                                            }));
                                          },
                                        )))),
                            // Divider()
                          ])))
            ]))));
  }
}
