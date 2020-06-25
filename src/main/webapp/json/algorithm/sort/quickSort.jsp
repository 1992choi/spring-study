<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<pre>
[Quick Sort]


구현 중입니다.
</pre>
<%
	// Source Start
	int[] data = { 4, 54, 2, 8, 63, 7, 55, 56 };
	int[] orgData = data.clone();
	
	// Source End
	
	// 정렬 전
	out.print("정렬 전 : ");
	for (int i = 0; i < orgData.length; i++) {
		out.print(orgData[i] + " ");
	}
	
	// 정렬 후
	out.print("<br>정렬 후 : ");
	for (int i = 0; i < data.length; i++) {
		out.print(data[i] + " ");
	}
%>
