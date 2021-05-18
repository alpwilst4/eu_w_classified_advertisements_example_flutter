import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';

 
 
 class CountrySelectScreen extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: CountryListPick(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Ülke Seçiniz'),
        ),
        
        // if you need custome picker use this
        pickerBuilder: (context, CountryCode countryCode){
          return Row(
            children: [
              Image.asset(
                countryCode.flagUri,
                package: 'country_list_pick',
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(countryCode.name,style: TextStyle(color: Colors.black),),
              ),
              
            ],
          );
         },

        // To disable option set to false
        theme: CountryTheme(
          isShowFlag: true,
          isShowTitle: true,
          isShowCode: false,
          isDownIcon: true,
          showEnglishName: true,
        ),
        // Set default value
        initialSelection: 'Turkey',
        // or
        // initialSelection: 'US'
        onChanged: (CountryCode code) {
          print(code.name);
          print(code.code);
          print(code.dialCode);
          print(code.flagUri);
        },
        // Whether to allow the widget to set a custom UI overlay
        useUiOverlay: true,
        // Whether the country list should be wrapped in a SafeArea
        useSafeArea: true
        ),
     );
   }
 }