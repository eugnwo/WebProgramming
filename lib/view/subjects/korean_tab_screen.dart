import 'package:flutter/material.dart';

class KoreanTabScreen extends StatelessWidget {
  const KoreanTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '국어 정리',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 32),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 🖼️ 좌측 이미지
                    Expanded(
                      flex: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/image/img_korean.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 40),
                    // 📚 우측 문법 정리
                    Expanded(
                      flex: 2,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            GrammarSection(
                              title: '1. 주어와 서술어',
                              description:
                              '주어는 문장에서 주된 대상을, 서술어는 그 주어에 대한 설명이나 동작을 나타냄.',
                              examples: [
                                '학생이 공부한다.',
                                '고양이가 뛰어간다.',
                              ],
                            ),
                            SizedBox(height: 24),
                            GrammarSection(
                              title: '2. 명사와 동사',
                              description:
                              '명사는 사람, 장소, 사물, 개념 등을 나타내며, 동사는 동작이나 상태를 나타냄.',
                              examples: [
                                '책을 읽다.',
                                '친구와 놀다.',
                              ],
                            ),
                            SizedBox(height: 24),
                            GrammarSection(
                              title: '3. 형용사와 부사',
                              description:
                              '형용사는 명사를 수식하며, 부사는 동사나 형용사, 다른 부사를 수식함.',
                              examples: [
                                '기쁜 마음.',
                                '빨리 걷다.',
                              ],
                            ),
                            SizedBox(height: 24),
                            GrammarSection(
                              title: '4. 접속사와 조사',
                              description:
                              '접속사는 두 문장을 연결하고, 조사는 명사와 관련된 의미를 부여함.',
                              examples: [
                                '그리고, 그러나, 또는.',
                                '이, 가, 을, 를.',
                              ],
                            ),
                            SizedBox(height: 24),
                            GrammarSection(
                              title: '5. 피동문과 사동문',
                              description:
                              '피동문은 주어가 동작을 받는 문장, 사동문은 주어가 동작을 시키는 문장.',
                              examples: [
                                '문이 열리다.',
                                '그를 도와주다.',
                              ],
                            ),
                            SizedBox(height: 24),
                            GrammarSection(
                              title: '6. 존댓말과 반말',
                              description:
                              '존댓말은 공손한 형태로, 반말은 친근하거나 비격식적인 표현.',
                              examples: [
                                '선생님, 감사합니다.',
                                '너 뭐 해?',
                              ],
                            ),
                            SizedBox(height: 24),
                            GrammarSection(
                              title: '7. 시제 표현',
                              description:
                              '한국어에서 시제는 주로 동사에 붙은 어미로 나타냄. 과거, 현재, 미래의 시제를 구분.',
                              examples: [
                                '어제 갔다.',
                                '오늘 먹는다.',
                                '내일 갈 것이다.',
                              ],
                            ),
                            SizedBox(height: 24),
                            GrammarSection(
                              title: '8. 의문문과 명령문',
                              description:
                              '의문문은 질문을 나타내고, 명령문은 지시나 요구를 나타냄.',
                              examples: [
                                '이것을 할 수 있습니까?',
                                '문을 열어라.',
                              ],
                            ),
                            SizedBox(height: 24),
                            GrammarSection(
                              title: '9. 강조 표현',
                              description:
                              '특정한 단어나 구를 강조하기 위한 표현.',
                              examples: [
                                '정말 멋지다.',
                                '이것은 정말 중요하다.',
                              ],
                            ),
                            SizedBox(height: 24),
                            GrammarSection(
                              title: '10. 연결어미',
                              description:
                              '문장과 문장을 연결할 때 사용되는 어미.',
                              examples: [
                                '가서 일해라.',
                                '피곤하지만 할 수 있다.',
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 🔤 문법 섹션 위젯
class GrammarSection extends StatelessWidget {
  final String title;
  final String description;
  final List<String> examples;

  const GrammarSection({
    super.key,
    required this.title,
    required this.description,
    required this.examples,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(description, style: const TextStyle(fontSize: 16)),
        const SizedBox(height: 8),
        ...examples.map((e) => Text('• $e')),
      ],
    );
  }
}
