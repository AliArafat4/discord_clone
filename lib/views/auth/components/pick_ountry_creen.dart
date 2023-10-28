import 'package:discord_clone/model/countries_model.dart';
import 'package:discord_clone/views/auth/components/auth_exports.dart';
import 'package:flutter/material.dart';

import '../../../data/global_data.dart';
import '../../home/explore/components/explore_text_field.dart';

class PickCountryScreen extends StatefulWidget {
  const PickCountryScreen({Key? key, required this.selected}) : super(key: key);

  final List<Countries> selected;

  @override
  State<PickCountryScreen> createState() => _PickCountryScreenState();
}

class _PickCountryScreenState extends State<PickCountryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: scaffoldBackgroundColor,
          elevation: 1,
          bottom: const PreferredSize(
              preferredSize: Size(40, 45),
              child: Column(
                children: [
                  Divider(color: darkTextColor, height: 10, thickness: 0.8),
                  ExploreTextField(content: "Search"),
                ],
              )),
        ),

        // floatingActionButton: ,
        body: Padding(
          padding: const EdgeInsets.only(top: 4, left: 16),
          child: ListView.separated(
            itemCount: listOfCountries.length,
            separatorBuilder: (context, index) => const Divider(color: Colors.white),
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    widget.selected.clear();
                    widget.selected.add(listOfCountries[index]);
                    //TODO: FIX ERROR
                    context.findAncestorStateOfType<PhoneTextFieldState>()!.setState(() {});
                    Navigator.pop(context);
                  },
                  child: SizedBox(
                    height: 25,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(listOfCountries[index].name,
                            style: const TextStyle(color: Colors.white, fontSize: fontSize16)),
                        Text(listOfCountries[index].dial_code,
                            style: const TextStyle(color: Colors.white, fontSize: fontSize16)),
                      ],
                    ),
                  ));
            },
          ),
        ));
  }
}
