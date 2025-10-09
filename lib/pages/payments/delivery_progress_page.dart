import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant/components/payments/my_receipt.dart';
import 'package:restaurant/components/styles/textstyle.dart';
import 'package:restaurant/models/restaurant.dart';
import 'package:restaurant/services/database/firestore.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {
  // get access to database
  FirestoreService db = FirestoreService();

  @override
  void initState() {
    super.initState();
    // if we get to this page, submit orders to firestore database
    String receipt = context.read<Restaurant>().displayCartReceipt();
    db.saveOrderToDatabse(receipt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Delivery Progress",
          style: bigText.copyWith(
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
      body: Column(children: [MyReceipt()]),
    );
  }

  // custom bottm Nav Bar -Message / Call delivery driver
  Widget _buildBottomNavBar(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          // profile pic of driver
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              shape: BoxShape.circle,
            ),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          ),
          SizedBox(width: 10),

          // driver details
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My name",
                  style: smallBoldText.copyWith(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                Text(
                  "Driver",
                  style: smallText.copyWith(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Row(
            children: [
              // message button
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  shape: BoxShape.circle,
                ),
                child: IconButton(onPressed: () {}, icon: Icon(Icons.message)),
              ),
              SizedBox(width: 10),
              // call button
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  shape: BoxShape.circle,
                ),
                child: IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
