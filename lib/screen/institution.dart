import 'package:bridze/list/gangdong_1.dart';
import 'package:bridze/list/gangdong_2.dart';
import 'package:bridze/list/gangwon/cheorwon_1.dart';
import 'package:bridze/list/gangwon/cheorwon_2.dart';
import 'package:bridze/list/gangwon/chuncheon_1.dart';
import 'package:bridze/list/gangwon/chuncheon_2.dart';
import 'package:bridze/list/gangwon/donghae_1.dart';
import 'package:bridze/list/gangwon/gangneung_1.dart';
import 'package:bridze/list/gangwon/gangneung_2.dart';
import 'package:bridze/list/gangwon/hoengseong_2.dart';
import 'package:bridze/list/gangwon/hongcheon_1.dart';
import 'package:bridze/list/gangwon/inje_2.dart';
import 'package:bridze/list/gangwon/samcheok_1.dart';
import 'package:bridze/list/seoul/dobong_1.dart';
import 'package:bridze/list/seoul/dobong_2.dart';
import 'package:bridze/list/seoul/dongdaemun_1.dart';
import 'package:bridze/list/seoul/dongdaemun_2.dart';
import 'package:bridze/list/seoul/dongjak_1.dart';
import 'package:bridze/list/seoul/dongjak_2.dart';
import 'package:bridze/list/seoul/eunpyeong_1.dart';
import 'package:bridze/list/seoul/eunpyeong_2.dart';
import 'package:bridze/list/seoul/gangbuk_1.dart';
import 'package:bridze/list/seoul/gangbuk_2.dart';
import 'package:bridze/list/seoul/gangnam_1.dart';
import 'package:bridze/list/seoul/gangnam_2.dart';
import 'package:bridze/list/seoul/gangseo_1.dart';
import 'package:bridze/list/seoul/gangseo_2.dart';
import 'package:bridze/list/gangwon/sokcho_1.dart';
import 'package:bridze/list/gangwon/sokcho_2.dart';
import 'package:bridze/list/gangwon/taebaek_1.dart';
import 'package:bridze/list/gangwon/wonju_1.dart';
import 'package:bridze/list/gangwon/wonju_2.dart';
import 'package:bridze/list/gunsan_1.dart';
import 'package:bridze/list/gyeonggi/ansan_1.dart';
import 'package:bridze/list/gyeonggi/ansan_2.dart';
import 'package:bridze/list/north_chungcheong/eumseong_1.dart';
import 'package:bridze/list/north_chungcheong/gongju_1.dart';
import 'package:bridze/list/north_chungcheong/gonju_2.dart';
import 'package:bridze/list/north_chungcheong/jecheon_1.dart';
import 'package:bridze/list/north_chungcheong/jecheon_2.dart';
import 'package:bridze/list/north_chungcheong/jeungpyeong_1.dart';
import 'package:bridze/list/seoul/geumcheon_1.dart';
import 'package:bridze/list/seoul/geumcheon_2.dart';
import 'package:bridze/list/seoul/guro_1.dart';
import 'package:bridze/list/seoul/guro_2.dart';
import 'package:bridze/list/seoul/gwanak_1.dart';
import 'package:bridze/list/seoul/gwanak_2.dart';
import 'package:bridze/list/seoul/gwangjin_1.dart';
import 'package:bridze/list/seoul/gwangjin_2.dart';
import 'package:bridze/list/seoul/jongno_1.dart';
import 'package:bridze/list/seoul/jongno_2.dart';
import 'package:bridze/list/seoul/jung_1.dart';
import 'package:bridze/list/seoul/jungnang_1.dart';
import 'package:bridze/list/seoul/jungnang_2.dart';
import 'package:bridze/list/seoul/mapo_1.dart';
import 'package:bridze/list/seoul/mapo_2.dart';
import 'package:bridze/list/seoul/nowon_1.dart';
import 'package:bridze/list/seoul/nowon_2.dart';
import 'package:bridze/list/seoul/seocho_1.dart';
import 'package:bridze/list/seoul/seocho_2.dart';
import 'package:bridze/list/seoul/seodaemun_1.dart';
import 'package:bridze/list/seoul/seodaemun_2.dart';
import 'package:bridze/list/seoul/seongbuk_1.dart';
import 'package:bridze/list/seoul/seongbuk_2.dart';
import 'package:bridze/list/seoul/seongdong_2.dart';
import 'package:bridze/list/seoul/songpa_1.dart';
import 'package:bridze/list/seoul/songpa_2.dart';
import 'package:bridze/list/seoul/yangcheon_1.dart';
import 'package:bridze/list/seoul/yangcheon_2.dart';
import 'package:bridze/list/seoul/yeongdeungpo_1.dart';
import 'package:bridze/list/seoul/yeongdeungpo_2.dart';
import 'package:bridze/list/seoul/yongsan_2.dart';
import 'package:bridze/widgets/carousel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:bridze/list/city.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../list/gunsan_2.dart';
import '../list/seoul/seongdong_1.dart';

