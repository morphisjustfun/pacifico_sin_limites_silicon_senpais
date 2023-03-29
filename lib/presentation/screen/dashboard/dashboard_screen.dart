import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacifico_sin_limites_silicon_senpais/core/navigation/route.dart';
import 'package:pacifico_sin_limites_silicon_senpais/data/preference/model/user_preference_model.dart';
import 'package:pacifico_sin_limites_silicon_senpais/data/preference/source/user_preference_source.dart';
import 'package:pacifico_sin_limites_silicon_senpais/injectable.dart';
import 'package:pacifico_sin_limites_silicon_senpais/resources/colors.dart';
import 'package:pacifico_sin_limites_silicon_senpais/resources/constants.dart';
import 'package:pacifico_sin_limites_silicon_senpais/resources/font_styles.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<UserPreferenceModel?>(
          future: getIt<UserPreferencesSource>().getUser(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
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
                            RichText(
                                text: TextSpan(
                                    text: 'Hola ',
                                    style: AppFontStyles.primaryTextBold32,
                                    children: [
                                  TextSpan(
                                      text: snapshot.data!.name.toUpperCase(),
                                      style: AppFontStyles.primaryTextBold32
                                          .copyWith(
                                              color: AppColors.secondaryColor))
                                ])),
                            SizedBox(
                              height: 30.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Talleres',
                                    style: AppFontStyles.primaryTextBold20),
                                Text('Ver todos',
                                    style: AppFontStyles.primaryTextBold20
                                        .copyWith(
                                            color: AppColors.secondaryColor,
                                            fontSize: 14.sp))
                              ],
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            ...Constants.workshops.map((e) => Padding(
                                  padding: EdgeInsets.symmetric(vertical: 16.h),
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16.r),
                                    ),
                                    child: ListTile(
                                      onTap: () {
                                        Navigator.pushNamed(
                                          context,
                                          getIt<Routes>().workshop.replaceAll(
                                              ':workshopName', e.name),
                                        );
                                      },
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 20.w, vertical: 10.h),
                                      title: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 20),
                                        child: Text(
                                          e.name,
                                          style:
                                              AppFontStyles.primaryTextBold16,
                                        ),
                                      ),
                                      subtitle: Text(e.description,
                                          style: AppFontStyles
                                              .secondaryTextRegular12),
                                      trailing: Text(
                                          '${e.participantsList.length} / ${e.participants}',
                                          style: AppFontStyles
                                              .primaryTextSemiBold15
                                              .copyWith(
                                            color: e.participantsList.length ==
                                                    e.participants
                                                ? AppColors.primaryColor
                                                : AppColors.secondaryColor,
                                          )),
                                    ),
                                  ),
                                )),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text('Salud Financiera',
                                style: AppFontStyles.primaryTextBold20),
                            SizedBox(
                              height: 20.h,
                            ),
                            Center(
                              child: Card(
                                child: ListTile(
                                  title: Text('Taller 1'),
                                  subtitle: Text('Lunes 10:00'),
                                  trailing: Text('Inscribirse'),
                                ),
                              ),
                            ),
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
