import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:web_programming/core/type/subjects.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(
    length: SubjectType.values.length,
    vsync: this,
    initialIndex: 0,
  );

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: CustomScrollView(
        slivers: [
          _AppBar(tabController),
          SliverFillRemaining(
            child: TabBarView(
              controller: tabController,
              physics: NeverScrollableScrollPhysics(),
              children: SubjectType.values.map((e) => e.page).toList(),
            ),
          ),
          const SliverToBoxAdapter(child: _Footer()),
        ],
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar(this.controller);

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: const Color(0xFFFFFFFF),
      toolbarHeight: 128.h,
      titleSpacing: 0,
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: 64).r,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '설레는 지우의 학습 정리',
              style: TextStyle(
                color: const Color(0xFF000000),
                fontSize: 52.sp,
                fontFamily: 'paperlogy',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
      bottom: TabBar(
        indicatorColor: Colors.black,
        indicatorSize: TabBarIndicatorSize.tab,
        controller: controller,
        labelColor: Colors.black,
        unselectedLabelColor: const Color(0xFFA0A0A0),
        overlayColor: WidgetStateProperty.resolveWith<Color?>((
          Set<WidgetState> states,
        ) {
          return Colors.transparent;
        }),
        tabs: SubjectType.values.map((e) => _HoverTab(text: e.text)).toList(),
      ),
    );
  }
}

class _HoverTab extends StatefulWidget {
  final String text;

  const _HoverTab({required this.text});

  @override
  State<_HoverTab> createState() => _HoverTabState();
}

class _HoverTabState extends State<_HoverTab> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child:
          _isHovering
              ? GradientText(
                widget.text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.sp,
                  fontFamily: 'paperlogy',
                  fontWeight: FontWeight.w400,
                ),
                colors: [Color(0xFFFF0000), Color(0xFFFFFF00)],
              )
              : Text(
                widget.text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFA0A0A0),
                  fontSize: 40.sp,
                  fontFamily: 'paperlogy',
                  fontWeight: FontWeight.w400,
                ),
              ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 32).r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '유지우지유',
            style: TextStyle(
              color: const Color(0xFF000000),
              fontSize: 52.sp,
              fontFamily: 'paperlogy',
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'instagram.',
            style: TextStyle(
              color: const Color(0xFF000000),
              fontSize: 52.sp,
              fontFamily: 'paperlogy',
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