class InstitutionRecommend extends StatefulWidget {
  const InstitutionRecommend({Key? key}) : super(key: key);

  @override
  InstitutionRecommendState createState() => InstitutionRecommendState();
}

class InstitutionRecommendState extends State<InstitutionRecommend> {
  var selectedProvince;
  var selectedCity;

  List<Widget> carouselItems = [];

  Widget GunsanCarousel = CityCarousel(cities: gunsan);
  Widget GunsanCarousel2 = CityCarousel(cities: gunsan2);
  Widget GangdongCarousel = CityCarousel(cities: gangdong);
  Widget GangdongCarousel2 = CityCarousel(cities: gangdong2);
  Widget CheorwonCarousel = CityCarousel(cities: cheorwon1);
  Widget CheorwonCarousel2 = CityCarousel(cities: cheorwon2);
  Widget ChuncheonCarousel = CityCarousel(cities: chuncheon1);
  Widget ChuncheonCarousel2 = CityCarousel(cities: chuncheon2);
  Widget HoengSeongCarousel2 = CityCarousel(cities: hoengseong2);
  Widget DongHaeCarousel = CityCarousel(cities: donghae1);
  Widget GangneungCarousel = CityCarousel(cities: gangneung1);
  Widget GangneungCarousel2 = CityCarousel(cities: gangneung2);
  Widget HongcheonCarousel = CityCarousel(cities: hongcheon1);
  Widget AnsanCarousel = CityCarousel(cities: ansan1);
  Widget AnsanCarousel2 = CityCarousel(cities: ansan2);
  Widget InjeCarousel2 = CityCarousel(cities: inje2);
  Widget EumseongCarousel = CityCarousel(cities: Eumseong);
  Widget JecheonCarousel = CityCarousel(cities: jecheon1);
  Widget JecheonCarousel2 = CityCarousel(cities: jecheon2);
  Widget JeungpyeongCarousel = CityCarousel(cities: jeungpyeong1);
  Widget GongjuCarousel2 = CityCarousel(cities: gongju2);
  Widget GongjuCarousel = CityCarousel(cities: gongju1);
  Widget SokchoCarousel = CityCarousel(cities: sokcho1);
  Widget SokchoCarousel2 = CityCarousel(cities: sokcho2);
  Widget TaebaekCarousel = CityCarousel(cities: taebaek1);
  Widget TaebaekCarousel2 = CityCarousel(cities: taebaek1);
  Widget WonjuCarousel = CityCarousel(cities: wonju1);
  Widget WonjuCarousel2 = CityCarousel(cities: wonju2);
  Widget SamcheokCarousel = CityCarousel(cities: samcheok1);
  Widget GangnamCarousel = CityCarousel(cities: gangnam1);
  Widget GangnamCarousel2 = CityCarousel(cities: gangnam2);
  Widget DobongCarousel = CityCarousel(cities: dobong1);
  Widget DobongCarousel2 = CityCarousel(cities: dobong2);
  Widget DongdaemonCarousel = CityCarousel(cities: dongdaemun1);
  Widget DongdaemonCarousel2 = CityCarousel(cities: dongdaemun2);
  Widget DongjakCarousel = CityCarousel(cities: dongjak1);
  Widget DongjakCarousel2 = CityCarousel(cities: dongjak2);
  Widget EunpyeongCarousel = CityCarousel(cities: eunpyeong1);
  Widget EunpyeongCarousel2 = CityCarousel(cities: eunpyeong2);
  Widget GangbukCarousel = CityCarousel(cities: gangbuk1);
  Widget GangbukCarousel2 = CityCarousel(cities: gangbuk2);
  Widget GangseoCarousel = CityCarousel(cities: gangseo1);
  Widget GangseoCarousel2 = CityCarousel(cities: gangseo2);
  Widget GeumcheonCarousel = CityCarousel(cities: geumcheon1);
  Widget GeumcheonCarousel2 = CityCarousel(cities: geumcheon2);
  Widget GuroCarousel = CityCarousel(cities: guro1);
  Widget GuroCarousel2 = CityCarousel(cities: guro2);
  Widget GwanakCarousel = CityCarousel(cities: gwanak1);
  Widget GwanakCarousel2 = CityCarousel(cities: gwanak2);
  Widget GwangjinCarousel = CityCarousel(cities: gwangjin1);
  Widget GwangjinCarousel2 = CityCarousel(cities: gwangjin2);
  Widget JongnoCarousel = CityCarousel(cities: jongno1);
  Widget JongnoCarousel2 = CityCarousel(cities: jongno2);
  Widget JungCarousel = CityCarousel(cities: jung1);
  Widget JungnangCarousel2 = CityCarousel(cities: jungnang2);
  Widget JungnangCarousel = CityCarousel(cities: jungnang1);
  Widget MapoCarousel = CityCarousel(cities: mapo1);
  Widget MapoCarousel2 = CityCarousel(cities: mapo2);
  Widget NowonCarousel = CityCarousel(cities: nowon1);
  Widget NowonCarousel2 = CityCarousel(cities: nowon2);
  Widget SeochoCarousel = CityCarousel(cities: seocho1);
  Widget SeochoCarousel2 = CityCarousel(cities: seocho2);
  Widget SeodaemunCarousel = CityCarousel(cities: seodaemun1);
  Widget SeodaemunCarousel2 = CityCarousel(cities: seodaemun2);
  Widget SeongbukCarousel = CityCarousel(cities: seongbuk1);
  Widget SeongbukCarousel2 = CityCarousel(cities: seongbuk2);
  Widget SeongdongCarousel = CityCarousel(cities: seongdong1);
  Widget SeongdongCarousel2 = CityCarousel(cities: seongdong2);
  Widget SongpaCarousel = CityCarousel(cities: songpa1);
  Widget SongpaCarousel2 = CityCarousel(cities: songpa2);
  Widget YongsanCarousel2 = CityCarousel(cities: yongsan2);
  Widget YeongdeungpoCarousel2 = CityCarousel(cities: yeongdeungpo2);
  Widget YeongdeungpoCarousel = CityCarousel(cities: yeongdeungpo1);
  Widget YangcheonCarousel = CityCarousel(cities: yangcheon1);
  Widget YangcheonCarousel2 = CityCarousel(cities: yangcheon2);
  String evaluation = '';
  String recommendation = '';
  String recommendation2 = '';
  String evaluation2 = '';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      loadEvaluation();
    });
  }

  void loadEvaluation() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String storedEvaluation = prefs.getString('evaluation') ?? 'default_value';
    String storedEvaluation2 =
        prefs.getString('evaluation2') ?? 'default_value';

    print('Stored Evaluation: $storedEvaluation');
    print('Stored Evaluation2: $storedEvaluation2');

    setState(() {
      evaluation = storedEvaluation;
      evaluation2 = storedEvaluation2;
      determineRecommendation();
    });
  }

  void determineRecommendation() {
    if ((evaluation == '상' || evaluation == '중') &&
        (evaluation2 == '상' || evaluation2 == '중상')) {
      recommendation = '비대면 프로그램을 추천합니다!';
    } else if ((evaluation == '상' || evaluation == '중') &&
        (evaluation2 == '하' || evaluation2 == '중하')) {
      recommendation = '정서 기관 선택을 추천합니다!';
    } else if ((evaluation == '하' &&
        (evaluation2 == '상' || evaluation2 == '중상'))) {
      recommendation = '언어 기관 선택을 추천합니다!';
    } else {
      recommendation = '기관을 선택해주세요';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/desktop1.png',
            fit: BoxFit.cover,
            width: 1440,
            height: 1024,
          ),
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/torizzi.png',
                        width: 50,
                        height: 50,
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "토리찌가 도와줄게 !",
                        style: TextStyle(
                          fontFamily: 'BMJUA',
                          fontSize: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "도/시 와  시/군 을 선택해주세요",
                  style: TextStyle(
                    fontFamily: 'BMJUA',
                    fontSize: 35,
                    color: Color(0xFF96B9DB),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  recommendation,
                  style: const TextStyle(
                    fontFamily: 'BMJUA',
                    fontSize: 20,
                    color: Color(0xFFe73333),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      height: 70,
                      decoration: BoxDecoration(
                        color: const Color(0xFF96B9DB),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Center(
                        child: DropdownButton<String>(
                          value: selectedProvince,
                          onChanged: (newValue) {
                            setState(() {
                              selectedProvince = newValue!;
                              selectedCity = null;
                            });
                          },
                          items: <String>[
                            '서울특별시',
                            '경기도',
                            '강원도',
                            '충청북도',
                            '충청남도',
                            '전라북도',
                            '전라남도',
                            '경상북도',
                            '경상남도',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontFamily: 'BMJUA',
                                  fontSize: 30,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 50),
                    if (selectedProvince != null)
                      Container(
                        width: 300,
                        height: 70,
                        decoration: BoxDecoration(
                          color: const Color(0xFF96B9DB),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Center(
                          child: DropdownButton<String>(
                            value: selectedCity,
                            onChanged: (newValue) {
                              setState(() {
                                selectedCity = newValue!;
                              });
                            },
                            items: citiesByProvince[selectedProvince]!
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontFamily: 'BMJUA',
                                    fontSize: 30,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if ((recommendation == '언어 기관 선택을 추천합니다!' &&
                        selectedCity == '군산시'))
                      GunsanCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '군산시')
                      GunsanCarousel2,
                    if (selectedCity == '강동구' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      GangdongCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '강동구')
                      GangdongCarousel2,
                    if (selectedCity == '철원군' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      CheorwonCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '철원군')
                      CheorwonCarousel2,
                    if (selectedCity == '춘천시' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      ChuncheonCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '춘천시')
                      ChuncheonCarousel2,
                    if (selectedCity == '횡성군' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      const Center(
                        child: Text(
                            '횡성군에는 언어 교육 기관이 없습니다.\n다른 가까운 지역을 선택하여 추천받으시거나 비대면 프로그램 추천을 통해 전문가와 연결이 가능합니다 :)',
                            style: TextStyle(
                              fontFamily: 'BMJUA',
                              fontSize: 20,
                            )),
                      ),
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '횡성군')
                      HoengSeongCarousel2,
                    if (selectedCity == '동해시' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      DongHaeCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '동해시')
                      const Center(
                        child: Text(
                            '동해시에는 언어 교육 기관 및 심리 상담 기관이 없습니다.\n다른 가까운 지역을 선택하여 추천받으시거나 비대면 프로그램 추천을 통해 전문가와 연결이 가능합니다 :)',
                            style: TextStyle(
                              fontFamily: 'BMJUA',
                              fontSize: 20,
                            )),
                      ),
                    if (selectedCity == '강릉시' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      GangneungCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '강릉시')
                      GangneungCarousel2,
                    if (selectedCity == '고성시')
                      const Center(
                        child: Text(
                            '고성시에는 언어 교육 기관 및 심리 상담 기관이 없습니다.\n다른 가까운 지역을 선택하여 추천받으시거나 비대면 프로그램 추천을 통해 전문가와 연결이 가능합니다 :)',
                            style: TextStyle(
                              fontFamily: 'BMJUA',
                              fontSize: 20,
                            )),
                      ),
                    if (selectedCity == '홍천군' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      HongcheonCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '홍천군')
                      const Center(
                        child: Text(
                            '화천군에는 언어 교육 기관 및 심리 상담 기관이 없습니다.\n다른 가까운 지역을 선택하여 추천받으시거나 비대면 프로그램 추천을 통해 전문가와 연결이 가능합니다 :)',
                            style: TextStyle(
                              fontFamily: 'BMJUA',
                              fontSize: 20,
                            )),
                      ),
                    if (selectedCity == '화천군')
                      const Center(
                        child: Text(
                            '화천군에는 언어 교육 기관 및 심리 상담 기관이 없습니다.\n다른 가까운 지역을 선택하여 추천받으시거나 비대면 프로그램 추천을 통해 전문가와 연결이 가능합니다 :)',
                            style: TextStyle(
                              fontFamily: 'BMJUA',
                              fontSize: 20,
                            )),
                      ),
                    if (selectedCity == '인제군' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      const Center(
                        child: Text(
                            '인제군에는 언어 교육 기관이 없습니다.\n다른 가까운 지역을 선택하여 추천받으시거나 비대면 프로그램 추천을 통해 전문가와 연결이 가능합니다 :)',
                            style: TextStyle(
                              fontFamily: 'BMJUA',
                              fontSize: 20,
                            )),
                      ),
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '인제군')
                      InjeCarousel2,
                    if (selectedCity == '속초시' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      SokchoCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '속초시')
                      SokchoCarousel2,
                    if (selectedCity == '태백시' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      TaebaekCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '태백시')
                      TaebaekCarousel2,
                    if (selectedCity == '원주시' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      WonjuCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '원주시')
                      WonjuCarousel2,
                    if (selectedCity == '삼척시' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      SamcheokCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '삼척시')
                      const Center(
                        child: Text(
                            '삼척시에는 언어 교육 기관이 없습니다.\n다른 가까운 지역을 선택하여 추천받으시거나 비대면 프로그램 추천을 통해 전문가와 연결이 가능합니다 :)',
                            style: TextStyle(
                              fontFamily: 'BMJUA',
                              fontSize: 20,
                            )),
                      ),
                    if (selectedCity == '양구군')
                      const Center(
                        child: Text(
                            '양구군에는 언어 교육 기관이 없습니다.\n다른 가까운 지역을 선택하여 추천받으시거나 비대면 프로그램 추천을 통해 전문가와 연결이 가능합니다 :)',
                            style: TextStyle(
                              fontFamily: 'BMJUA',
                              fontSize: 20,
                            )),
                      ),
                    if (selectedCity == '강남구' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      GangnamCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '강남구')
                      GangnamCarousel2,
                    if (selectedCity == '도봉구' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      DobongCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '도봉구')
                      DobongCarousel2,
                    if (selectedCity == '동대문구' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      DongdaemonCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '동대문구')
                      DongdaemonCarousel2,
                    if (selectedCity == '동작구' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      DongjakCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '동작구')
                      DongjakCarousel2,
                    if (selectedCity == '은평구' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      EunpyeongCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '은평구')
                      EunpyeongCarousel2,
                    if (selectedCity == '강북구' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      GangbukCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '강북구')
                      GangbukCarousel2,
                    if (selectedCity == '강서구' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      GangseoCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '강서구')
                      GangseoCarousel2,
                    if (selectedCity == '금천구' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      GeumcheonCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '금천구')
                      GeumcheonCarousel2,
                    if (selectedCity == '구로구' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      GuroCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '구로구')
                      GuroCarousel2,
                    if (selectedCity == '관악구' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      GwanakCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '관악구')
                      GwanakCarousel2,
                    if (selectedCity == '광진구' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      GwangjinCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '광진구')
                      GwangjinCarousel2,
                    if (selectedCity == '종로구' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      JongnoCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '종로구')
                      JongnoCarousel2,
                    if (selectedCity == '중구' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      JungCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '중구')
                      const Center(
                        child: Text(
                            '중구에는 언어 교육 기관이 없습니다.\n다른 가까운 지역을 선택하여 추천받으시거나 비대면 프로그램 추천을 통해 전문가와 연결이 가능합니다 :)',
                            style: TextStyle(
                              fontFamily: 'BMJUA',
                              fontSize: 20,
                            )),
                      ),
                    if (selectedCity == '중랑구' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      JungnangCarousel,
                    if (selectedCity == '마포구' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      MapoCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '마포구')
                      MapoCarousel2,
                    if (selectedCity == '노원구' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      NowonCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '노원구')
                      NowonCarousel2,
                    if (selectedCity == '서초구' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      SeochoCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '서초구')
                      SeochoCarousel2,
                    if (selectedCity == '서대문구' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      SeodaemunCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '서대문구')
                      SeodaemunCarousel2,
                    if (selectedCity == '성북구' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      SeongbukCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '성북구')
                      SeongbukCarousel2,
                    if (selectedCity == '성동구' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      SeongdongCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '성동구')
                      SeongdongCarousel2,
                    if (selectedCity == '송파구' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      SongpaCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '송파구')
                      SongpaCarousel2,
                    if (selectedCity == '양천구' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      YangcheonCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '양천구')
                      YangcheonCarousel2,
                    if (selectedCity == '영등포구' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      YeongdeungpoCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '영등포구')
                      YeongdeungpoCarousel2,
                    if (selectedCity == '용산구' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      const Center(
                        child: Text(
                            '용산구에는 언어 교육 기관이 없습니다.\n다른 가까운 지역을 선택하여 추천받으시거나 비대면 프로그램 추천을 통해 전문가와 연결이 가능합니다 :)',
                            style: TextStyle(
                              fontFamily: 'BMJUA',
                              fontSize: 20,
                            )),
                      ),
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '용산구')
                      YongsanCarousel2,
                    if (selectedCity == '안산시' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      AnsanCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '안산시')
                      AnsanCarousel2,
                    if (selectedCity == '음성군' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      EumseongCarousel,
                    if (selectedCity == '제천시' &&
                        recommendation == '언어 기관 선택을 추천합니다!')
                      JecheonCarousel,
                    if ((recommendation == '정서 기관 선택을 추천합니다!' ||
                            recommendation == '기관을 선택해주세요') &&
                        selectedCity == '제천시')
                      JecheonCarousel2,
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 50,
                        enableInfiniteScroll: false,
                      ),
                      items: carouselItems,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}