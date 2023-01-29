import 'package:flutter/material.dart';
import 'package:flutter_sample_2/constants/styles.dart';
import 'package:flutter_sample_2/provider/Gender_selection_provider/gender_selection_provider.dart';
import 'package:provider/provider.dart';

class GenderSelection extends StatelessWidget {
  const GenderSelection({Key? key}) : super(key: key);
  static String routeName = "gender_selection_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gender Selection"),
      ),
      body: Consumer<GenderSelectionProvider>(
          builder: (context, provider, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            RichText(
              text: TextSpan(
                  text: "Select your gender",
                  style: Styles().normalS(
                      fontS: 18, FontW: FontWeight.w900, color: Colors.green),
                  children: <TextSpan>[
                    TextSpan(
                        text: "*",
                        style: Styles().normalS(
                            fontS: 20,
                            FontW: FontWeight.bold,
                            color: Colors.red))
                  ]),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                provider.change(1);
              },
              child: Row(
                children: [
                Icon(provider.radio == 1?  Icons.radio_button_checked : Icons.radio_button_off,
                color: provider.radio == 1? Colors.blue : Colors.black,
                size: provider.radio == 1? 20 : 16,
                ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Female",
                    style: Styles().normalS(
                        fontS: 16, FontW: FontWeight.w700, color: Colors.black),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: (){
                provider.change(2);
              },
              child: Row(
                children: [
                  Icon(provider.radio == 2 ? Icons.radio_button_checked : Icons.radio_button_off,
                  color: provider.radio == 2 ? Colors.blue : Colors.black,
                  size: provider.radio == 2 ? 20 : 16,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Male",
                    style: Styles().normalS(
                        fontS: 16, FontW: FontWeight.w700, color: Colors.black),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: (){
                provider.change(3);
              },
              child: Row(
                children: [
                  Icon(provider.radio == 3 ? Icons.radio_button_checked : Icons.radio_button_off,
                  color: provider.radio == 3 ? Colors.blue : Colors.black,
                  size: provider.radio == 3 ? 20 : 16,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Others",
                    style: Styles().normalS(
                        fontS: 16, FontW: FontWeight.w700, color: Colors.black),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ]),
        );
      }),
    );
  }
}
