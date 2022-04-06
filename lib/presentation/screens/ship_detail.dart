import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ncl_app/data/models/ship_info.dart';
import 'package:ncl_app/presentation/notifiers/ship_state.dart';

class ShipDetail extends ConsumerWidget {
  const ShipDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final futureShipDetails = ref.watch(shipDetailsProvider);

    return Center(
      child: futureShipDetails.when(
        data: (data) => buildDetailCard(context: context, ref: ref, shipInfo: data),
        error: (e, st) => Text('Error: $e'),
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }

  Widget buildDetailCard({
    required BuildContext context,
    required WidgetRef ref,
    required ShipInfo shipInfo,
  }) {
    return SizedBox(
      height: 325,
      width: 400,
      child: Card(
        elevation: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: const Icon(Icons.directions_boat_outlined),
              title: Text(shipInfo.shipName ?? ''),
            ),
            Image.asset(ref.watch(currentShipImage)),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Text(
                'Capacity: ${shipInfo.shipFacts?.passengerCapacity}',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Text('Crew: ${shipInfo.shipFacts?.crew}'),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Text('Maiden Voyage: ${shipInfo.shipFacts?.inauguralDate}'),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: TextButton(
                      child: const Text('CLOSE'),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
