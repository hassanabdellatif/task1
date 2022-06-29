import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:task1/components/build_button.dart';
import 'package:task1/components/build_container.dart';
import 'package:task1/components/build_divider.dart';
import 'package:task1/components/build_form.dart';
import 'package:task1/components/build_image.dart';
import 'package:task1/components/build_label_text.dart';
import 'package:task1/components/build_outlined_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildImage(
              width: double.infinity,
              height: 120,
            ),
            BuildContainer(
              pageName: "Register",
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  BuildLabelText(
                    label: "Email",
                  ),
                  BuildForm(
                    text: "Eg. example@email.com",
                    type: TextInputType.emailAddress,
                    controller: emailController,
                  ),
                  BuildLabelText(
                    label: "Phone Number",
                  ),
                  BuildForm(
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
                  BuildLabelText(
                    label: "Password",
                  ),
                  BuildForm(
                    isPassword: true,
                    text: "Password",
                    type: TextInputType.visiblePassword,
                    controller: passwordController,
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ],
              ),
            ),
            BuildButton(
              text: "Register",
              buttonColor: Colors.blue,
              textColor: Colors.white,
              width: double.infinity,
              height: 50,
              route: "register_screen",
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
                  "Has any account?",
                  textAlign: TextAlign.center,
                ),
                TextButton(
                  child: Text(
                    'Sign in here',
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed("login_screen");
                  },
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "By registering your account, you are agree to our",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                TextButton(
                  child: Text(
                    'terms and condition',
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
