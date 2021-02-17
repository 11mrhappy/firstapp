import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/first',
    routes: <String, WidgetBuilder> {
      '/first':(BuildContext context) => FirstRoute(),
      '/second':(BuildContext context) => SecondRoute(),
    }
  )
);

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first route'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: Text('push here',
                style: TextStyle(fontSize: 20),
              )
            )
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second route'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('push here',
                style: TextStyle(fontSize: 20),
              )
            )
          ],
        ),
      ),
    );
  }
}
