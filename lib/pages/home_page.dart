import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:nkust_ap/pages/page.dart';
import 'package:nkust_ap/res/resource.dart' as Resource;
import 'package:nkust_ap/api/helper.dart';
import 'package:nkust_ap/models/models.dart';
import 'package:nkust_ap/utils/app_localizations.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:nkust_ap/widgets/drawer_body.dart';
import 'package:nkust_ap/utils/utils.dart';

enum HomeStatus { loading, finish, error, empty }

class HomePageRoute extends MaterialPageRoute {
  HomePageRoute() : super(builder: (BuildContext context) => new HomePage());

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return new FadeTransition(opacity: animation, child: new HomePage());
  }
}

class HomePage extends StatefulWidget {
  static const String routerName = "/home";

  @override
  HomePageState createState() => new HomePageState();
}

// SingleTickerProviderStateMixin is used for animation
class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  HomeStatus state = HomeStatus.loading;
  AppLocalizations app;

  TabController controller;
  int _currentTabIndex = 0;
  int _currentNewsIndex = 0;

  List<Widget> newsWidgets = [];
  List<News> news = [];

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 2, vsync: this);
    _getAllNews();
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  Widget _newImage(News news) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: FlatButton(
          onPressed: () {
            Utils.launchUrl(news.url);
          },
          padding: EdgeInsets.all(0.0),
          child: Image.network(news.image)),
    );
  }

  Widget _homebody() {
    switch (state) {
      case HomeStatus.loading:
        return Center(
          child: CircularProgressIndicator(),
        );
      case HomeStatus.finish:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Text(
                news[_currentNewsIndex].title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Expanded(
              flex: 4,
              child: CarouselSlider(
                items: newsWidgets,
                viewportFraction: 0.7,
                height: 400.0,
                autoPlay: false,
                updateCallback: (int current) {
                  _currentNewsIndex = current;
                  setState(() {});
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "${_currentNewsIndex + 1}",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(color: Resource.Colors.red, fontSize: 24.0),
                  ),
                  Text(
                    "/${newsWidgets.length}",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(color: Resource.Colors.grey, fontSize: 24.0),
                  )
                ],
              ),
            ),
          ],
        );
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // Appbar
      appBar: new AppBar(
        // Title
        title: new Text(AppLocalizations.of(context).appName),
        // Set the background color of the App Bar
        backgroundColor: Resource.Colors.blue,
      ),
      endDrawer: DrawerBody(),
      // Set the TabBar view as the body of the Scaffold
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 32.0),
        child: Center(
          child: _homebody(),
        ),
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: _currentTabIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            // set icon to the tab
            icon: Icon(Icons.directions_bus),
            title: Text(AppLocalizations.of(context).bus),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.class_),
            title: Text(AppLocalizations.of(context).course),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            title: Text(AppLocalizations.of(context).score),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentTabIndex = index;
      switch (_currentTabIndex) {
        case 0:
          Navigator.of(context).push(BusPageRoute());
          break;
        case 1:
          Navigator.of(context).push(CoursePageRoute());
          break;
        case 2:
          Navigator.of(context).push(ScorePageRoute());
          break;
      }
    });
  }

  _getAllNews() {
    state = HomeStatus.loading;
    Helper.instance.getAllNews().then((news) {
      this.news = news;
      setState(() {
        news.forEach((news) {
          newsWidgets.add(_newImage(news));
        });
        state = news.length == 0 ? HomeStatus.empty : HomeStatus.finish;
      });
    }).catchError((e) {
      assert(e is DioError);
      DioError dioError = e as DioError;
      switch (dioError.type) {
        case DioErrorType.RESPONSE:
          Utils.showToast(AppLocalizations.of(context).tokenExpiredContent);
          Navigator.popUntil(
              context, ModalRoute.withName(Navigator.defaultRouteName));
          break;
        case DioErrorType.CANCEL:
          break;
        default:
          state = HomeStatus.error;
          Utils.handleDioError(dioError, app);
          break;
      }
    });
  }
}
