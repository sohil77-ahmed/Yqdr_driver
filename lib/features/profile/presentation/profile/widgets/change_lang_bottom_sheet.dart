part of 'profile_widgets_imports.dart';

void showLanguagePickerSheet(BuildContext context, ProfileController controller) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (ctx) {
      const String ar = "ar";
      const String en = "en";
      String selected = ar;

      return StatefulBuilder(
        builder: (ctx, setState) {
          return Material(
            color: ctx.colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(24.r),
            ),
            clipBehavior: Clip.antiAlias,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 12.h,
              ),
              child: ObsValueConsumer(
                observable: controller.selectedLang,
                builder: (context, lang) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 40.w,
                        height: 4.h,
                        decoration: BoxDecoration(
                          color: ctx.colors.disableGray.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(2.r),
                        ),
                      ),
                      Gaps.vGap12,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "برجاء اختيار اللغة",
                            style: AppTextStyle.s16_w500(
                              color: ctx.colors.black,
                            ).copyWith(fontSize: 16.sp),
                          ),
                        ],
                      ),
                      Gaps.vGap16,
                      _LanguageCard(
                        title: "العربية",
                        flagAsset: Res.flag_ar,
                        isSelected: lang == ar,
                        onTap: () => controller.switchLang('ar'),
                      ),
                      Gaps.vGap12,
                      _LanguageCard(
                        title: "English",
                        flagAsset: Res.flag_en,
                        isSelected: lang == en,
                        onTap: () => controller.switchLang('en'),
                      ),
                      Gaps.vGap24,
                      SizedBox(
                        width: double.infinity,
                        height: 48.h,
                        child: LoadingButton(
                          title: 'الاستمرار',
                          onTap: () {
                            ctx.pop(selected);
                          },
                          color: ctx.colors.black,
                          textColor: ctx.colors.white,
                          btnKey: GlobalKey(),
                          borderRadius: 5.r,
                          margin: EdgeInsets.zero,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          height: 48.h,
                        ),
                      ),
                      Gaps.vGap12,
                    ],
                  );
                }
              ),
            ),
          );
        },
      );
    },
  );
}

class _LanguageCard extends StatelessWidget {
  final String title;
  final String flagAsset;
  final bool isSelected;
  final VoidCallback onTap;

  const _LanguageCard({
    required this.title,
    required this.flagAsset,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12.r),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        decoration: BoxDecoration(
          color: isSelected
              ? context.colors.brown.withOpacity(0.08)
              : context.colors.greyWhite,
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(
            color: isSelected
                ? context.colors.brown
                : context.colors.disableGray.withOpacity(0.3),
            width: isSelected ? 1.5 : 1,
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              flagAsset,
              width: 28.w,
              height: 20.h,
              fit: BoxFit.cover,
            ),
            Gaps.hGap12,
            Expanded(
              child: Text(
                title,
                style: AppTextStyle.s14_w500(
                  color: context.colors.black,
                ).copyWith(fontSize: 14.sp, fontWeight: FontWeight.w700),
              ),
            ),
            if (isSelected)
              Icon(
                Icons.check_circle_rounded,
                color: context.colors.brown,
                size: 20.sp,
              )
          ],
        ),
      ),
    );
  }
}
