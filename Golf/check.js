function checking() {
	if(frm.value.length == 0) {
		alert("수강일이 입력되지 않았습니다")
		frm.date.focus()
		return false
	} else if(frm.value.length == 0) {
		alert("회원명이 입력되지 않았습니다")
		frm.memberName.focus()
		return false
	}else if(frm.value.length == 0) {
		alert("강의장소가 입력되지 않았습니다")
		frm.area.focus()
		return false
	}else if(frm.value.length == 0) {
		alert("강의명이 입력되지 않았습니다")
		frm.className.focus()
		return false
	}
	alert("수강신청이 정상적으로 완료되었습니다")
	document.frm.submit()
	return true
}

function reseting() {
	alert("정보를 지우고 처음부터 다시 입력합니다")
	document.frm.reset()
}
