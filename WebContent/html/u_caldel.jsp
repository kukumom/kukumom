<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="dbCon.jsp"%>
<%
	if (con != null && !con.isClosed()) {
		try {
			String calcont = request.getParameter("CALCONT");
			
			System.out.println(calcont);
			
			PreparedStatement pstmt = null;
			sql = "DELETE FROM USRSCHEDULE WHERE  = ? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, calcont);
			
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