import "dart:math";
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacifico_sin_limites_silicon_senpais/data/local/model/workshop_model.dart';
import 'package:pacifico_sin_limites_silicon_senpais/data/preference/model/user_preference_model.dart';
import 'package:pacifico_sin_limites_silicon_senpais/data/preference/source/user_preference_source.dart';
import 'package:pacifico_sin_limites_silicon_senpais/injectable.dart';
import 'package:pacifico_sin_limites_silicon_senpais/presentation/widgets/button/app_flat_button.dart';
import 'package:pacifico_sin_limites_silicon_senpais/resources/colors.dart';
import 'package:pacifico_sin_limites_silicon_senpais/resources/constants.dart';
import 'package:pacifico_sin_limites_silicon_senpais/resources/font_styles.dart';
import 'package:collection/collection.dart';

T getRandomElement<T>(List<T> list) {
  final random = Random();
  var i = random.nextInt(list.length);
  return list[i];
}

class WorkshopScreen extends StatelessWidget {
  final String workshopName;
  late WorkshopModel workshopModel;
  late List<UserPreferenceModel> participants;

  WorkshopScreen({Key? key, required this.workshopName}) : super(key: key) {
    workshopModel = Constants.workshops
        .firstWhere((element) => element.name == workshopName);
    final participantsDni = workshopModel.participantsList;
    participants = Constants.data
        .where((element) => participantsDni.contains(element.dni))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<UserPreferenceModel?>(
          future: getIt<UserPreferencesSource>().getUser(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }
            UserPreferenceModel? pairParticipant;

            if (workshopModel.state == Constants.workshopComplete) {
              pairParticipant = participants.firstWhereOrNull((element) =>
                  element.group == snapshot.data!.group &&
                  element.dni != snapshot.data!.dni);
            }

            final districts = [
              'La Victoria',
              'Miraflores',
              'Barranco',
              'Comas',
              'Bellavista',
              'Surco',
              'Ventanilla',
              'Independencia',
              'Breña'
            ];

            return ListView(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      gradient: RadialGradient(
                        colors: [
                          Color.fromRGBO(14, 192, 192, 0.6),
                          Color.fromRGBO(255, 255, 255, 0.1)
                        ],
                        center: Alignment(-1.0, -1.0),
                        stops: [0.1, 1],
                        radius: 0.9,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).padding.top,
                          left: 20.w,
                          right: 20.w),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30.h,
                            ),
                            Text(
                              workshopName,
                              style: AppFontStyles.primaryTextBold24,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              workshopModel.description,
                              style: AppFontStyles.primaryTextRegular14,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Column(
                              children: [
                                Row(children: [
                                  Expanded(
                                      child: SizedBox(
                                          height: 140.h,
                                          width: double.infinity,
                                          child: Card(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16.r),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(16),
                                                child: Center(
                                                  child: Text(
                                                      'La edad promedio de los participantes es ${(participants.map((e) => e.age).reduce((value, element) => value + element) / participants.length).toStringAsFixed(2)}',
                                                      style: AppFontStyles
                                                          .primaryTextRegular14),
                                                ),
                                              )))),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  Expanded(
                                      child: SizedBox(
                                          width: double.infinity,
                                          height: 140.h,
                                          child: Card(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16.r),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(16),
                                                child: Center(
                                                  child: Text(
                                                      // random district
                                                      'Los participantes pertenecen en su mayoría al distrito de ${getRandomElement(districts)}',
                                                      style: AppFontStyles
                                                          .primaryTextRegular14),
                                                ),
                                              )))),
                                ]),
                              ],
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            pairParticipant != null
                                ? SizedBox(
                                    width: double.infinity,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        RichText(
                                            text: TextSpan(
                                                text: 'Tu pareja ',
                                                style: AppFontStyles
                                                    .primaryTextRegular20,
                                                children: [
                                              TextSpan(
                                                  text: 'POWER ',
                                                  style: AppFontStyles
                                                      .secondaryTextBold20),
                                              TextSpan(
                                                  text: 'es ',
                                                  style: AppFontStyles
                                                      .primaryTextRegular20),
                                              TextSpan(
                                                  text: pairParticipant.name
                                                      .toUpperCase(),
                                                  style: AppFontStyles
                                                      .secondaryTextBold20),
                                            ])),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                                child: SizedBox(
                                                    height: 140.h,
                                                    width: double.infinity,
                                                    child: Card(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.r),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(16),
                                                          child: Center(
                                                            child: Text(
                                                                'Claudia tiene ${pairParticipant.age} años',
                                                                style: AppFontStyles
                                                                    .primaryTextRegular14),
                                                          ),
                                                        )))),
                                            SizedBox(
                                              width: 20.w,
                                            ),
                                            Expanded(
                                                child: SizedBox(
                                                    height: 140.h,
                                                    width: double.infinity,
                                                    child: Card(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.r),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(16),
                                                          child: Center(
                                                            child: Text(
                                                                'Claudia vive en ${getRandomElement(districts)}',
                                                                style: AppFontStyles
                                                                    .primaryTextRegular14),
                                                          ),
                                                        )))),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                : const SizedBox(),
                            SizedBox(
                              height: 20.h,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: AppFlatButton(
                                text: 'Regresar',
                                backgroundColor: AppColors.secondaryColor,
                                textColor: AppColors.primaryTextColor,
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
