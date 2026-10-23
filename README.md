<img width="361" height="751" alt="image" src="https://github.com/user-attachments/assets/74706d23-2d14-4570-a2af-400b6fc66925" />
<img width="359" height="749" alt="image" src="https://github.com/user-attachments/assets/0916fbb1-11f7-4654-bcef-eda2c9976e99" />

# Advanced_iOS (day2)

## 학습 내용

1. enum + rawValue + Coddle: Gender 열거형
2. @State 분기 (앱 진입점): isLoggedIn, showLogin
3. @Binding (화면 전환): 로그인 ↔ 회원가입 ↔ 메인
4. TextField / SecureField: 로그인, 회원가입 입력 필드
5. .sheet + Wheel Picker: 나이 선택 팝업
6. .segmented Picker: 성별 선택
7. .presentationDetents: Sheet 높이 제한
8. ForEach + CaseIterable: 요일/지역/성별 선택 버튼 반복
9. LazyVGrid: 지역 2열 그리드 배치
10. selectButton 재사용 함수: 선택 버튼 공통화


## Advancements

1. 회원가입에 로고 추가: 회원가입 화면 상단에도 로그인처럼 앱 로고 + 이름 넣기
2. 나이 Picker에 확인 버튼 추가: Sheet 안에 "확인" 버튼을 추가해서 누르면 시트가 닫히도록 구현
3. 입력값 검증: 회원가입 버튼을 누를 때 닉네임이 비어있으면 알림을 띄운다. .alert 이용
4. 로그아웃 연결: 마이페이지의 로그아웃 버튼을 눌렀을 때, 다시 로그인 화면으로 돌아가도록 설정. @Binding isLoggedIn 사용
