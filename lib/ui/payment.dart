// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:razorpay_flutter/razorpay_flutter.dart';

// class Payment extends StatefulWidget {
//   const Payment({Key? key}) : super(key: key);

//   @override
//   _PaymentState createState() => _PaymentState();
// }

// class _PaymentState extends State<Payment> {
//   late var _razorpay;
//   var amountController = TextEditingController();

//   @override
//   void initState() {
//     // TODO: implement initState
//     _razorpay = Razorpay();
//     _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
//     _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
//     _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
//     super.initState();
//   }

//   void _handlePaymentSuccess(PaymentSuccessResponse response) {
//     // Do something when payment succeeds
//     print("Payment Done");
//   }

//   void _handlePaymentError(PaymentFailureResponse response) {
//     // Do something when payment fails
//     print("Payment Fail");
//   }

//   void _handleExternalWallet(ExternalWalletResponse response) {
//     // Do something when an external wallet is selected
//   }

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: const CupertinoNavigationBar(
//         middle: Text("Procced to Payment \n    Enter Amount"),
//       ),
//       body: Container(
//         height: size.height,
//         width: size.width,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
//               child: TextField(
//                 controller: amountController,
//                 decoration:
//                     const InputDecoration(hintText: "Enter your Amount"),
//               ),
//             ),
//             CupertinoButton(
//                 color: Colors.grey,
//                 child: Text("Pay Amount"),
//                 onPressed: () {
//                   ///Make payment
//                   var options = {
//                     'key': "rzp_test_WyOySjo4ANmZyM",
//                     // amount will be multiple of 100
//                     'amount': (int.parse(amountController.text) * 100)
//                         .toString(), //So its pay 500
//                     'name': 'Intra Event Inc',
//                     'description': 'Demo',
//                     'timeout': 300, // in seconds
//                     'prefill': {'contact': '', 'email': ''}
//                   };
//                   _razorpay.open(options);
//                 })
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     _razorpay.clear();
//     super.dispose();
//   }
// }
