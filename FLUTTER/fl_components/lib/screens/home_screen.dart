
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes Flutter'),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context ,index) => ListTile(
          leading: const Icon(Icons.check),
          title: const Text('Nombre de la ruta') ,
          onTap: (){
            // final route = MaterialPageRoute(builder: (context) => const Listview1Screen());
            // Navigator.push(context, route);
            Navigator.pushNamed(context, 'card2');
          },
        ), 
        separatorBuilder: (_,__) => const Divider(), 
        itemCount: 10)
    );
  }
}
