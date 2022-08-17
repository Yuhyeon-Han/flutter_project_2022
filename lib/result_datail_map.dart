import 'package:flutter/material.dart';
import 'package:flutterproject/detail.dart';
import 'package:flutterproject/main_screen.dart';
import 'package:flutterproject/searchbar.dart';

class ResultDetailMap extends StatelessWidget {
  const ResultDetailMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                child: Image(
                  image: AssetImage('assets/map_map.png'),
                  width: double.infinity,
                  height: 840,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 60,
                child: Container(
                  height: 45,
                  width: 330,
                  decoration: BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Theme.of(context).shadowColor.withOpacity(0.3),
                          offset: const Offset(0, 3),
                          blurRadius: 5.0)
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.chevron_left_rounded,
                                color: Color(0xff1BC27A))),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SearchBar()));
                          },
                          child: SizedBox(
                            child: Text('한 잔 하젠',
                                style: TextStyle(color: Colors.grey)),
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => mainScreen()));
                            },
                            child: Icon(Icons.cancel_rounded,
                                color: Color(0xff1BC27A)))
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Detail()),
                    );
                  },
                  child: (Image(
                    image: AssetImage('assets/bottom_sheet.png'),
                    fit: BoxFit.cover,
                  )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/*
class resultSearchDetails extends StatefulWidget {
  const resultSearchDetails({Key? key}) : super(key: key);

  @override
  State<resultSearchDetails> createState() => _resultSearchDetailsState();
}

class _resultSearchDetailsState extends State<resultSearchDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children:[
            Stack(
              alignment: Alignment.bottomCenter,
              children:[
                Image(
                  image: AssetImage('assets/map_map.png'),
                  width: double.infinity,
                  height: 840,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 60,
                    child: Container(
                      height: 45,
                      width: 330,
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Theme.of(context).shadowColor.withOpacity(0.3),
                              offset: const Offset(0, 3),
                              blurRadius: 5.0)
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Navigator.pop(
                                      context);
                                },
                                child: Icon(Icons.chevron_left_rounded, color: Color(0xff1BC27A))),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SearchBar())
                                );
                              },
                              child: SizedBox(
                                child:
                                Text('한 잔 하젠', style: TextStyle(color: Colors.grey)),
                              ),
                            ),
                            Icon(Icons.search, color: Color(0xff1BC27A))
                          ],
                        ),
                      ),
                    ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Detail()),
                    );
                  },
                  child: Positioned(
                    child: (
                        Image(
                          image: AssetImage('assets/bottom_sheet.png'),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
    );
  }
}
    );
  }
}


      body: Column(
        children: [
          Stack(
            children: [
              Image(
                image: AssetImage('assets/map_map.png'),
                width: double.infinity,
                height: 840,
                fit: BoxFit.cover,
              ),

            ],
          )
        ],

      )
    );
  }
}



class resultSearchDetails extends StatefulWidget {
  const resultSearchDetails({Key? key}) : super(key: key);

  @override
  State<resultSearchDetails> createState() => _resultSearchDetailsState();
}

class _resultSearchDetailsState extends State<resultSearchDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children:[
            Stack(
              alignment: Alignment.bottomCenter,
              children:[
                Image(
                  image: AssetImage('assets/map_map.png'),
                  width: double.infinity,
                  height: 840,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 60,
                    child: Container(
                      height: 45,
                      width: 330,
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Theme.of(context).shadowColor.withOpacity(0.3),
                              offset: const Offset(0, 3),
                              blurRadius: 5.0)
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Navigator.pop(
                                      context);
                                },
                                child: Icon(Icons.chevron_left_rounded, color: Color(0xff1BC27A))),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SearchBar())
                                );
                              },
                              child: SizedBox(
                                child:
                                Text('한 잔 하젠', style: TextStyle(color: Colors.grey)),
                              ),
                            ),
                            Icon(Icons.search, color: Color(0xff1BC27A))
                          ],
                        ),
                      ),
                    ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Detail()),
                    );
                  },
                  child: Positioned(
                    child: (
                        Image(
                          image: AssetImage('assets/bottom_sheet.png'),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
    );
  }
}
 */
