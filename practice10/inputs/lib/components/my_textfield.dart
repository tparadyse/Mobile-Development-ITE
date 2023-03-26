import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final bool obscureText;
  final Widget? icon;
  final int? maxLenght;
  final bool autocorrect;
  final Iterable<String>? autofillHints;
  final Color? cursorColor;
  final double? cursorHeight;
  final double cursorWidth;
  final Radius? cursorRadius;
  final bool autofocus;
  final Widget? Function(BuildContext,
      {required int currentLength,
      required bool isFocused,
      required int? maxLength})? buildCounter;
  final Clip clipBehavior;
  final Widget Function(BuildContext, EditableTextState)? contextMenuBuilder;
  final DragStartBehavior dragStartBehavior;
  final bool enableIMEPersonalizedLearning;
  final bool enableInteractiveSelection;
  final bool enableSuggestions;
  final bool enabled;
  final bool expands;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final Brightness keyboardAppareance;
  final TextMagnifierConfiguration? magnifierConfiguration;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final int maxLines;
  final int? minLines;
  final MouseCursor? mouseCursor;
  final String obscuringCharacter;
  final void Function(String, Map<String, dynamic>)? onAppPrivateCommand;
  final void Function(String)? onChanged;
  final void Function()? onEditingComplete;
  final void Function(String)? onSubmitted;
  final void Function()? onTap;
  final void Function(PointerDownEvent)? onTapOutside;
  final bool readOnly;
  final String restorationId;
  final bool scribbleEnabled;
  final ScrollController? scrollController;
  final EdgeInsets scrollPadding;
  final ScrollPhysics? scrollPhysics;
  final TextSelectionControls? selectionControls;
  final BoxHeightStyle selectionHeightStyle;
  final BoxWidthStyle selectionWidthStyle;
  final bool showCursor;
  final SmartDashesType? smartDashesType;
  final SmartQuotesType? smartQuotesType;
  final SpellCheckConfiguration? spellCheckConfiguration;
  final StrutStyle? strutStyle;
  final TextStyle? style;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;
  final TextCapitalization textCapitalization;
  final TextDirection? textDirection;
  final TextInputAction? textInputAction;

  //Components of InputDecorration
  final Color? fillColor;
  final BorderSide borderSide;

  const MyTextField({
    super.key,
    this.controller,
    this.hintText = "",
    this.obscureText = false,
    this.icon,
    this.maxLenght,
    this.autocorrect = false,
    this.autofillHints,
    this.cursorColor,
    this.cursorHeight,
    this.cursorWidth = 0,
    this.cursorRadius,
    this.autofocus = false,
    this.buildCounter,
    this.clipBehavior = Clip.none,
    this.contextMenuBuilder,
    this.dragStartBehavior = DragStartBehavior.start,
    this.enableIMEPersonalizedLearning = false,
    this.enableInteractiveSelection = true,
    this.enableSuggestions = true,
    this.enabled = true,
    this.expands = false,
    this.focusNode,
    this.inputFormatters,
    this.keyboardAppareance = Brightness.light,
    this.magnifierConfiguration,
    this.maxLengthEnforcement,
    this.maxLines = 1,
    this.minLines,
    this.mouseCursor,
    this.obscuringCharacter = '•',
    this.onAppPrivateCommand,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.onTap,
    this.onTapOutside,
    this.readOnly = false,
    this.restorationId = '',
    this.scribbleEnabled = false,
    this.scrollController,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.scrollPhysics,
    this.selectionControls,
    this.selectionHeightStyle = BoxHeightStyle.tight,
    this.selectionWidthStyle = BoxWidthStyle.tight,
    this.showCursor = false,
    this.smartDashesType,
    this.smartQuotesType,
    this.spellCheckConfiguration,
    this.strutStyle,
    this.style,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.textCapitalization = TextCapitalization.none,
    this.textDirection,
    this.textInputAction = TextInputAction.done,
    //InputDecoration components
    this.fillColor,
    this.borderSide = const BorderSide(),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        autocorrect: autocorrect,
        autofocus: autofocus,
        autofillHints: autofillHints,
        buildCounter: buildCounter,
        clipBehavior: clipBehavior,
        contextMenuBuilder: contextMenuBuilder,
        cursorColor: cursorColor,
        cursorHeight: cursorHeight,
        cursorWidth: cursorWidth,
        cursorRadius: cursorRadius,
        controller: controller,
        dragStartBehavior: dragStartBehavior,
        enableIMEPersonalizedLearning: enableIMEPersonalizedLearning,
        enableInteractiveSelection: enableInteractiveSelection,
        enableSuggestions: enableSuggestions,
        enabled: enabled,
        expands: expands,
        focusNode: focusNode,
        inputFormatters: inputFormatters,
        key: key,
        keyboardAppearance: keyboardAppareance,
        magnifierConfiguration: magnifierConfiguration,
        maxLengthEnforcement: maxLengthEnforcement,
        maxLength: maxLenght,
        maxLines: maxLines,
        minLines: minLines,
        mouseCursor: mouseCursor,
        obscuringCharacter: obscuringCharacter,
        onAppPrivateCommand: onAppPrivateCommand,
        onChanged: onChanged,
        onEditingComplete: onEditingComplete,
        onSubmitted: onSubmitted,
        onTap: onTap,
        onTapOutside: onTapOutside,
        readOnly: readOnly,
        restorationId: restorationId,
        scribbleEnabled: scribbleEnabled,
        scrollController: scrollController,
        scrollPadding: scrollPadding,
        scrollPhysics: scrollPhysics,
        selectionControls: selectionControls,
        selectionHeightStyle: selectionHeightStyle,
        selectionWidthStyle: selectionWidthStyle,
        showCursor: showCursor,
        smartDashesType: smartDashesType,
        smartQuotesType: smartQuotesType,
        spellCheckConfiguration: spellCheckConfiguration,
        strutStyle: strutStyle,
        style: style,
        textAlign: textAlign,
        textAlignVertical: textAlignVertical,
        textCapitalization: textCapitalization,
        textDirection: textDirection,
        textInputAction: textInputAction,
        keyboardType: TextInputType.text,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: borderSide,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: borderSide,
          ),
          fillColor: fillColor,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[500]),
          suffixIcon: icon,
        ),
      ),
    );
  }
}
