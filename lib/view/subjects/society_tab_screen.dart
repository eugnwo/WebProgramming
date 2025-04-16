import 'package:flutter/material.dart';

class SocietyTabScreen extends StatelessWidget {
  const SocietyTabScreen({super.key});

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
                '사회 정리',
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
                          'assets/image/img_society.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 40),
                    // 📚 우측 사회 정리
                    Expanded(
                      flex: 2,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SocialStudiesSection(
                              title: '1. 민주주의',
                              description: '민주주의는 시민이 직접 또는 간접적으로 정치에 참여하는 제도.',
                              examples: [
                                '국민이 선거를 통해 대표자를 선택한다.',
                                '시민의 권리와 자유를 보장한다.',
                              ],
                            ),
                            SizedBox(height: 24),
                            SocialStudiesSection(
                              title: '2. 경제 시스템',
                              description: '경제는 자원의 생산, 분배, 소비를 다루는 분야.',
                              examples: [
                                '자본주의 경제에서는 시장의 경쟁을 강조한다.',
                                '사회주의 경제는 국가의 개입을 강조한다.',
                              ],
                            ),
                            SizedBox(height: 24),
                            SocialStudiesSection(
                              title: '3. 사회 계층',
                              description: '사회 내에서 사람들은 직업, 교육 수준 등을 기준으로 계층을 형성.',
                              examples: [
                                '상류층, 중산층, 노동층으로 나눠진다.',
                                '사회 이동성에 따라 계층이 바뀔 수 있다.',
                              ],
                            ),
                            // You can add more social studies topics...
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

// 🧑‍🏫 사회 섹션 위젯
class SocialStudiesSection extends StatelessWidget {
  final String title;
  final String description;
  final List<String> examples;

  const SocialStudiesSection({
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
