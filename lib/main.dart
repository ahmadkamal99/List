import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return myhome();
  }
}

class myhome extends StatefulWidget {
  const myhome({super.key});

  @override
  State<myhome> createState() => _myhomeState();
}

class _myhomeState extends State<myhome> {
  List list_Pic = [
    "https://cdn.pixabay.com/photo/2016/06/18/13/37/spain-1464976__340.jpg",
    "https://cdn.pixabay.com/photo/2012/10/12/17/07/flag-61070__340.jpg",
    "https://cdn.pixabay.com/photo/2018/05/03/12/55/flag-3371279__340.jpg",
    "https://cdn.pixabay.com/photo/2010/12/01/flag-694__340.jpg",
    "https://cdn.pixabay.com/photo/2017/10/12/18/44/flag-2845376__340.jpg",
    "https://cdn.pixabay.com/photo/2015/10/31/22/21/german-1016362__340.jpg",
    "https://th.bing.com/th/id/R.49e10ad51d6b4ac6376ceada25f21876?rik=8%2boObDaTOL13RA&pid=ImgRaw&r=0",
    "https://i.ytimg.com/vi/UO6fMlicYY4/maxresdefault.jpg"
  ];
  List name = [
    "Spain",
    "Turkey",
    "USA",
    "Italy",
    "Russia",
    "Germany",
    "Palestien",
    "Jordan"
  ];
  List power = [10, 9, 8, 7, 6, 5, 10, 10];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: name.length,
              itemBuilder: (BuildContext context, int i) {
                return Container(
                  color: Colors.grey,
                  padding: EdgeInsets.all(10),
                  child: ListTile(
                      trailing: Icon(Icons.countertops),
                      subtitle: Text("${power[i]}"),
                      title: Text("${name[i]}"),
                      leading: Image(
                        image: NetworkImage("${list_Pic[i]}"),
                      )),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
