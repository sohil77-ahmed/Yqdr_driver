part of 'order_details_imports.dart';

class OrderDetailsController {
  final GlobalKey<CustomButtonState> btnKey = GlobalKey<CustomButtonState>();
  final GlobalKey<CustomButtonState> btnKey2 = GlobalKey<CustomButtonState>();

  ObsValue<int> refundMethod = ObsValue<int>.withInit(0);

  void setRefundMethod(int index) {
    refundMethod.setValue(index);
  }
}
