import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Image(
          image: AssetImage('assets/landscape.jpg'),
        ),
        const Title(),
        //Button section
        const ButtonSection(),
        //Description
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: const Text(
              'Ipsum incididunt cillum ea excepteur id id ea et deserunt sunt amet non reprehenderit. Esse sit non ipsum aute labore amet ut occaecat est proident officia ipsum est elit. Sint ut consectetur voluptate elit dolor cupidatat esse do.'),
        )
      ]),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
            Text(
              'Deschinen Lake Campground',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Kandersteg.Switzerland',
                style: TextStyle(color: Colors.black45))
          ]),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            CustomButton(icon: Icons.call, text: 'CALL'),
            CustomButton(icon: Icons.route, text: 'ROUTE'),
            CustomButton(icon: Icons.share, text: 'SHARE')
          ]),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 30,
          color: Colors.blue,
        ),
        const SizedBox(height: 10),
        Text(
          text,
          style: const TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
