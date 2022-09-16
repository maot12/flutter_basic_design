import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(color: Colors.blue, icon: Icons.border_all, txt: 'General',),
            _SingleCard(color: Colors.pinkAccent, icon: Icons.car_rental, txt: 'Transport',)
          ]
        ),
        TableRow(
            children: [
              _SingleCard(color: Colors.blue, icon: Icons.shopping_bag_outlined, txt: 'Shopping',),
              _SingleCard(color: Colors.pinkAccent, icon: Icons.payment, txt: 'Bill',)
            ]
        ),
        TableRow(
            children: [
              _SingleCard(color: Colors.blue, icon: Icons.play_circle, txt: 'Entertaiment',),
              _SingleCard(color: Colors.pinkAccent, icon: Icons.fastfood, txt: 'Grosery',)
            ]
        ),
        TableRow(
            children: [
              _SingleCard(color: Colors.blue, icon: Icons.border_all, txt: 'General',),
              _SingleCard(color: Colors.pinkAccent, icon: Icons.car_rental, txt: 'Transport',)
            ]
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String txt;
  const _SingleCard({Key? key, required this.icon, required this.color, required this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var column = Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  CircleAvatar(
                  backgroundColor: color,
                  radius: 30,
                  child: Icon(icon, size: 35,),
                  ),
                  const SizedBox(height: 30,),
                  Text(txt, style: TextStyle(color: color, fontSize: 18),),
              ],
            );
    return _CardBackground(child: column);
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;
  const _CardBackground({
    Key? key, 
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5
          ),
          child: Container(
            width: 130,
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20)
            ),
            child: child,
          )
        )
      )
    );
  }
}


