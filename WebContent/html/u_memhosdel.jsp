<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="dbCon.jsp"%>
<%
	if (con != null && !con.isClosed()) {
		try {
			String hoscode = request.getParameter("HOSCODE");
			System.out.println(hoscode);
			PreparedStatement pstmt = null;
			sql = "DELETE FROM USRMYHOS WHERE HOSCODE = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, hoscode);
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
location.href = 'u_hossearchlist.jsp';
</script>