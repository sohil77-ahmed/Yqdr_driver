part of 'new_account_widgets_imports.dart';

class TermsOfUseRow extends StatelessWidget {
  final NewAccountController controller;
  final TermsModel? terms;
  const TermsOfUseRow({super.key, required this.controller, this.terms});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
        observable: controller.checkTermsOfUse,
        builder: (context, value) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TermsCheckBox(value: value, controller: controller),
              Expanded(
                child: ActionTextRow(
                  text1: 'بمجرد متابعتك وانشاء حسابك لدينا فإنك توافق على',
                  text2: 'شروط الاستخدام',
                  underline: true,
                  bundle: true,
                  onTap: () => context.push(TermsScreen.path, extra: terms),
                ),
              )
            ],
          );
        });
  }
}
