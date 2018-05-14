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
       <link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
       <script language="javascript">
           function adminDel(userId)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/admin?type=adminDel&userId="+userId;
               }
           }
           
           function adminAdd()
           {
                 var url="<%=path %>/admin/admin/adminAdd.jsp";
                 //var n="";
                 //var w="480px";
                 //var h="500px";
                 //var s="resizable:no;help:no;status:no;scroll:yes";
				 //openWin(url,n,w,h,s);
				 window.location.href=url;
           }
       </script>
       </head>

       <body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D9E9FF" align="center" style="margin-top:8px">
         <tr bgcolor="#E7E7E7">
    <td height="14" colspan="4" background="<%=path %>/images/tbg.gif">用户管理&nbsp;</td>
  </tr>
         <tr align="center" bgcolor="#87BBEF" height="22">
    <td width="33%">帐号</td>
    <td width="33%">权限</td>
    <td width="33%"></td>
  </tr>
         <c:forEach items="${requestScope.adminList}" var="admin">
    <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
             <td bgcolor="#FFFFFF" align="center"> ${admin.userName} </td>
             <td bgcolor="#FFFFFF" align="center"><c:if test="%{admin.role==1}">管理员</c:if>
						<c:if test="%{admin.role==2}">教师</c:if>
                        <c:if test="%{admin.role==3}">学生</c:if></td>
             <!--<td bgcolor="#FFFFFF" align="center">
						${admin.userPw}
					</td>
					-->
             <td bgcolor="#FFFFFF" align="center"><img src="images/remove.png" onClick="adminDel(${admin.userId})" ></td>
           </tr>
  </c:forEach>
       </table>
<table width='98%'  border='0'style="margin-top:8px;margin-left: 5px;">
         <tr>
    <td><input type="button" value="添加" style="width: 80px;" onclick="adminAdd()" /></td>
  </tr>
       </table>
</body>
</html>