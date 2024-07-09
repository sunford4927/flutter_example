import 'package:flutter/material.dart';
import 'package:flutter_sample_app/screens/detail_screen.dart';
import 'package:flutter_sample_app/screens/upload_screen.dart';

import '../model/cat.dart';

final List<Cat> cats = [
  Cat(
    created: DateTime(2022, 11, 13, 22, 14, 53, 982),
    id: "0",
    name: "구름이",
    link: "assets/images/KakaoTalk_20240621_102604751_01.jpg",
    title: "겸둥이",
    likeCount: 2123,
    replyCount: 4,
  ),
  Cat(
    created: DateTime(2022, 11, 13, 22, 14, 53, 982),
    id: "0",
    name: "별님이",
    link: "assets/images/KakaoTalk_20240621_102604751_02.jpg",
    title: "겸둥이",
    likeCount: 2123,
    replyCount: 4,
  ),
  Cat(
    created: DateTime(2022, 11, 13, 22, 14, 53, 982),
    id: "0",
    name: "별님이",
    link: "assets/images/KakaoTalk_20240621_102604751_03.jpg",
    title: "겸둥이",
    likeCount: 2123,
    replyCount: 4,
  ),
  Cat(
    created: DateTime(2022, 11, 13, 22, 14, 53, 982),
    id: "0",
    name: "별님이",
    link: "assets/images/KakaoTalk_20240621_102604751_05.jpg",
    title: "겸둥이",
    likeCount: 2123,
    replyCount: 4,
  ),
  Cat(
    created: DateTime(2022, 11, 13, 22, 14, 53, 982),
    id: "0",
    name: "별님이",
    link: "assets/images/KakaoTalk_20240621_102604751_06.jpg",
    title: "겸둥이",
    likeCount: 2123,
    replyCount: 4,
  )
];

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily Cats"), // 어플 타이틀
        actions: [
          IconButton(
            icon: const Icon(Icons.camera_alt),
            onPressed: () {
              showDialog(
                  context: context, builder: (_) => const UploadScreen());
            },
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.only(
          top: 10.0,
          left: 10.0,
          right: 10.0,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 1.0,
        ),
        itemCount: cats.length,
        itemBuilder: (_, int index) => GestureDetector(
            onTap: () {
              // 이미지를 클릭 했을때 상세 페이지로 화면이 바뀜
              // 이벤트 호출 시에 리스트 화면 위로 상세화면을 쌓아 올림
              // 실제 사용자에게는 상세 화면 만 보이게 됩니다
              // 뒤로 돌아갈때는 상세화면이사라지고 리스트 화면이 제일 위에 오게 됩니다
              // stack의 원리
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    cat: cats[index],
                  ),
                ),
              );
            },
            child: Image.asset(
              cats[index].link,
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
