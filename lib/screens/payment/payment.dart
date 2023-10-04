import 'package:flutter/material.dart';
import 'package:in_app_payment/in_app_payment.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({
    super.key,
  });

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final pay = HNGPay();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: pay.googlePay(amountToPay: "24"), //for android implementaion
        ),
      ),
    );
  }
}
