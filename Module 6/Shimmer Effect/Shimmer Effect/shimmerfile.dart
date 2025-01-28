//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MyApp2 extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {

      return MaterialApp(

        title: 'GeeksForGeeks',
        routes:
        {
          'loading': (_) => LoadingListPage(),
        },
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home:MyHomePage()

      );


  }

}

class LoadingListPage extends StatefulWidget
{


  @override
  _LoadingListPageState createState() => _LoadingListPageState();


}

class _LoadingListPageState extends State<LoadingListPage>
{
  bool _enabled = true;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Loading List'),
      ),

      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Shimmer.fromColors(
                baseColor: Colors.grey[300],
                highlightColor: Colors.grey[100],
                enabled: _enabled,
                child: ListView.builder(
                  itemBuilder: (_, __) => Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 48.0,
                          height: 48.0,
                          color: Colors.white,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: double.infinity,
                                height: 8.0,
                                color: Colors.white,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.0),
                              ),
                              Container(
                                width: double.infinity,
                                height: 8.0,
                                color: Colors.white,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.0),
                              ),
                              Container(
                                width: 40.0,
                                height: 8.0,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  itemCount: 6,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      _enabled = !_enabled;
                    });
                  },
                  child: Text(
                    _enabled ? 'Stop' : 'Play',
                    style: Theme.of(context).textTheme.button.copyWith(
                        fontSize: 18.0,
                        color: _enabled ? Colors.redAccent : Colors.green),
                  )),
            )
          ],
        ),
      ),
    );





  }

}

class MyHomePage extends StatefulWidget
{
  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage>
{
  @override
  Widget build(BuildContext context)
  {


    return Scaffold(
      appBar: AppBar(
        title: const Text('Shimmer'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text('Loading List'),
            onTap: () => Navigator.of(context).pushNamed('loading'),
          ),
        ],
      ),
    );

  }

}