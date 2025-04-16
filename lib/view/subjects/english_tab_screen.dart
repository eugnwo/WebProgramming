import 'package:flutter/material.dart';

class EnglishTabScreen extends StatelessWidget {
  const EnglishTabScreen({super.key});

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
                '영어 정리',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 32),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/image/img_eng.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 40),
                    Expanded(
                      flex: 2,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            GrammarSection(
                              title: '1. to 부정사',
                              description:
                                  'to + 동사원형 형태로, "…하기 위해", "…하는 것"이라는 의미를 가짐.',
                              examples: [
                                'I want to eat pizza.',
                                'She hopes to win the contest.',
                              ],
                            ),
                            SizedBox(height: 24),
                            GrammarSection(
                              title: '2. 동명사 (Gerund)',
                              description:
                                  '동사에 -ing를 붙여 명사처럼 쓰는 형태. 주어, 목적어, 보어 가능.',
                              examples: [
                                'Swimming is fun.',
                                'I enjoy reading books.',
                              ],
                            ),
                            SizedBox(height: 24),
                            GrammarSection(
                              title: '3. 현재완료 (have/has + p.p)',
                              description: '과거부터 현재까지의 경험, 결과, 완료, 계속 등을 나타냄.',
                              examples: [
                                'I have lived here for 5 years.',
                                'She has already finished her homework.',
                              ],
                            ),
                            SizedBox(height: 24),
                            GrammarSection(
                              title: '4. 수동태 (be + p.p)',
                              description: '행위의 주체보다 행위의 대상이 중요할 때 사용.',
                              examples: [
                                'The cake was eaten by Tom.',
                                'English is spoken worldwide.',
                              ],
                            ),
                            // 기존 GrammarSection 위젯에 이어서 더 추가할 수 있음
                            SizedBox(height: 24),
                            GrammarSection(
                              title: '5. 조동사 (Modal Verbs)',
                              description:
                                  'can, will, must, should 등 본동사 앞에 와서 가능성, 의무, 추측 등을 나타냄.',
                              examples: [
                                'I can swim.',
                                'You must wear a seatbelt.',
                              ],
                            ),
                            SizedBox(height: 24),

                            GrammarSection(
                              title: '6. 비교급 & 최상급',
                              description:
                                  '형용사/부사의 비교 형태. 비교급: ~er/more ~, 최상급: the ~est/the most ~',
                              examples: [
                                'He is taller than me.',
                                'She is the most popular student.',
                              ],
                            ),
                            SizedBox(height: 24),

                            GrammarSection(
                              title: '7. 관계대명사 (who, which, that)',
                              description: '두 문장을 연결하여 앞에 나온 명사를 꾸며주는 역할을 함.',
                              examples: [
                                'The boy who is running is my brother.',
                                'This is the book that I bought.',
                              ],
                            ),
                            SizedBox(height: 24),

                            GrammarSection(
                              title: '8. 가정법 (If + 주어 + 과거동사)',
                              description:
                                  '현실과 다른 상황을 가정할 때 사용. 가정법 과거/과거완료 등 형태 있음.',
                              examples: [
                                'If I were you, I would take the job.',
                                'If she had studied, she would have passed.',
                              ],
                            ),
                            SizedBox(height: 24),

                            GrammarSection(
                              title: '9. 간접화법 (Reported Speech)',
                              description: '누군가의 말을 간접적으로 전달할 때 시제와 인칭이 바뀜.',
                              examples: [
                                'He said (that) he was tired.',
                                'She asked if I liked music.',
                              ],
                            ),
                            SizedBox(height: 24),

                            GrammarSection(
                              title: '10. 시제 일치 (Sequence of Tenses)',
                              description: '주절이 과거이면 종속절의 시제도 과거로 맞추는 법칙.',
                              examples: [
                                'He said he liked pizza.',
                                'They thought she was coming.',
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
