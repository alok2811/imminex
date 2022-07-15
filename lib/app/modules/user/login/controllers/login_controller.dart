import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imminex/base/enums.dart';



class LoginController extends GetxController {
  /*
  USER Instances
  */

  Rx<UserLoginEnum> via = UserLoginEnum.phone.obs;

  var obscureText = true.obs;


  var selectedCountryCode =
      Country(isoCode: 'IN', iso3Code: 'IND', phoneCode: '+91', name: 'India')
          .obs;


  final tabIndex = 0.obs;
  final emailController = TextEditingController().obs;
  final phoneController = TextEditingController().obs;

  /*
  AGENT INSTANCES
  */

  final agentPasswordController = TextEditingController().obs;
  final agentPhoneController = TextEditingController().obs;
  var selectedAgentCountryCode =
      Country(isoCode: 'IN', iso3Code: 'IND', phoneCode: '+91', name: 'India')
          .obs;
  var agentPasswrdObsecure = true.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void onWebLoginChangedTab(int value) => tabIndex.value = value;

  /*
   USER METHODS
  */

  void onRadioButtonChanged(UserLoginEnum? value) => via.value = value!;
  void onSelectCountry(Country c) => selectedCountryCode.value = c;
  

  /*
  AGENT METHODS
  */
  void onSelectAgentCountry(Country c) =>  selectedAgentCountryCode.value = c;

  onObsecureText() => agentPasswrdObsecure.value = !agentPasswrdObsecure.value;
}
