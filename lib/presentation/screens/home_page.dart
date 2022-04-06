import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ncl_app/presentation/notifiers/ship_state.dart';
import 'package:ncl_app/utils/constants.dart';
import 'package:ncl_app/utils/enums.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NCL Tech Assessment App'),
        backgroundColor: regentsGrey,
        titleTextStyle: Theme.of(context).textTheme.headline1,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Select a ship to view more details',
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,
            ),
            for (var ship in Ships.values)
              Padding(
                padding: const EdgeInsets.all(8),
                child: ElevatedButton(
                  onPressed: () {
                    ref.watch(currentShip.state).state = ship;
                    Navigator.pushNamed(context, 'shipDetail');
                  },
                  child: Text(ship.name.toUpperCase()),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
