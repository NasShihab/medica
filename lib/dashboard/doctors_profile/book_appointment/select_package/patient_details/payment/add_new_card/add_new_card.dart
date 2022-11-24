import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/reusable_widget/button_custom.dart';
import '../../../../../../../reusable_widget/appbar_custom.dart';
import '../../../../../../../reusable_widget/sized_box.dart';
import 'add_new_card_widget.dart';

class AddNewCard extends StatelessWidget {
  const AddNewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      appBar: customAppBar(
        context,
        appBarTitle: 'Add New Card',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height10(),
            const Image(width: double.infinity, image: AssetImage('assets/images/visa_card.png')),
            Text('Card Name', style: TextStyle(fontSize: 18.sp)),
            height20(),
            add_Card_TextField(pdHintText: 'Antony Gomez'),
            height20(),
            Text('Card Number', style: TextStyle(fontSize: 18.sp)),
            height20(),
            add_Card_TextField(pdHintText: '4587 1549 3650 4005'),
            height20(),
            Row(
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Expiry Date', style: TextStyle(fontSize: 18.sp)),
                      height20(),
                      Expiry_TextField(exHintText: '26/06/22'),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('CVV', style: TextStyle(fontSize: 18.sp)),
                      height20(),
                      add_Card_TextField(pdHintText: '910'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: pdNextButton(context, tdButtonName: 'Next', tdPageName: '/Payment_UpdateCard'),
      floatingActionButton: myFullCustomButton(
        buttonTitle: 'Next',
        myOnPressed: () {
          Navigator.pushNamed(context, '/Payment_UpdateCard');
        },
      ),
    );
  }
}
