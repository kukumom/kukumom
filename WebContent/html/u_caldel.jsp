<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="dbCon.jsp"%>
<%
	if (con != null && !con.isClosed()) {
		try {
			String userid = request.getParameter("USERID");
			String calsdate = request.getParameter("CALSDATE");
			System.out.println(userid);
			System.out.println(calsdate);
			PreparedStatement pstmt = null;
			sql = "DELETE FROM USRSCHEDULE WHERE  = ? and ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userid);
			pstmt.setString(2, calsdate);
			pstmt.executeUpdate();
%>
<script>
alert("삭제 완료 하였습니다.");
</script>
<%
		} catch (Exception e) {
			out.println(e.getMessage());
			e.printStackTrace();
		} finally {
			if (con != null && !con.isClosed()) {
				con.close();
			}
		}
		
	}
%>
<script>
location.href = 'u_callist.jsp';
</script>