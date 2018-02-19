package org.happy.poor.common.util;

/**
 * net.siriussoft.uae.common.util.PagingUtil
 * 
 * @project UAE-Front-eService
 * @author Siriussoft. Co
 * @create 2015.01.06 14:56:06
 * @version
 */
public class PagingUtil {

	// Default paging bundle count
	public static int DEFAULT_BUNDLE_COUNT = 10;

	/**
	 * @param startCount
	 * @param totalCount
	 * @param viewListCount
	 * @param bundleCount
	 * @return
	 */
	public static String getPageLinks(int startCount, int totalCount, int viewListCount, int bundleCount) {
		StringBuffer sbRet = new StringBuffer("");
		Anchor anchor = getPageAnchor(startCount, totalCount, viewListCount, bundleCount);

		sbRet.append("<ul class=\"pagination\">");

		if (anchor.getFirstPage() != -1) {
			sbRet.append("<li ><a href=\"#\" onClick=\"javascript:doPaging('" + anchor.getFirstPage()
					+ "');\" aria-label=\"First\"><span aria-hidden=\"true\">&laquo;</span></a></li>");
		} else {
			sbRet.append("<li class=\"disabled\"><a href=\"#\" aria-label=\"First\"><span aria-hidden=\"true\">&laquo;</span></a></li>");
		}

		if (anchor.getBundleBefore() != -1) {
			sbRet.append("<li ><a href=\"#\" onClick=\"javascript:doPaging('" + anchor.getBundleBefore()
					+ "');\" aria-label=\"Previous\"><span aria-hidden=\"true\">&lsaquo;</span></a></li>");
		} else {
			sbRet.append("<li class=\"disabled\"><a href=\"#\" aria-label=\"Previous\"><span aria-hidden=\"true\">&lsaquo;</span></a></li>");
		}

		int pageCount = anchor.getPageCount();
		String pages[][] = anchor.getPages();

		for (int i = 0; i < pageCount && i < pages.length; i++) {
			if (pages[i][1].equals("-1")) {
				sbRet.append("<li class=\"active\"><a href=\"#\">" + pages[i][0]
						+ " <span class=\"sr-only\">(current)</span></a></li>");
			} else {
				sbRet.append("<li><a href=\"#\" onClick=\"javascript:doPaging('" + pages[i][1] + "');\">" + pages[i][0]
						+ "</a></li>");
			}
		}

		if (anchor.getBundleNext() != -1) {
			sbRet.append("<li ><a href=\"#\" onClick=\"javascript:doPaging('" + anchor.getBundleNext()
					+ "');\" aria-label=\"Next\"><span aria-hidden=\"true\">&rsaquo;</span></a></li>");
		} else {
			sbRet.append("<li class=\"disabled\"><a href=\"#\" aria-label=\"Next\"><span aria-hidden=\"true\">&rsaquo;</span></a></li>");
		}

		if (anchor.getLastPage() != -1) {
			sbRet.append("<li ><a href=\"#\" onClick=\"javascript:doPaging('" + anchor.getLastPage()
					+ "');\" aria-label=\"Last\"><span aria-hidden=\"true\">&raquo;</span></a></li>");
		} else {
			sbRet.append("<li class=\"disabled\"><a href=\"#\" aria-label=\"Last\"><span aria-hidden=\"true\">&raquo;</span></a></li>");
		}

		sbRet.append("</ul>");

		return sbRet.toString();
	}

	/**
	 * @param startNum
	 * @param totalcount
	 * @param resultCnt
	 * @param anchorSacle
	 * @return
	 */
	private static Anchor getPageAnchor(int startNum, int totalcount, int resultCnt, int anchorSacle) {
		Anchor anchor = new Anchor();

		if (totalcount == 0) { //?��록된 ?��보�? ?��?���? ?��?���? Anchor�? ?��?�� ?���? ?��?��?��.
			return anchor;
		}

		int curBundleNum = startNum / (resultCnt * anchorSacle);
		/*
		 * System.out.println("resultCnt : " + resultCnt ); System.out.println("anchorSacle : " + anchorSacle);
		 * System.out.println("startNum : "+startNum); System.out.println("curBundleNum : "+curBundleNum);
		 */
		int totalPageCnt = totalcount / resultCnt;
		if (totalcount % resultCnt > 0) {
			totalPageCnt++;
		}

		anchor.setTotalPgCount(totalPageCnt); // ?���? ?��?���? ?��?��

		if (startNum > 0) { // ?��?�� ?��?���?
			int beforePg = startNum - resultCnt;
			anchor.setBefore(beforePg);
		}

		if (startNum + resultCnt < totalcount) { // ?��?��?��?���?
			int nextPg = startNum + resultCnt;
			anchor.setNext(nextPg);
		}

		//번들 ?���? ?��?��
		int bundleBeforePg = (curBundleNum - 1) * resultCnt * anchorSacle; //?��?�� 번들�? ?��?��?��?�� 번호
		if (curBundleNum > 0) {
			anchor.setBundleBefore(bundleBeforePg);
		}

		//번들 ?��?���? ?��?��
		int bundleNextPg = (1 + curBundleNum) * anchorSacle * resultCnt;
		if (totalPageCnt >= anchorSacle && (curBundleNum + 1) * anchorSacle < totalPageCnt) {
			anchor.setBundleNext(bundleNextPg);
		}

		/*System.out.println("startNum : " + startNum);
		System.out.println("curBundleNum : " + curBundleNum);*/
		//맨처?��..
		if (startNum != 0 && curBundleNum != 0) {

			anchor.setFirstPage(0);
		}
		//맨끝...
		int lastPage = (resultCnt * totalPageCnt) - resultCnt;
		if (totalPageCnt >= anchorSacle && (curBundleNum + 1) * anchorSacle < totalPageCnt) {
			anchor.setLastPage(lastPage);
		}

		int pageCount = 1;
		String[][] pages = new String[anchorSacle][2];
		for (int i = 0; i < anchorSacle; i++) {
			int startCnt = ((curBundleNum * anchorSacle) + i) * resultCnt;
			int pageNum = (curBundleNum * anchorSacle) + i + 1;
			if (startCnt < totalcount) {
				if (startCnt != startNum) {
					pages[i][0] = Integer.toString(pageNum);
					pages[i][1] = Integer.toString(startCnt);
				} else {
					pages[i][0] = Integer.toString(pageNum);
					pages[i][1] = "-1";
					anchor.setCurPageNumber(pageNum);
				}
				anchor.setPageCount(pageCount);
				pageCount++;
			}
		}
		anchor.setPages(pages);
		return anchor;
	}
}
