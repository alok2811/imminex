import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';

class CustomCountryCodePicker extends StatelessWidget {
  final void Function(Country) onSelectCountry;
  final Country selectedCountryCode;
   final bool showCode;
  const CustomCountryCodePicker(
      {Key? key,
        this.showCode = true,
      required this.onSelectCountry,
      required this.selectedCountryCode})
      : super(key: key);
  void _openCountryPickerDialog(BuildContext context) => showDialog(
        context: context,
        builder: (context) => Theme(
            data: Theme.of(context).copyWith(primaryColor: Colors.pink),
            child: CountryPickerDialog(
                titlePadding: const EdgeInsets.all(8.0),
                searchCursorColor: Colors.pinkAccent,
                searchInputDecoration:
                    const InputDecoration(hintText: 'Search...'),
                isSearchable: true,
                title: const Text('Select your country'),
                onValuePicked: onSelectCountry,
                itemBuilder: (c) => Row(
                      children: [
                        CountryPickerUtils.getDefaultFlagImage(c),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Expanded(
                            child:
                                Text("+${c.phoneCode} ${c.name}(${c.isoCode})"))
                      ],
                    ))),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
          onTap: () {
            _openCountryPickerDialog(context);
          },
          child: showCode ? Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage(
                  CountryPickerUtils.getFlagImageAssetPath(
                      selectedCountryCode.isoCode),
                  package: "country_pickers",
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                selectedCountryCode.phoneCode,
              ),
            ],
          ):  CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage(
              CountryPickerUtils.getFlagImageAssetPath(
                  selectedCountryCode.isoCode),
              package: "country_pickers",
            ),
          ),),
    );
  }
}
