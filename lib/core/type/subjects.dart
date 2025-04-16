import 'package:flutter/material.dart';
import 'package:web_programming/view/subjects/english_tab_screen.dart';
import 'package:web_programming/view/subjects/korean_history_tab_screen.dart';
import 'package:web_programming/view/subjects/korean_tab_screen.dart';
import 'package:web_programming/view/subjects/math_tab_screen.dart';
import 'package:web_programming/view/subjects/science_tab_screen.dart';
import 'package:web_programming/view/subjects/society_tab_screen.dart';


enum SubjectType {
  korean(page: KoreanTabScreen(), text: '국어'),
  english(page: EnglishTabScreen(), text: '영어'),
  math(page: MathTabScreen(), text: '수학'),
  society(page: SocietyTabScreen(), text: '사회'),
  science(page: ScienceTabScreen(), text: '과학'),
  koreanHistory(page: KoreanHistoryTabScreen(), text: '한국사');

  const SubjectType({required this.page, required this.text});

  final Widget page;
  final String text;
}
