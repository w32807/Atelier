package com.atelier.util;

public class PD_Paging {
	private int maxNum; //전체 글 개수
	private int pageNum; //현재 페이지 번호
	private int listCount; //페이지당 나타낼 글 갯수
	private int pageCount; // 아래의 한 페이지에서 보이는 페이지를 몇칸 둘것인지를 나타내는 공간번호
	private String listName; // 목록 페이지의 종류


	public PD_Paging(int maxNum, int pageNum, int listCount, int pageCount, String listName) {
		this.maxNum = maxNum;
		this.pageNum = pageNum;
		this.listCount = listCount;
		this.pageCount = pageCount;
		this.listName = listName;
	}

	public String makeHtmlPaging() {
		//전체 페이지 개수
		int totalPage = (maxNum % listCount > 0) ? maxNum/listCount+1 : maxNum/listCount;
		//전체 페이지 그룹을 나눔, 10개이후 다음 11~20까지 이런느낌;
		int totalGroup = (totalPage % pageCount > 0) ? totalPage/pageCount+1 : totalPage/pageCount;
		//현재 페이지가 속해 있는 그룹번호
		int currentGroup = (pageNum%pageCount>0) ? pageNum/pageCount+1 : pageNum/pageCount;

		return makeHtml(totalPage, currentGroup, listName);
	}

	private String makeHtml(int totalPage, int currentGroup, String listName) {
		StringBuffer sb = new StringBuffer();

		//현재 그룹의 시작 페이지 번호
		int start = (currentGroup*pageCount)-(pageCount-1);

		//현재 그룹의 끝 페이지 번호
		int end = (currentGroup*pageCount >= totalPage) ? totalPage:currentGroup*pageCount;

		if(start != 1) {
			sb.append("<a href='" + listName + "?pageNum=" + (start-1) +"'>");
			sb.append("[이전]");
			sb.append("</a>");
		}
		//실제로 화면에 출력되는 내용
		//<a href='list?pageNum=5'>[이전]</a>

		for(int i = start; i <= end; i++) {
			if(pageNum != i) {
				sb.append("<a href='" + listName + "?pageNum=" + i + "'>");
				sb.append(" [ " + i + " ]</a>");
			}
			else {
				sb.append("<font style='color:red;'>");
				sb.append(" [ " + i + " ]</font>");
			}
		}
		//<a href='list?pageNum=6'>[ 6 ]</a>
		//<font style='color:red;'>[ 7 ]</font>
		//<a href='list?pageNum=8'>[ 8 ]</a>
		//<a href='list?pageNum=9'>[ 9 ]</a>
		//<a href='list?pageNum=10'>[ 10 ]</a>

		if(end != totalPage) {
			sb.append("<a href='" + listName + "?pageNum=" + (end+1) +"'>");
			sb.append("[다음]");
			sb.append("</a>");
		}
		//<a href='list?pageNum=11'>[다음]</a>

		return sb.toString();
	}
}
