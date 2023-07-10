function adding(){
	if(frm.t_no.value==""){
		alert("입출고번호가 입력되지 않았습니다");
		frm.t_no.focus();
		return false;
	}
	else if(frm.p_code.value.length == 0){
		alert("제품코드가 입력되지 않았습니다");
		frm.p_code.focus();
		return false;
	}
	else if(frm.t_type.checked == false ||
			frm.t_type.checked == false) {
				alert("입출고구분이 입력되지 않았습니다");
				ftm.t_type.focus();
				return false;
	}
	else if(frm.t_cnt.value.length == 0){
		alert("수량이 입력되지 않았습니다");
		frm.t_cnt.focus();
		return false;
	}
	else if(frm.t_date.value.length == 0){
		alert("거래일자가 입력되지 않았습니다");
		frm.t_date.focus();
		return false;
	}
	else if(frm.c_name.value == ""){
		alert("거래처가 입력되지 않았습니다");
		frm.c_name.focus();
		return false;
	}
	else {
		alert("입출고등록이 완료되었습니다");
		document.frm.submit();
		return true;
	}
}

function reseting() {
	alert("정보를 지우고 처음부터 다시 입력합니다");
	document.frm.reset();
}
