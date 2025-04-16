import 'package:flutter/material.dart';

class MathTabScreen extends StatelessWidget {
  const MathTabScreen({super.key});

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
                '수학 정리',
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
                          'assets/image/img_math.jpg',
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
                            MathSection(
                              title: '1. 함수의 개념',
                              description:
                              '함수는 하나의 입력값에 대해 하나의 출력값을 가지는 대응 관계.',
                              examples: [
                                'f(x) = x + 2',
                                'y = x²는 x에 대한 이차함수이다.',
                              ],
                            ),
                            SizedBox(height: 24),
                            MathSection(
                              title: '2. 방정식과 부등식',
                              description:
                              '미지수를 포함하는 수식을 풀어 해를 구하거나 범위를 정하는 수학식.',
                              examples: [
                                '2x + 3 = 7 → x = 2',
                                'x² - 4 < 0 → -2 < x < 2',
                              ],
                            ),
                            SizedBox(height: 24),
                            MathSection(
                              title: '3. 도형과 공간',
                              description:
                              '도형의 성질, 위치관계, 면적, 부피 등을 다루는 기하학 분야.',
                              examples: [
                                '삼각형의 내각의 합은 180도.',
                                '구의 부피 = 4/3πr³',
                              ],
                            ),
                            SizedBox(height: 24),
                            MathSection(
                              title: '4. 수열',
                              description:
                              '일정한 규칙에 따라 나열된 수의 집합.',
                              examples: [
                                '등차수열: aₙ = a₁ + (n-1)d',
                                '등비수열: aₙ = a₁ × rⁿ⁻¹',
                              ],
                            ),
                            SizedBox(height: 24),
                            MathSection(
                              title: '5. 미분과 적분',
                              description:
                              '함수의 변화율을 나타내는 미분과, 넓이 및 누적량을 구하는 적분.',
                              examples: [
                                'f\'(x) = 2x (f(x) = x²일 때)',
                                '∫ x dx = (1/2)x² + C',
                              ],
                            ),
                            SizedBox(height: 24),
                            MathSection(
                              title: '6. 확률과 통계',
                              description:
                              '데이터를 분석하고 불확실한 사건의 가능성을 수치로 표현.',
                              examples: [
                                '주사위를 던졌을 때 3이 나올 확률: 1/6',
                                '산점도와 평균, 중앙값 등을 통해 데이터 분석',
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

class MathSection extends StatelessWidget {
  final String title;
  final String description;
  final List<String> examples;

  const MathSection({
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
