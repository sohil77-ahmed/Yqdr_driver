part of 'widgets_imports.dart';

class BuildTermsLogo extends StatelessWidget {
  final String? imagePath;
  const BuildTermsLogo({super.key, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return imagePath == null
        ? Image.asset(
            Res.terms,
            width: 200.w,
            height: 200.h,
            fit: BoxFit.contain,
          )
        : CachedImage(url: imagePath ?? '');
  }
}
