import 'package:flutter/material.dart';
import 'package:trader_sample/models/qoute.model.dart';

class QouteItem extends StatelessWidget {
  final Qoute qoute;

  const QouteItem({Key key, this.qoute}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    qoute.type,
                    style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                  ),
                  Text(
                    qoute.toFormatedDate(qoute.date),
                    style: TextStyle(
                        fontSize: 12, color: Colors.grey[500], height: 1),
                  ),
                  Text(
                    'Spread: ${qoute.spread}',
                    style: TextStyle(
                        fontSize: 12, color: Colors.grey[500], height: 1.2),
                  ),
                ],
              ),
              Row(
                children: [
                  drawInf(qoute),
                  SizedBox(
                    width: 20,
                  ),
                  drawInf(qoute)
                ],
              )
            ],
          ),
        ),
        Divider(
          height: 2.0,
          color: Colors.grey,
        )
      ],
    );
  }

  Widget drawInf(Qoute qoute) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              qoute.extractRoundedNumber(qoute.low)[0].toString(),
              style: TextStyle(
                  height: 1.6,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            Text(
              qoute.extractRoundedNumber(qoute.low)[1].toString(),
              style: TextStyle(
                  height: 1.1,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            Text(
              qoute.extractRoundedNumber(qoute.low)[2].toString(),
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
          ],
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          'Low: ${qoute.lowSecondary.toStringAsFixed(6)}',
          style: TextStyle(fontSize: 14, color: Colors.grey[500], height: 1.2),
        )
      ],
    );
  }
}
