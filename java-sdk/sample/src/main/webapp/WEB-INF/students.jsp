<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SLC Grouper</title>
</head>
<body style='padding:0px; margin:0px; font-family:Tahoma; font-size:14px; font-weight:bold;'>
<table width='100%' style='background-color:#000000;'>
	<tr>
		<td width='10px'>&nbsp;</td>
		<td>
			<img src='https://portal.sandbox.slcedu.org/sli-new-theme/images/custom/sli_logo_icn.png'>
			<span style='color:white; font-family:Georgia; font-size:110%'>SLC Grouper</span>
		</td>
	</tr>
</table>
<br>
<table cellpadding=5>
	<tr>
		<td>
			&nbsp;&nbsp;&nbsp;&nbsp;<img style='-moz-border-radius:6px; -webkit-border-radius:6px;' src='http://jennydmartin.starrup.com/photos/387/large/Bizglasses.jpg?1245692882' height=100>
		<td>
		<td valign=top>
			<c:forEach var="teacher" items="${tenantMap}">			
				${teacher.key}<br>
				5th Grade Math<br>
				28 Students											
			</c:forEach>
		</td>
		<td valign='bottom'>
			<span style='font-size:200%'>Unit 1.5 Fractions - Interim Assessment</span>
		</td>				
	</tr>
</table>
<br>
<table>
	<tr>
		<td>&nbsp;&nbsp;&nbsp;</td>
		<td valign=top>
			<br><br><br>
			Grade Thresholds<br>
			<img src='http://localhost:8080/sample/legend.png'>
		</td>
		<td>
			<table border="0" style="text-align: center; border-color=#DDDDDD;" cellpadding="5px" cellspacing='15px'>
				<tr>
					<th>Add Fractions</th>
					<th>Subtract Fractions</th>
					<th>Multiply Fractions</th>
					<th>Divide Fractions</th>
				</tr>
				<c:forEach var="student" items="${grades}" varStatus="status">
				<c:if test="${status.count-1%4==0}"><tr></c:if>
				
				<c:if test="${95-status.count>85}">
					<td style="width: 200px; background-color:#b4dd92; border-radius:3px;">
				</c:if>
				<c:if test="${95-status.count>70 && 95-status.count<=85}">
					<td style="width: 200px; background-color:#fff24a; border-radius:3px;">
				</c:if>
				<c:if test="${95-status.count<=70}">
					<td style="width: 200px; background-color:#de5c41; border-radius:3px;">
				</c:if>
					${student.key} ${95-status.count}
				</td>
				<c:if test="${status.count%4==0}"></tr></c:if>
				</c:forEach>				
			</table>
		</td>
	</tr>
		<tr>
		<td></td><td></td>
		<td>
			<br><br><br>
			<span style='font-size:150%; padding-bottom:5px;'>Collaborative Reteach + Extension</span>&nbsp;&nbsp;
			<a href='https://www.google.com/search?q=add+fractions+worksheet&hl=en&prmd=imvnsa&tbm=isch&tbo=u&source=univ&sa=X&ei=axSEUOrHENDWigK1uIC4Aw&sqi=2&ved=0CCwQsAQ&biw=1366&bih=677' target='_blank'>Find Resources...</a>
			<br><br>
			<table border=1 style='border-width:2px; border-color:black; border-radius:3px;' cellspacing=15 cellpadding=5>
				<tr>
					<td style='background-color:#b4dd92; border-radius:3px; border-style:none; width:200px; text-align:center;'>
						${students[0]} 94
					</td>
					<td style='background-color:#b4dd92; border-radius:3px; border-style:none; width:200px; text-align:center;'>
						${students[1]} 93
					</td>
					<td style='background-color:#b4dd92; border-radius:3px; border-style:none; width:200px; text-align:center;'>
						${students[2]} 92
					</td>
					<td style='background-color:#b4dd92; border-radius:3px; border-style:none; width:200px; text-align:center;'>
						${students[3]} 91
					</td>					
				</tr>
				<tr>
					<td style='background-color:#fff24a; border-radius:3px; border-style:none; width:200px; text-align:center;'>
						${students[12]} 83
					</td>
					<td style='background-color:#fff24a; border-radius:3px; border-style:none; width:200px; text-align:center;'>
						${students[13]} 82
					</td>
					<td style='background-color:#fff24a; border-radius:3px; border-style:none; width:200px; text-align:center;'>
						${students[14]} 81
					</td>
					<td style='background-color:#fff24a; border-radius:3px; border-style:none; width:200px; text-align:center;'>
						${students[15]} 80
					</td>					
				</tr>
			</table>
			
			<br><br><br>
			
			<span style='font-size:150%;'>Teacher Re-teach</span>&nbsp;&nbsp;
			<br><br>
			Add/Subtract Fractions &nbsp;&nbsp;<a href='https://www.google.com/search?q=add+fractions+worksheet&hl=en&prmd=imvnsa&tbm=isch&tbo=u&source=univ&sa=X&ei=axSEUOrHENDWigK1uIC4Aw&sqi=2&ved=0CCwQsAQ&biw=1366&bih=677' target='_blank'>Find Resources...</a>
			<table border=1 style='border-width:2px; border-color:black; border-radius:3px;' cellspacing=15 cellpadding=5>
				<tr>
					<td style='background-color:#de5c41; border-radius:3px; border-style:none; width:200px; text-align:center;'>
						${students[26]} 68
					</td>
					<td style='background-color:#de5c41; border-radius:3px; border-style:none; width:200px; text-align:center;'>
						${students[27]} 67
					</td>					
				</tr>
			</table>
			<br><br>
			Multiple/Divide Fractions &nbsp;&nbsp;<a href='https://www.google.com/search?q=add+fractions+worksheet&hl=en&prmd=imvnsa&tbm=isch&tbo=u&source=univ&sa=X&ei=axSEUOrHENDWigK1uIC4Aw&sqi=2&ved=0CCwQsAQ&biw=1366&bih=677' target='_blank'>Find Resources...</a>
			<table border=1 style='border-width:2px; border-color:black; border-radius:3px;' cellspacing=15 cellpadding=5>
				<tr>
					<td style='background-color:#de5c41; border-radius:3px; border-style:none; width:200px; text-align:center;'>
						${students[24]} 70
					</td>
					<td style='background-color:#de5c41; border-radius:3px; border-style:none; width:200px; text-align:center;'>
						${students[25]} 69
					</td>
					<td style='background-color:#de5c41; border-radius:3px; border-style:none; width:200px; text-align:center;'>
						${students[26]} 68
					</td>
					<td style='background-color:#de5c41; border-radius:3px; border-style:none; width:200px; text-align:center;'>
						${students[27]} 67
					</td>					
				</tr>
			</table>
			
		</td>
	</tr>
</table>
<br><br><br>
</body>
</html>