import 'package:flutter/material.dart';

class ScienceTabScreen extends StatelessWidget {
  const ScienceTabScreen({super.key});

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
                '과학 정리',
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
                          'assets/image/img_science.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 40),
                    // 📚 우측 과학 정리
                    Expanded(
                      flex: 2,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            ScienceSection(
                              title: '1. 물질의 상태 변화',
                              description: '물질은 고체, 액체, 기체 상태로 존재하며 온도와 압력에 따라 변화.',
                              examples: [
                                '얼음이 녹으면 물이 된다.',
                                '물이 끓으면 기체가 된다.',
                              ],
                            ),
                            SizedBox(height: 24),
                            ScienceSection(
                              title: '2. 뉴턴의 운동 법칙',
                              description: '물체의 운동은 외부 힘에 의해 변화하며, 이를 설명하는 법칙들.',
                              examples: [
                                '힘이 작용하면 물체가 가속된다.',
                                '작용과 반작용의 법칙.',
                              ],
                            ),
                            SizedBox(height: 24),
                            ScienceSection(
                              title: '3. 화학 반응',
                              description: '물질의 변환을 일으키는 과정으로, 반응물과 생성물이 존재.',
                              examples: [
                                '연료와 산소가 반응하면 에너지가 발생한다.',
                                '산화반응 예시: 철이 녹슬다.',
                              ],
                            ),
                            // You can add more science topics...
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

// 🔬 과학 섹션 위젯
class ScienceSection extends StatelessWidget {
  final String title;
  final String description;
  final List<String> examples;

  const ScienceSection({
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
