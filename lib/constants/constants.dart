
const String baseUrl = "https://godoc-api-dev.synergyai.link/";
//const String baseUrl = "https://godoc-api-test.synergyai.link/";

const String login = 'api/auth/login'; //로그인
const String oauth = 'api/user/oauth'; //소셜 로그인

const String signUp = 'api/user/signup'; //회원가입
const String duplicated = 'api/user/duplicated'; //아이디 중복 체크
const String events = 'api/user/me/events'; //이벤트 추가
const String userMe = 'api/user/me'; //사용자 조회
const String eventsLatest = 'api/user/me/events/latest'; //가장 최근 이벤트 조회
const String eventsDistance = 'api/events/distance'; //수신무응답 거리 확장
const String findId = 'api/user/findId'; //아이디 찾기
const String resetPassword = 'api/user/resetPassword'; //비밀번호 재설정
const String findPassword = 'api/user/findPassword'; //비밀번호 찾기(비밀 번호 재발급)

eventFix(String id){return 'api/events/$id/status';} // 이벤트 수정
eventSelectionFix(String id){return 'api/events/$id/selection';} //병원 수락 or 거절
eventsHospitals(String id){return 'api/events/$id/hospitals';} //이벤트 수신 병원 조회
eventsHospitalsShortest(String id){return 'api/events/$id/hospitals/shortest';} //이벤트 수신 최단거리 병원 조회 20개

const String usageHistorySocket = 'ws/patients';

const String sendbirdId = '1DDDB080-1B25-4C1B-B6E5-F63887FBD3CA';

const String sendbirdUrl = 'https://api-1DDDB080-1B25-4C1B-B6E5-F63887FBD3CA.sendbird.com';


const impKey = '5372160114453378';
const impSecret = 'xfcMcXfQvYfVj45rsx6iPupfxDlQVnVLiKI0YeCAxi4uiB5gHkTzlh71qDfTIYGIs18epIrAV0pflbiU';

const String iamportBaseUrl = 'https://api.iamport.kr/';
const String iamportGetoken ='users/getToken';
iamportCertification(String impUid){return '/certifications/$impUid';}


const String kakaoAppKey = '5fc07cd33d1d528222e0280b0fb5c221';

const int bottomNavigationBarHeight = 70;

