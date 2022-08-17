import 'package:flutter/cupertino.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({Key? key, required this.icon, required this.label})
      : super(key: key);
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Icon(icon),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(label),
        )
      ],
    );
  }
}
