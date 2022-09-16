import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {

  const BasicDesignScreen({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Column(
              children: [
                const Image(image: AssetImage('assets/landscape.jpg')),

                const Title(),

                //Buttom section
                const ButtonSection(),

                //Descripcion
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: const Text(
            'Inceptos penatibus quidam alterum id altera hac appetere arcu. Sale sumo aliquid odio referrentur voluptatum docendi posuere. Dui putent repudiare dicam volumus eros his volutpat interesset. Explicari regione omittantur rhoncus te duo. Lorem praesent veri suscipit decore vidisse nisl. Tractatos melius vocibus augue quidam. Donec quem commune molestie habitant. Assueverit vis varius mei definitiones aliquet nullam quidam adipiscing. Praesent malorum massa sadipscing agam.'),
                ),
      ],
            )
        ); //Scaffold
    }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Oeschinene Lake Compogroud', style: TextStyle(fontWeight: FontWeight.bold),),
              Text('kandersteng jlsakdfjlñas', style: TextStyle(color: Colors.black45),),
            ],
          ),

          Expanded(child: Container()),

          const Icon(Icons.star, color: Colors.red,),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(icon: Icons.call, texto: 'CALLS',),
          CustomButton(icon: Icons.route, texto: 'ROUTE',),
          CustomButton(icon: Icons.share, texto: 'SHARE',),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String texto;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 30,),
        Text(texto, style: const TextStyle(color: Colors.blue),),
      ],
    );
  }
}