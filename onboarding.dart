import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentpage = 0;
  final int _numpages = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.black,
        
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 2.0, color: Colors.lightBlue),
                backgroundColor: Colors.black,
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
            onPressed: () {
              Navigator.pushNamed(context, 'second');
            },
            child: const Text(
              'Skip',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 15,)
        ],
      ),
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentpage = page;
              });
            },
            children: const [
              OnboardingPage(
                image: 'assets/gojo.jpg',
                title: 'Page 1 Title',
                description: 'saturo gojo 😘',
              ),
              OnboardingPage(
                image: 'assets/kakashi2.jpg',
                title: 'Page 2 Title',
                description: 'kakashi 😍',
              ),
              OnboardingPage(
                image: 'assets/itachi.png',
                title: 'Page 3 Title',
                description: 'itachi 😎',
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      _numpages,
                      (index) => _buildPageIndicator(index),
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                    // width: 380.0,
                    // child: AnimatedOpacity(
                    //   duration: Duration(milliseconds: 300),
                    //   opacity: _currentpage == _numpages - 1 ? 1.0 : 0.5,
                    //   child: ElevatedButton(
                    //                           style: ElevatedButton.styleFrom(
                    //       backgroundColor: Colors.lightBlue,elevation: 10,
                    //       shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(10),
                    //       )
                    //     ),
                    //     onPressed: () {
                          // Navigator.pushNamed(context, 'second');
                    //     },
                    //     child: Text('Login',style:TextStyle(
                    //       fontStyle: FontStyle.italic,fontSize: 25,fontWeight: FontWeight.bold,
                    //       color: Colors.white,
                    //     ) ,),
                    //   ),
                    // ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: SizedBox(
                      height: 40.0,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlue,
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        onPressed: () {
                          _pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease);
                        },
                        child: _currentpage == _numpages - 1
                            ? const Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white),
                              )
                            : const Text(
                                'Next',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white),
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPageIndicator(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 10,
      width: _currentpage == index ? 24.0 : 8.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: _currentpage == index
            ? const Color.fromARGB(255, 79, 33, 243)
            : Colors.grey,
            
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const OnboardingPage(
      {required this.image, required this.title, required this.description});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        height: 300,
        width: 300,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                width: 350,
                height: 300,
              ),
              const SizedBox(height: 20),
              Text(
                description,
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Home Page',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text(
          'Welcome to Home Page!!!!',
          style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
    );
  }
}
