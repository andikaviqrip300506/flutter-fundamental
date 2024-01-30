import 'package:flutter/material.dart';



class firstRoute extends StatelessWidget {
  const firstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/second');
        },
        child: const Text('Pergi Halaman 2'),
      ),
    );
  }
}

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


