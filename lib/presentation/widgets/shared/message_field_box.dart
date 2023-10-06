import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;

  const MessageFieldBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    final textCtrl = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    final inputDecoration = InputDecoration(
        hintText: 'End your message with "?"',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        suffixIcon: IconButton(
            onPressed: () {
              final textValue = textCtrl.value.text;
              textCtrl.clear();
              onValue(textValue);
            },
            icon: const Icon(Icons.send_outlined)));

    return TextFormField(
      onTapOutside: (e) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textCtrl,
      decoration: inputDecoration,
      onFieldSubmitted: (v) {
        textCtrl.clear();
        focusNode.requestFocus();
        onValue(v);
      },
    );
  }
}
