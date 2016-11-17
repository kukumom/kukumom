<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="dbCon.jsp"%>
<%
	if (con != null && !con.isClosed()) {
		try {
			String USERID = request.getParameter("USERID");
			System.out.println(USERID);
			PreparedStatement pstmt = null;
			sql = "DELETE FROM USRSCHEDULE WHERE USERID= ? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, USERID);
			pstmt.executeUpdate();
			con.commit();

		} catch (Exception e) {
			out.println(" 데이터베이스 접속에 문제가 있습니다. <hr>");
			out.println(e.getMessage());
			e.printStackTrace();
		}finally{
	        out.print("<script>location.href='u_callist.jsp';</script>");
	    }
	}
	%>
