package com.atelier.util;

import org.springframework.stereotype.Component;

@Component
public class AD_MaterialPaging {
	private int maxNum; //전체 글 갯수
	private int adcPageNum; //현재 페이지 번호
	private int listCount; //페이지 당 글 갯수
	private int pageCount; //화면에 몇 개의 페이지를 보여줄 지 페이지 번호 갯수
	private String listName; //목록 페이지의 종류
	
	public AD_MaterialPaging(int maxNum, int adcPageNum, int listCount, int pageCount, String listName) {
		this.maxNum = maxNum;
		this.adcPageNum = adcPageNum;
		this.listCount = listCount;
		this.pageCount = pageCount;
		this.listName = listName;
	}
	
	/* ---------------------------------------------------------------------------------
	  * 기능: 원자재 리스트 출력 / 페이징 처리
	  * 작성자: JSH
	  * 작성일 : 2019.02.07
	  -----------------------------------------------------------------------------------*/
	public String makeHtmlPaging() {
		int totalPage = (maxNum % listCount > 0 )? maxNum/listCount+1 : maxNum/listCount;
		int totalGroup = (totalPage%pageCount) > 0 ? totalPage/pageCount +1 : totalPage/pageCount ;
		
		int currentGroup = (adcPageNum % pageCount) >0 ? adcPageNum/pageCount +1 : adcPageNum/pageCount;
		
		return makeHtml(totalPage,currentGroup);
	}
	
	/* ---------------------------------------------------------------------------------
	  * 기능: 원자재 리스트 출력 / 페이징 처리
	  * 작성자: JSH
	  * 작성일 : 2019.02.07
	  -----------------------------------------------------------------------------------*/
	private String makeHtml(int totalPage, int currentGroup) {
		StringBuffer sb = new StringBuffer();
		int start = (currentGroup * pageCount)- (pageCount-1);
		int end = (currentGroup * pageCount >= totalPage)? totalPage : currentGroup *pageCount;
		
		if(start != 1) {//그룹번호가 1이 아니다 -> 2페이지보다 뒷 쪽이다.
			sb.append("<li>");
			sb.append("<a href='" + listName + "?adcPageNum=" +(start-1) + "'>");
			sb.append("«");	
			}
		//<a href = list?pageNum=5>[이전]</a>  ---- 6번 페이지에 있을 때, 이전을 눌러 5번페이지로 넘어가도록 만들기.
			for(int i = start; i<=end;i++) {
				if(adcPageNum != i) {//현재 보고 있는 페이지가 아니라면 페이지 번호에 링크걸자
					sb.append("<li ><a href='" + listName + "?adcPageNum=" + i + "'>" + i +"</a></li>");
				}
				else {
					sb.append("<li ><a href='#'>"+ i +"</a></li>");
					//이러한 HTML 코드에 class 혹은 id를 부여하여, css나 javascript를 적용할 수 있다.
					//그리고 띄어쓰기 조심하자.
				}
		//<a href = list?pageNum=6>[6]</a>  ---- 6번 페이지에 있을 때, 6번 표시
        //	<font style = 'color:red'>[7]</font>				
		//<a href = list?pageNum=8>[8]</a>  ---- 8번 페이지에 있을 때, 8번 표시
			}
			
			if(end != totalPage) {
				sb.append("<li><a href='" + listName + "?adcPageNum=" +(end+1) + "'>");
				sb.append("»");		
				sb.append("</a></li>");
			}
			//<a href = list?pageNum=11>[다음]</a>
		return sb.toString();//버퍼에 문자열을 담아, 그 문자열을 반환함.
	}
	
	
}
