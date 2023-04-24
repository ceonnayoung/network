function checking() {
	if(frm.p_code.value.length == 0) {
		alert("제품코드가 입력되지 않았습니다.!");
		frm.p_code.focus();
	}
	else {
		alert("입출고 정보를 입력합니다!")
		frm.submit();
	}
	
}
