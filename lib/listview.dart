import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (MaterialApp(home: ListViewPage()));
  }
}

class ListViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return (ListViewPageStage());
  }
}

class ListViewPageStage extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView test'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ListView tinh'),
            ListViewTinh(),
            Text('ListView dong'),
            ListViewTinhDong2()
          ],
        ),
      ),
    );
  }
}

Widget ListViewTinh() {
  return ListView(
    shrinkWrap: true,
    children: [
      Card(
          child: ListTile(
        leading: Icon(Icons.add),
        title: Text('Nguyen Van A'),
      )),
      Card(
          child: ListTile(
        leading: Icon(Icons.add),
        title: Text('Nguyen Van B'),
      )),
      Card(
          child: ListTile(
        leading: Icon(Icons.add),
        title: Text('Nguyen Van C'),
      )),
    ],
  );
}

Widget ListViewTinhDong() {
  int n = 5;
  List<int> listInt = List.generate(n, (i) => i * i);
  return ListView.builder(
    shrinkWrap: true,
    itemCount: n,
    itemBuilder: (BuildContext context, int i) => Text('Phan tu thu: ${listInt[i]}')
  );
}

Widget ListViewTinhDong2() {
  int n = 5;
  List<int> listInt = List.generate(n, (i) => i * i);
  return ListView.separated(
      shrinkWrap: true,
      itemCount: n,
      itemBuilder: (BuildContext context, int i) => Text('Phan tu thu: ${listInt[i]}'),
      separatorBuilder: (BuildContext context, int i) => Divider(),
  );
}
