import 'package:flutter/material.dart';

import 'package:elegant_notification/elegant_notification.dart';

class Description extends StatefulWidget {
  const Description({super.key});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  // isFav is used to determine whether post is liked or not
  bool isFav = false;
  // t is the text of a widget which changes on click
  String t = "Show more";
  // hard coded input
  String s =
      "Join us for our Empowering Together event where we bring together like-minded individuals from diverse backgrounds to share their experiences Together event where we bring together like-minded individuals from diverse...";
  String s1 =
      "Join us for our Empowering Together event where we bring together like-minded individuals from diverse backgrounds to share their experiences Join us for our Empowering Together event where we bring together like-minded individuals from diverse backgrounds to share their experiences Join us for our Empowering Together event where we bring together like-minded individuals from diverse backgrounds to share their experiences Join us for our Empowering Together event where we bring together like-minded individuals from diverse backgrounds to share their experiences";
  String s2 =
      "Join us for our Empowering Together event where we bring together like-minded individuals from diverse backgrounds to share their experiences Together event where we bring together like-minded individuals from diverse...";
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        // I uses stack to implement the two part of screen: 1st part in 1 container and 2nd in 2 container
        child: Stack(
          children: [
            Container(
              height: size.height / 2,
              width: size.width,
              decoration: const BoxDecoration(
                // show banckground image of first container
                image: DecorationImage(
                    image: AssetImage(
                      'assets/img1.png',
                    ),
                    fit: BoxFit.fill),
              ),
              // column is used to diplay the widget in vertical way
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // just for space from above
                  SizedBox(
                    width: size.width,
                    height: size.height / 24,
                  ),
                  Container(
                    width: size.width,
                    height: size.height / 10,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                            ),
                            child: const Icon(
                              Icons.arrow_back_ios_new_outlined,
                              size: 20,
                              // color: Colors.white,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isFav = !isFav;
                            });
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                            ),
                            child: isFav
                                ? const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                : const Icon(
                                    Icons.favorite_outline,
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: size.width,
              margin: EdgeInsets.only(top: size.height / 2.5),
              padding: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(
                  //   width: size.width,
                  //   height: size.height / 12,
                  // ),
                  Container(
                    margin: EdgeInsets.only(top: size.height / 40),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'Sunflower Suites',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Rs. 21,000",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.grey,
                        ),
                        Text(
                          '2118 Thornridge Cir. Syracus',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                    child: Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Text(s),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (t == "Show more") {
                                    t = "Show less";
                                    s = s1;
                                  } else {
                                    t = "Show more";
                                    s = s2;
                                  }
                                });
                              },
                              child: Text(
                                t,
                                style: const TextStyle(
                                  color: Color.fromRGBO(66, 77, 189, 1),
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: size.width,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/img3.png',
                          width: size.width / 8,
                          height: size.height / 10,
                        ),
                        Image.asset(
                          'assets/img4.png',
                          width: size.width / 8,
                          height: size.height / 10,
                        ),
                        Image.asset(
                          'assets/img5.png',
                          width: size.width / 8,
                          height: size.height / 10,
                        ),
                        Image.asset(
                          'assets/img6.png',
                          width: size.width / 8,
                          height: size.height / 10,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/img7.png'),
                                fit: BoxFit.fill),
                          ),
                          child: const Center(
                            child: Text(
                              "+20",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        // Image.asset('assets/img7.png'),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width,
                    height: size.height / 12,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(88, 198, 191, 0.486),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        border: Border.all()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/icon8.png',
                              color: const Color.fromRGBO(0, 166, 156, 1),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text('02'),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/icon9.png',
                              color: const Color.fromRGBO(0, 166, 156, 1),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text('05'),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/icon10.png',
                              color: const Color.fromRGBO(0, 166, 156, 1),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text('200m'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      ElegantNotification.success(
                              title: const Text('Hotel'),
                              description: const Text('Booked Succsssfully'))
                          .show(context);
                    },
                    child: Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 24, top: 21, right: 16, bottom: 5),
                          decoration: const BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          height: size.height / 12,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 16),
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(0, 166, 156, 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          height: size.height / 12,
                          child: const Center(
                            child: Text(
                              'Book Now',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
