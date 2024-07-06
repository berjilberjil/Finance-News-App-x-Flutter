import 'package:flutter/material.dart';
import 'package:appx/utilities.dart';
import 'package:appx/welcome.dart';
import 'package:appx/myprofile.dart';
import 'package:flutter/widgets.dart';
import 'package:appx/desired_page1.dart';


class HomePage extends StatefulWidget {
  final List<String> images = [
    'assets/hdfc.jpg',
    'assets/mama.jpg',
    'assets/adani.jpg',
    'assets/tcs.jpg',
    'assets/wipro.jpg',
    'assets/hero.jpg',
  ];
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary6,
      appBar: AppBar(
        title: const SafeArea(
          child: Text(
            'FinTimes',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        elevation: 50,
        backgroundColor: primary1,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("Search");
              },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyProfile()),
                    );
                  },
                  child: SafeArea(
                    child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                        color: primary1,
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(180),
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.account_circle,
                            size: 100.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          Text(
                            'My Profile',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DesiredPage1()),
                    );
                  },
                  child: Material(
                    color: Colors.green.withOpacity(0.1),
                    child: ListTile(
                      leading: Icon(
                        Icons.attach_money,
                        color: primary1,
                      ),
                      title: const Text('My Portfolio'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DesiredPage1()),
                        );
                      },
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white,
                  height: 1,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DesiredPage1()),
                    );
                  },
                  child: Material(
                    color: Colors.green.withOpacity(0.1),
                    child: ListTile(
                      leading: Icon(
                        Icons.mark_chat_read,
                        color: primary1,
                      ),
                      title: const Text('Market Data'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DesiredPage1()),
                        );
                      },
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white,
                  height: 1,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DesiredPage1()),
                    );
                  },
                  child: Material(
                    color: Colors.green.withOpacity(0.1),
                    child: ListTile(
                      leading: Icon(
                        Icons.newspaper,
                        color: primary1,
                      ),
                      title: const Text('News & Insights'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DesiredPage1()),
                        );
                      },
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white,
                  height: 1,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DesiredPage1()),
                    );
                  },
                  child: Material(
                    color: Colors.green.withOpacity(0.1),
                    child: ListTile(
                      leading: Icon(
                        Icons.remove_red_eye,
                        color: primary1,
                      ),
                      title: const Text('Custom Watchlist'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DesiredPage1()),
                        );
                      },
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white,
                  height: 1,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DesiredPage1()),
                    );
                  },
                  child: Material(
                    color: Colors.green.withOpacity(0.1),
                    child: ListTile(
                      leading: Icon(
                        Icons.arrow_upward,
                        color: primary1,
                      ),
                      title: const Text('Market Trend'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DesiredPage1()),
                        );
                      },
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white,
                  height: 1,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DesiredPage1()),
                    );
                  },
                  child: Material(
                    color: Colors.green.withOpacity(0.1),
                    child: ListTile(
                      leading: Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 255, 180, 59),
                      ),
                      title: const Text(
                        'Try Premium',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DesiredPage1()),
                        );
                      },
                    ),
                  ),
                ),

                //
              ],
            ),
            ListTile(
              title: const Text(
                'Logout',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.red,
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const WelcomePage()),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: primary2,
          unselectedItemColor: primary6,
          selectedItemColor: primary6,
          selectedIconTheme: const IconThemeData(size: 35),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'News',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.upcoming),
              label: 'Market',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: ListView(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      color: primary2,
                      margin: const EdgeInsets.all(2.0),
                      child: const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('NIFTY', style: TextStyle(fontSize: 18)),
                            Text('+235 points', style: TextStyle(fontSize: 16)),
                            Text('+1%', style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      color: primary2,
                      margin: const EdgeInsets.all(2.0),
                      child: const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('BANKNIFTY', style: TextStyle(fontSize: 18)),
                            Text('+540 points', style: TextStyle(fontSize: 16)),
                            Text('+2.3%', style: TextStyle(fontSize: 16)),
                            // Add more Text widgets here
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      color: primary2,
                      margin: const EdgeInsets.all(2.0),
                      child: const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('SENSEX', style: TextStyle(fontSize: 18)),
                            Text('+900 points', style: TextStyle(fontSize: 16)),
                            Text('+4.33%', style: TextStyle(fontSize: 16)),
                            // Add more Text widgets here
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      color: primary2,
                      margin: const EdgeInsets.all(2.0),
                      child: const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('FINNIFTY', style: TextStyle(fontSize: 18)),
                            Text('+333 points', style: TextStyle(fontSize: 16)),
                            Text('+1%', style: TextStyle(fontSize: 16)),
                            // Add more Text widgets here
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(

              child: Text("Top10 News", style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Column(
              children: List.generate(10, (index) {
                return Container(
                  margin: const EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                    color: primary6,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(widget.images[index %
                          widget.images
                              .length]), // Use the index to select the image
                      fit: BoxFit.fill,
                    ),
                  ),
                  height: 200,
                  width: 380,
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Top News ${index + 1}', // Start index from 1
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
