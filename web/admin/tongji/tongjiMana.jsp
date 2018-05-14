<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
        <script type="text/javascript" src="<%=path %>/My97DatePicker/WdatePicker.js"></script>

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
      
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
	
    <form  action="<%=path %>/tongji?type=tongjiMana" name="formAdd" method="post">     
      姓名或学号<input name="stuinfo"    type="text"  value='${requestScope.stuinfo}'/>  
    <input type="submit"  value="统计" />
    </form>
    
    		<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D9E9FF" align="center" style="margin-top:8px">
				<tr align="center" bgcolor="#87BBEF" height="22">
					<td >学生学号</td>
					<td >学生姓名</td>
					<td >学年</td>
					<td >总课目数</td>
					<td >总成绩</td>
					<td >平均成绩</td>
					<td >及格数</td>
					<td >不及格数</td>
</td>
		        </tr>	
				<c:forEach items="${requestScope.tongjiList}" var="tongji">
				<c:if test="${(sessionScope.role==1||sessionScope.role==2)||(tongji.code==sessionScope.admin.userName)}">
                <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
					    ${tongji.code}
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    ${tongji.name1}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${tongji.xuenian}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${tongji.numb}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${tongji.total}
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
						${tongji.avg}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${tongji.jgnumb}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${tongji.bjgnumb}
					</td>
					
				</tr>
                </c:if>
				</c:forEach>
			</table>
			
		
	</body>
</html>
