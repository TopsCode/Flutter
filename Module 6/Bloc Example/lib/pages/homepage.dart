import 'package:blocex123/pages/streamDataTab.dart';
import 'package:blocex123/pages/triggerLogicTab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget
{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //Default tab controller wraps everything.
      length: 2, //Length of Tabs
      child: Scaffold
        (
        appBar:AppBar(title:Text("")), //Custom AppBar

        body: Container(
          child: TabBarView(
            //Pages Switches on selection of the respective tabs.
            children: <Widget>[
              //TabView 1
              StreamDataTab(),

              //TabView 2
              TriggerLogicTab(),
            ],
          ),
        ),

        //Actual Tabs at the bottom.
        bottomNavigationBar: Container(
          //Container used for rounded Corners on top.
          child: TabBar(
            tabs: <Widget>[
              Tab(
                //Tab 1
                child: Text(
                  'Stream \nJust Data.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Tab(
                //Tab 2
                child: Text(
                  'Trigger \nLogic/Function.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
            indicatorColor: Colors.transparent,
            unselectedLabelColor: Theme.of(context).canvasColor,
          ),
          alignment: Alignment.center,
          height: 100,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
