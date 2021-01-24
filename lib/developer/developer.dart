import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DeveloperScreen extends StatefulWidget {
  @override
  _DeveloperScreenState createState() => _DeveloperScreenState();
}

class _DeveloperScreenState extends State<DeveloperScreen> {
  int _current = 0;

  final List<Widget> _cardList = [
    ScrollCard(
      image: 'assets/images/small_image1.png',
      //icon: Icons.ac_unit,
      title: 'Чистая прибыль',
      subtitle:
          'Использование компьютера требует специальных навыков. Таких людей называют «хакерами».',
    ),
    ScrollCard(
      //icon: Icons.access_alarm,
      image: 'assets/images/small_image1.png',
      title: 'Модернизация продукта',
      subtitle: 'Текст 2',
    ),
    ScrollCard(
      //icon: Icons.access_time,
      image: 'assets/images/small_image1.png',
      title: 'Эффективность и\nрентабельность',
      subtitle: 'Текст 3',
    ),
    ScrollCard(
      //icon: Icons.accessibility,
      image: 'assets/images/small_image1.png',
      title: 'Модернизация продукта',
      subtitle: 'Текст 4',
    ),
    ScrollCard(
      //icon: Icons.accessible,
      image: 'assets/images/small_image1.png',
      title: 'Устойчивое развитие',
      subtitle: 'Текст 5',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/picture1.png'),
              Container(
                //alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Надежный застройщик',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                          'Рис, гречка два отличных источника углеводов. Именно их при диете можно употреблять в небольших порциях. сли уж без кофе совсем никак, тогда лучше пить его уже после еды, и с добавлением молока. Для правильного перекуса прекрасно подойдет яблоко, стакан кефира или горсть орехов. Правильный завтрак спортсмена или человека с высокой физической активностью, отличается от завтрака обычного человека.'),
                    ],
                  ),
                ),
              ),
              CarouselSlider(
                items: _cardList,
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 3.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                    "Являясь одной из самых распространённых в мире сельскохозяйственных культур, рис занимает главенствующую позицию в национальной кухне сотен народов. В России до XIX века рис называли «сарацинское зерно». Более половины населения Земли питаются в основном именно рисом, что делает эту сельскохозяйственную культуру важнейшей на планете."),
              ),
              /*Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _cardList.map((e) {
                  int index = _cardList.indexOf(e);
                  return Container(
                    width: 5.5,
                    height: 5.5,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index
                          ? Color.fromRGBO(255, 0, 0, 1)
                          : Color.fromRGBO(0, 0, 0, 0.2),
                    ),
                  );
                }).toList(),
              )*/
            ],
          ),
        ),
      ),
    );
  }
}

class ScrollCard extends StatelessWidget {
  final String subtitle;
  final String title;
  final String image;
  //final IconData icon;

  const ScrollCard({Key key, this.title, this.subtitle, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(flex: 1, child: Image.asset(image)),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
