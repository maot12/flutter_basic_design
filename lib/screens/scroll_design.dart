import 'package:flutter/material.dart';

class ScrollDesign extends StatelessWidget {

  final boxDecoration =  const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5,0.5],
          colors: [
            Color(0xff5EE8C5),
            Color(0xff30BAD6)
          ]
      )
  );

  const ScrollDesign({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {

        return  Scaffold(
          backgroundColor: const Color(0xff30BAD6),
          body: Container(
            decoration: boxDecoration,
            child: PageView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: const [
                Page1(),
                Page2(),
              ],
            ),
          ) //Center
        ); //Scaffold
    }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        //Background image
        Background(),

        MainContent(),
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 40,),
          const Text('11º', style: textStyle),
          const Text('Miércoles', style: textStyle),
          //TODO: expanded
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white,)
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      //height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(
          image: AssetImage('assets/scroll-1.png')
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {

          },
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xff0098FA),
            shape: const StadiumBorder()
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Bienvenido',style: TextStyle(color: Colors.white, fontSize: 50),),
          )
        ),
      ),
    );
  }
}

