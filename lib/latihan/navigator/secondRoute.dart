import 'package:flutter/material.dart';

class secondRoute extends StatelessWidget {
  const secondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text('kembali'),
      ),
    );
  }
}
