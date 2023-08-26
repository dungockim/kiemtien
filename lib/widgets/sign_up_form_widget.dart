import 'package:flutter/material.dart';
import 'package:kiemtien/common/dimens.dart';
import '../common/app_colors.dart';

class FormSignUp extends StatelessWidget {
  const FormSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: Dimens.spacing16),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.person_outline_rounded,
                  color: AppColors.tSecondaryColor,
                ),
                label: Text("Username", style: TextStyle(color: Colors.black)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: Colors.black)
                ),
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.fingerprint_outlined,
                  color: AppColors.tSecondaryColor,
                ),
                label: Text("Password", style: TextStyle(color: Colors.black)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: Colors.black)
                ),
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.phone_bluetooth_speaker,
                  color: AppColors.tSecondaryColor,
                ),
                label: Text("Phone Number", style: TextStyle(color: Colors.black)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: Colors.black)
                ),
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        side: const BorderSide(width: 1, color: Colors.black),
                      ),
                    ),
                  ),
                  child:
                  const Text("SIGN UP",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}