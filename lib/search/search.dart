import 'package:auth_firebase/search/components/city.dart';
import 'package:auth_firebase/search/components/filter.dart';
import 'package:flutter/material.dart';

import '../auth.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: FlatButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Authentication();
                          }),
                        );
                      },
                      icon: Icon(Icons.account_circle_rounded),
                      label: SizedBox.shrink(),
                    ),
                  ),
                  Flexible(
                    child: Image.asset(
                      'assets/images/image1.png',
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 60, left: 20, right: 20),
                child: Text(
                  "Выберите город или воспользуйтесь удобным фильтром.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SearchCard(
                        image: 'assets/images/city.png',
                        title: 'Город',
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return City();
                            }),
                          );
                        },
                      ),
                      VerticalDivider(
                        thickness: 2,
                      ),
                      SearchCard(
                        image: 'assets/images/filter.png',
                        title: 'Фильтр',
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Filter();
                            }),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SearchCard extends StatelessWidget {
  final String image;
  final String title;
  final Function press;

  const SearchCard({
    Key key,
    this.image,
    this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Column(
          children: [
            Image.asset(
              image,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
      onTap: press,
    );
  }
}
