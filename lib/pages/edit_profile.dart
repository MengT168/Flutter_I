import 'package:flutter/material.dart';
import 'package:learnfromyt/components/app_textfield.dart';
import 'package:learnfromyt/components/user_avatar.dart';
import 'package:learnfromyt/config/app_strings.dart';

import '../components/toolbar.dart';
import '../styles/app_colors.dart';

enum Gender {
  none,
  male,
  female,
  other,
}

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Toolbar(
        title: AppStrings.editProfile,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(
                children: [
                  const Padding(
                      padding: EdgeInsets.all(10), child: UserAvatar(size: 90)),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: AppColors.primary,
                      ),
                      child: const Icon(Icons.edit, color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const AppTextfield(
                hint: AppStrings.firstName,
              ),
              const SizedBox(
                height: 10,
              ),
              const AppTextfield(
                hint: AppStrings.lastName,
              ),
              const SizedBox(
                height: 10,
              ),
              const AppTextfield(
                hint: AppStrings.phoneNumber,
              ),
              const SizedBox(
                height: 10,
              ),
              const AppTextfield(
                hint: AppStrings.location,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.fieldColor,
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                ),
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Gender',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile<Gender>(
                            title: const Text(AppStrings.male),
                            contentPadding: EdgeInsets.zero,
                            value: Gender.male,
                            visualDensity: const VisualDensity(horizontal: VisualDensity.minimumDensity,vertical: VisualDensity.maximumDensity),
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value!;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile<Gender>(
                            title: const Text(AppStrings.female),
                            contentPadding: EdgeInsets.zero,
                            value: Gender.female,
                            visualDensity: const VisualDensity(horizontal: VisualDensity.minimumDensity,vertical: VisualDensity.maximumDensity),
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value!;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile<Gender>(
                            title: const Text(AppStrings.other),
                            contentPadding: EdgeInsets.zero,
                            value: Gender.other,
                            visualDensity: const VisualDensity(horizontal: VisualDensity.minimumDensity,vertical: VisualDensity.maximumDensity),
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
