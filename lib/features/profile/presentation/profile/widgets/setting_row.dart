part of 'profile_widgets_imports.dart';

class SettingRow extends StatelessWidget {
  final String assetName;
  final String? asset2Name;
  final String settingName;
  final bool isContact;
  final VoidCallback onTap;
  final bool isNotification;
  final ValueChanged<bool>? onSwitchChanged;
  final bool switchValue;

  const SettingRow({
    super.key,
    required this.assetName,
    required this.settingName,
    required this.onTap,
    required this.isContact,
    this.isNotification = false,
    this.switchValue = false,
    this.onSwitchChanged,
    this.asset2Name,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: isContact
          ? Column(
        children: [
          Container(
            padding:
            EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: context.colors.greyWhite),
            ),
            child: SvgPicture.asset(
              assetName,
              colorFilter:
              ColorFilter.mode(context.colors.black, BlendMode.srcIn),
            ),
          ),
          Gaps.vGap(8),
          Text(
            settingName,
            style: AppTextStyle.s14_w400(color: context.colors.black)
                .copyWith(fontSize: 15.sp),
          ),
        ],
      )
          : Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: assetName.isEmpty ? 0 : 10.w, vertical: assetName.isEmpty ? 0 : 10.h),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: context.colors.greyWhite),
                ),
                child: assetName.isEmpty
                    ? CachedImage(
                  url: asset2Name ?? '',
                  width: 30.w,
                  height: 30.h,
                  boxShape: BoxShape.circle,
                  haveRadius: false,
                  alignment: Alignment.center,
                  fit: BoxFit.contain,
                )
                    : SvgPicture.asset(
                  assetName,
                  colorFilter: ColorFilter.mode(
                      context.colors.black, BlendMode.srcIn),
                ),
              ),
              Gaps.hGap(8),
              Text(
                settingName,
                style: AppTextStyle.s14_w400(color: context.colors.black)
                    .copyWith(fontSize: 15.sp),
              ),
            ],
          ),
          if (isNotification) ...[
            GreenSwitch(
              value: switchValue,
              onChanged: onSwitchChanged ?? (_) {},
            ),
          ] else ...[
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: context.colors.black,
              size: 14.r,
            ),
          ],
        ],
      ),
    );
  }
}
