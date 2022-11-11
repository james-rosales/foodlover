import 'package:flutter/material.dart';

class LabeledContainers extends StatelessWidget {
  const LabeledContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('pressed'),
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: SizedBox(
          width: 170,
          child: Column(
            children: [
              Container(
                width: 150,
                height: 220,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(
                        0.0,
                        4.0,
                      ),
                      blurRadius: 6.0,
                      color: Color.fromARGB(
                        25,
                        0,
                        0,
                        0,
                      ),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      30,
                    ),
                    topRight: Radius.circular(
                      30,
                    ),
                    topLeft: Radius.circular(
                      30,
                    ),
                    bottomRight: Radius.circular(
                      30,
                    ),
                  ),
                  color: Colors.white,
                ),
                child: Align(
                  alignment: FractionalOffset.topCenter,
                  child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/images/hamburger.png',
                          ),
                          const Text(
                            'Yum Burger',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 92, 92, 92)),
                          ),
                          const Text(
                            '₱69.00',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 241, 160, 37)),
                          )
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
