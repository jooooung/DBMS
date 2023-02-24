<%@page import="java.util.ArrayList"%>
<%@page import="com.lec.book.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String conPath = request.getContextPath(); %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="<%=conPath%>/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<table>
		<tr>
			<%
			  BookDao bDao = BookDao.getInstance();
				ArrayList<BookDto> books = bDao.listBook();
				for(int i=0 ; i<books.size() ; i++){
					int bprice = books.get(i).getBprice();
					int bdiscount = books.get(i).getBdiscount();
					int discountPrice = bprice * (100 - bdiscount) / 100;
					if(i != 0 && i % 3 == 0) out.println("</tr><tr>");
			%>
				<td>
					<a href="detail.jsp?bid=<%=books.get(i).getBid()%>">
						<img alt="표지" src="<%=conPath%>/bookFile/<%=books.get(i).getBimage1()%>"><br>
						<%=books.get(i).getBid() %>. <%=books.get(i).getBtitle() %><br>
					</a>	
					<del><%=bprice %></del>
					<b><%=discountPrice %>원</b>(<%=bdiscount %>%할인)
				</td>
			<%}%>
		</tr>	
	</table>	
</body>
</html>