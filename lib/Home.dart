import 'package:flutter/material.dart';
import 'package:flutterassignment/Description.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // SingleChildScrollView for the scrolling features and to make responsive for small screens
      body: SingleChildScrollView(
        // I uses stack to implement the two part of screen: 1st part in 1 container and 2nd in 2 container
        child: Stack(
          children: [
            Container(
              height: size.height / 2,
              width: size.width,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 166, 156, 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
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
                        Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(50),
                              color: const Color.fromRGBO(251, 100, 45, 1),
                            ),
                            child: Image.asset('assets/icon12.png')),
                        Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(50),
                              color: const Color.fromRGBO(251, 100, 45, 1),
                            ),
                            child: Center(
                                child: Image.asset(
                              'assets/man.png',
                              width: 40,
                            ))),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 5, top: 8),
                          decoration: BoxDecoration(
                            border: Border.all(),
                            color: const Color.fromRGBO(251, 100, 45, 1),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          width: (size.width / 1.1) - 5,
                          height: size.height / 14,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          width: size.width / 1.1,
                          height: size.height / 14,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.search,
                                size: 32,
                              ),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                margin: EdgeInsets.only(top: 10),
                                width: size.width / 2,
                                height: size.height / 14,
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      hintText: "Search News...",
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      )),
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
                    // height: size.height / 6.7,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    padding: const EdgeInsets.only(
                        top: 8, right: 16, left: 16, bottom: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: const [
                            Text(
                              'Recent Searches',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'See All',
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color.fromRGBO(251, 100, 45, 1),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                  color: const Color.fromRGBO(251, 100, 45, 1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.location_on,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                height: size.height / 15,
                                margin: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  mainAxisSize: MainAxisSize.max,
                                  children: const [
                                    Text(
                                      'Washington Ave. Manchester',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Royal Ln. Mesa',
                                      style: TextStyle(
                                        color: Colors.grey,
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
                ],
              ),
            ),
            Container(
              // height: size.height / 1.9,
              width: size.width,
              margin: EdgeInsets.only(top: size.height / 2.4),
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: size.width,
                    height: size.height / 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          padding: const EdgeInsets.fromLTRB(16, 5, 20, 5),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(251, 100, 45, 1),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 45,
                                height: 45,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(),
                                ),
                                child: Image.asset('assets/icon2.png'),
                              ),
                              const Text(
                                'Rent',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(251, 100, 45, 0.16),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(),
                          ),
                          child: Image.asset('assets/icon5.png'),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(251, 100, 45, 0.16),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(),
                          ),
                          child: Image.asset('assets/icon3.png'),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(251, 100, 45, 0.16),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(),
                          ),
                          child: Image.asset('assets/icon4.png'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                              width: size.width / 2.81,
                              height: size.height / 26,
                              // color: Colors.redAccent,
                              child: const Text(
                                'Nearby Hotels',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: size.width / 7.5,
                                  top: size.height / 57),
                              width: size.width / 5.5,
                              height: 10,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(102, 251, 100, 45),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Stack(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 4, top: 4),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(251, 100, 45, 1),
                                  border: Border.all(),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                width: (size.width / 8),
                                height: size.height / 17,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                width: size.width / 8,
                                height: size.height / 17,
                                child: const Icon(
                                  Icons.arrow_forward,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20, top: 8, right: 10),
                    height: size.height / 3,
                    width: size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, index) {
                        // Map<String, dynamic> map =
                        //     list1[index] as Map<String, dynamic>;
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Description(),
                              ),
                            );
                          },
                          child: Container(
                            width: size.width / 1.3,
                            // height: size.height / 3,
                            margin: const EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                                border: Border.all(width: 1.5),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/img2.png',
                                  width: size.width / 1.3,
                                  height: size.height / 5.9,
                                  fit: BoxFit.fill,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Text(
                                        'Sunflower Suites',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Rs. 21,000",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: const Color.fromRGBO(
                                              251, 100, 45, 1),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: const Text(
                                    '2118 Thornridge Cir. Syracus',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: size.width / 1.3,
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Image.asset('assets/icon8.png'),
                                            const Padding(
                                              padding: EdgeInsets.only(left: 8),
                                              child: Text('02'),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Image.asset('assets/icon9.png'),
                                            const Padding(
                                              padding: EdgeInsets.only(left: 8),
                                              child: Text('05'),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Image.asset('assets/icon10.png'),
                                            const Padding(
                                              padding: EdgeInsets.only(left: 8),
                                              child: Text('200m'),
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
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 20, top: 20, right: 10, bottom: 10),
                    height: size.height / 6,
                    width: size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          width: size.width / 1.3,
                          // height: size.height / 6,
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                              border: Border.all(width: 1.5),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/img2.png',
                                width: size.width / 1.3,
                                height: size.height / 6.35,
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                        );
                      },
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
