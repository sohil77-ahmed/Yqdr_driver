part of 'widgets_imports.dart';

class BuildTermsBody extends StatelessWidget {
  const BuildTermsBody({super.key, required this.terms});
  final String terms;

  @override
  Widget build(BuildContext context) {
    return Html(
      data: terms,
      style: {
        "body": Style(
          fontSize: FontSize(14.sp),
          fontWeight: FontWeight.w400,
          color: context.colors.black,
          margin: Margins.zero,
          padding: HtmlPaddings.zero,
        ),
      },
    );
  }
}
