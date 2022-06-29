import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:task1/components/build_button.dart';
import 'package:task1/components/build_container.dart';
import 'package:task1/components/build_divider.dart';
import 'package:task1/components/build_form.dart';
import 'package:task1/components/build_image.dart';
import 'package:task1/components/build_label_text.dart';
import 'package:task1/components/build_outlined_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: IconButton(
              icon: Icon(
                Icons.keyboard_arrow_left,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, "login_screen");
              },
            ),
          ),
        ),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildImage(
            width: double.infinity,
            height: 250,
          ),
          BuildContainer(
            pageName: "Login",
          ),
          BuildLabelText(
            label: "Phone Number",
          ),
          Form(
            key: formKey,
            child: BuildForm(
              isPhoneNumber: true,
              text: "Eg. 812345678",
              type: TextInputType.phone,
              controller: phoneController,
              prefixIcon: CountryCodePicker(
                padding: EdgeInsets.symmetric(horizontal: 8),
                onChanged: print,
                initialSelection: '+81',
                showCountryOnly: false,
                showOnlyCountryWhenClosed: false,
                showDropDownButton: true,
                favorite: ['+81', 'EG'],
                showFlagMain: false,
              ),
            ),
          ),
          BuildButton(
            text: "Sign in",
            buttonColor: Colors.blue,
            textColor: Colors.white,
            width: double.infinity,
            height: 50,
            route: "",
          ),
          BuildDivider(),
          BuildOutlinedButton(
            text: "Sign with by google",
            height: 50,
            width: double.infinity,
            route: "",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Doesn’t have any account?",
                textAlign: TextAlign.center,
              ),
              TextButton(
                child: Text(
                  'Register here',
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed("register_screen");
                },
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "Use the application according to policy rules. Any\n kinds of violations will be subject sanctions.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
