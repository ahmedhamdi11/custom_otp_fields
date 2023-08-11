import 'package:flutter/material.dart';
import 'package:otp_fields/widgets/otp_form_fields.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OtpFormFields(
          fieldsCount: 5,
          borderType: BorderTypeEnum.outLineBorder,
          onCompleted: (otpCode) {
            _showOtpCode(context, otpCode);
          },
        ),
      ),
    );
  }

  _showOtpCode(BuildContext context, String otpCode) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text('otp code is: $otpCode'),
        contentPadding: const EdgeInsets.all(28.0),
      ),
    );
  }
}
