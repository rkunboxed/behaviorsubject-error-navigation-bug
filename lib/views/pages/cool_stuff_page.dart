import 'package:flutter/material.dart';

import '../../blocs/cool_stuff_bloc.dart';
import '../../blocs/base_provider.dart';
import '../widgets/main_drawer.dart';

class CoolStuffPage extends StatefulWidget {
  @override
  CoolStuffPageState createState() {
    return CoolStuffPageState();
  }
}

class CoolStuffPageState extends State<CoolStuffPage> {
  bool _coolStuffFetched = false;
  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    var coolStuffBloc = BaseProvider.of<CoolStuffBloc>(context);
    if (!_coolStuffFetched) {
      setState(() { _coolStuffFetched = true; });
      coolStuffBloc.fetchCoolStuff(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: RyMainDrawer(),
      appBar: AppBar(
        title: const Text('Your Cool Stuff'),
      ),
      body: CoolStuff()
    );
  }
}

class CoolStuff extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var coolStuffBloc = BaseProvider.of<CoolStuffBloc>(context);

    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Column(
        children: <Widget>[
          StreamBuilder(
            stream: coolStuffBloc.coolStuff,
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data, style: TextStyle(fontSize: 24),);
              }
              if (snapshot.hasError) {
                return RaisedButton(
                  onPressed: () { Navigator.of(context).popAndPushNamed('/'); },
                  child: const Text('ERROR - GET ME OUT OF HERE'),
                );
              }
              return const SizedBox(height: 30);
            }
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                onPressed: () {coolStuffBloc.fetchCoolStuff(false);},
                child: Text('GET DATA'),
              ),
              const SizedBox(width: 20),
              RaisedButton(
                onPressed: () {coolStuffBloc.fetchCoolStuff(true);},
                child: Text('GET ERROR'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CoolStuffPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CoolStuffBloc>(
      builder: (_, bloc) => bloc ?? CoolStuffBloc(),
      onDispose: (_, bloc) => bloc.dispose(),
      child: CoolStuffPage()
    );
  }
}