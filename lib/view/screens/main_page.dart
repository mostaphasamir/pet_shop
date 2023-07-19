import 'package:flutter/material.dart';
import 'package:pet_shop/constant/color.dart';
import 'package:pet_shop/constant/string.dart';

import '../../data/pet_local_data.dart';
import '../widget/pet_item_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title: const Text(
          AppString.petMarket,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: TextField(
              onChanged: (value) {},
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                fillColor: AppColor.primaryColor,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                prefixIcon: Image.asset(
                  "assets/icons/search_icon.png",
                ),
                hintText: AppString.searchByPetType,
                hintStyle: const TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                filled: true,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
              color: AppColor.primaryColor,
              child: ListView.builder(
                itemCount: petList.length,
                itemBuilder: (context, index) =>pitItemWidget(pet: petList[index]) ,
              ),
            ),
          )
        ],
      ),
    );
  }
}
