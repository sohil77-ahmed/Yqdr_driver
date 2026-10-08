part of 'terms_imports.dart';

class TermsScreen extends StatefulWidget {
  static String path = '/terms';
  static String name = 'terms';

  final TermsModel? terms;
  const TermsScreen({super.key, this.terms});

  @override
  State<TermsScreen> createState() => _TermsScreenState();
}

class _TermsScreenState extends State<TermsScreen> {
  final TermsController controller = TermsController();

  @override
  void initState() {
    controller.getTermsData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: widget.terms?.title ?? ''),
      body: ListView(
        padding: EdgeInsets.all(16.w),
        children: [
          BuildTermsLogo(),
          BuildTermsBody(
            terms: widget.terms?.description ?? '',
          ),
        ],
      ),
    );
  }
}
