import 'package:final_project/models/book.dart';
import 'package:final_project/screens/book_detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      title: 'Books reviwe',
      debugShowCheckedModeBanner: false,
      home: HomeBooks(),
    );
  }
}

class HomeBooks extends StatelessWidget {
  HomeBooks({super.key});

  List<Book> dramaBooks = [
    Book(
        title: 'the float in our stars',
        description:
            'Cancer is such a dreadful disease, indiscriminate in its choice of victim, choosing with aplomb regardless of age, gender, or status. There are a myriad of stories behind the tragedy and many of them remain untold.',
        imgUrl: 'assets/images/d_1.jpg',
        genre: 'drama'),
    Book(
        title: 'كبرت و نسيبت ان انسى',
        description: 'تقول بثينة: قالوا لي دائماً: تكبرين وتنسين.',
        imgUrl: 'assets/images/d_2.jpg',
        genre: 'drama'),
    Book(
        title: 'صاحب الظل الطويل',
        description:
            'قصة الرواية كلاسيكية نوعا ما فهي تحكي عن فتاة يتيمة او بمعنى اصح لقيطة تدعى جودي',
        imgUrl: 'assets/images/d_3.png',
        genre: 'drama'),
    Book(
        title: 'the kite runner',
        description:
            '1970s Afghanistan: Twelve-year-old Amir is desperate to win the local kite-fighting tournament and his loyal friend Hassan promises to help him.',
        imgUrl: 'assets/images/d_4.webp',
        genre: 'drama')
  ];

  List<Book> philBooks = [
    Book(
      title: 'عالم صوفي',
      description:
          'استطاعت "صوفي" ان تنتشل الأفكار الخامدة وتوقظها من سباتها الطويل وتحررها من سجن الجسد ... وها هي تحاول معالجتها من هذيانها المزمن ... وتعيد ترتيب مكامن العقل الباطن وتنظمه بأسلوب هندسي فلسفي فريد ... شكرا صوفي ... وشكراً لمن أهداني إيّاكِ ... أنّاي صارت لكِ عشيقة',
      imgUrl: 'assets/images/p_1.jpg',
    ),
    Book(
      title: 'الخيميائي',
      description:
          '“الخيميائي” رواية عن راعي أندلسي يسافر طلباً لكنز مدفون في مكان قريب من الأهرامات',
      imgUrl: 'assets/images/p_2.jpg',
    ),
    Book(
      title: 'قصه الفلاسفه',
      description:
          'صة الفلسفة: حياة وآراء أعاظم رجال الفلسفة في العالم هو كتاب من تأليف ويل ديورانت يذكر فيه لمحات عن العديد من الفلاسفة الغربيين البارزين وأفكارهم، ابتداء من سقراط وأفلاطون مروراً بفريدرك نيتشه. حاول ديورانت إظهار الترابط بين أفكارهم وكيف أن فكرة أحد الفلاسفة ألهمت من جاء بعده.',
      imgUrl: 'assets/images/p_3.jpg',
    ),
  ];

  List<Book> romBooks = [
    Book(
      title: 'title',
      description:
          'وكالعديد من مؤلفات دوستويفسكي تُروَى القصة من منظور الراوي المجهول الاسم، وفي القصة يعيش الراوي في مدينة سانت بطرسبورغ، وهو يعاني من الوحدة',
      imgUrl: 'assets/images/r_1.jpg',
    ),
    Book(
      title: 'The Lady main',
      description:
          'A delightful new western romance from the New York Times bestselling author of Redeeming LoveNew York Times bestselling author Francine Rivers returns to the California frontier in this sweeping',
      imgUrl: 'assets/images/r_2.jpg',
    ),
    Book(
      title: 'It Ends with Us',
      description:
          'It is based on the relationship between Hoovers mother and father',
      imgUrl: 'assets/images/r_3.jpg',
    ),
    Book(
      title: 'Thing We Never Got Over',
      description:
          'As in it was very generic quotes about choosing love over fear',
      imgUrl: 'assets/images/r_4.jpg',
    ),
  ];
  List<Book> ficBook = [
    Book(
      title: 'كافكا على الشاطئ',
      description:
          "What I think is this: You should give up looking for lost cats and start searching for the other half of your shadow",
      imgUrl: 'assets/images/ff.jpg',
    ),
    Book(
      title: 'Harry Potter',
      description:
          'Harry Potter is a series of seven fantasy novels written by British author J. K. Rowling. ',
      imgUrl: 'assets/images/fff.jpg',
    ),
  ];
  List<Book> oBook = [
    Book(
      title: 'Harry Potter',
      description:
          'Harry Potter is a series of seven fantasy novels written by British author J. K. Rowling. ',
      imgUrl: 'assets/images/o_1.jpg',
    ),
    Book(
      title: 'السماح بالرحيل',
      description: 'description',
      imgUrl: 'assets/images/o_2.jpg',
    ),
    Book(
      title: 'الرجال من المريخ و نساء من الزهره',
      description:
          'الدليل الرائع لفهم الجنس الآخر .. بالنظر إلى اعتماده على سنوات من الاستشارات الناجحة للافراد والمتزوجين،',
      imgUrl: 'assets/images/o_3.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('books')),
      ),
      body: Stack(children: <Widget>[
        Container(
          height: size.height * .35,
          decoration: BoxDecoration(color: Color.fromARGB(255, 149, 204, 198)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text(
                  "Let's Read a new book!",
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(fontWeight: FontWeight.w900),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: .85,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: <Widget>[
                      CategoryCard(
                        title: "Drama",
                        assets: 'assets/images/dd.jpg',
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => BookDetail(
                                    books: dramaBooks,
                                    genre: 'Drama',
                                  )));
                        },
                      ),
                      CategoryCard(
                        title: 'philosophy',
                        assets: 'assets/images/ph.jpg',
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => BookDetail(
                                    books: philBooks,
                                    genre: 'philosophy',
                                  )));
                        },
                      ),
                      CategoryCard(
                        title: 'Romance',
                        assets: 'assets/images/l.jpg',
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => BookDetail(
                                    books: romBooks,
                                    genre: 'Romace',
                                  )));
                        },
                      ),
                      CategoryCard(
                        title: 'fiction',
                        assets: 'assets/images/f.png',
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => BookDetail(
                                    books: ficBook,
                                    genre: 'Fiction',
                                  )));
                        },
                      ),
                      CategoryCard(
                        title: 'ohters',
                        assets: 'assets/images/k.jpg',
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => BookDetail(
                                    books: oBook,
                                    genre: 'others',
                                  )));
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String assets;
  final String title;
  final onTap;

  const CategoryCard({
    Key? key,
    required this.assets,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 17,
              spreadRadius: -15,
            )
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Spacer(),
                Image.asset(assets),
                Spacer(),
                Text(title),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
