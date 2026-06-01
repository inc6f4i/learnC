Sub 신규아이디생성()

아이디 = GetTagVal("보안.등록_아이디") 
비밀 = GetTagVal("보안.등록_비밀번호") 
이름 = GetTagVal("보안.등록_이름") 
보안등급 = GetTagVal("보안.등록_아날로그") 


SetUserData 아이디, 비밀, 이름, "A", 보안등급

msgbox 이름 + "을(를) 계정을 생성하였습니다" '확인을 눌러야 다름 실행문 실행함

SetTagVal "보안.등록_아이디", ""
SetTagVal "보안.등록_비밀번호", ""
SetTagVal "보안.등록_이름", ""
SetTagVal "보안.등록_아날로그", 0

End Sub