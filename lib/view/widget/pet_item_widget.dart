import 'package:flutter/cupertino.dart';

import '../../constant/color.dart';
import '../../constant/string.dart';
import '../../model/pet_model.dart';

Widget pitItemWidget({required Pet pet}) => Container(
      height: 140,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 14,vertical: 8),
      decoration: BoxDecoration(
          color: AppColor.whiteColor, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Image.network(
              //TODO Change url to valid one
              pet.petPic,
              //"https://t4.ftcdn.net/jpg/02/66/31/75/360_F_266317554_kr7DPOoM5Uty0YCeFU9nDZTt4a2LeMJF.jpg",
              height: double.infinity,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                pet.petType,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                pet.petCategory,
                style: const TextStyle(
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/icons/animal_icon.png",
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    "${AppString.pitLove} ${pet.petLoveCount}",
                    style: const TextStyle(color: AppColor.secondaryColor),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
