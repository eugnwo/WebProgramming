import 'package:flutter/material.dart';

class KoreanHistoryTabScreen extends StatelessWidget {
  const KoreanHistoryTabScreen({super.key});

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
                '한국사 정리',
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
                          'assets/image/img_korean_history.jpg',
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
                            KoreanHistorySection(
                              title: '1. 삼국 시대',
                              description: '고대 한국을 대표하는 삼국(고구려, 백제, 신라)의 역사.',
                              examples: [
                                '고구려는 북방에서 강력한 국가를 형성.',
                                '신라는 삼국을 통일했다.',
                              ],
                            ),
                            SizedBox(height: 24),
                            KoreanHistorySection(
                              title: '2. 고려 시대',
                              description: '고려는 불교와 유교를 주요 사상으로 발전.',
                              examples: [
                                '고려는 몽골의 침략을 받았다.',
                                '고려의 왕은 "왕"이 아닌 "제위"로 불렸다.',
                              ],
                            ),
                            SizedBox(height: 24),
                            KoreanHistorySection(
                              title: '3. 조선 시대',
                              description: '조선은 유교를 국가 사상으로 채택하고, 왕권을 중심으로 발전.',
                              examples: [
                                '조선은 한양을 수도로 삼았다.',
                                '세종대왕은 한글을 창제했다.',
                              ],
                            ),
                            // You can add more Korean history topics...
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

class KoreanHistorySection extends StatelessWidget {
  final String title;
  final String description;
  final List<String> examples;

  const KoreanHistorySection({
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
