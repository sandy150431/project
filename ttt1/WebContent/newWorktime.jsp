<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.sql.* ,java.io.*,java.util.List, 
	java.text.SimpleDateFormat,dao.*,model.*,day.* "%>
<!DOCTYPE html>
<html lang="zh-Hant">

<%@ include file="/WEB-INF/views/template/head.file"%>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
	<div id="wrapper">
		<%@ include file="/WEB-INF/views/template/navbar_employee.file"%>

		<!-- Section: word -->
		<section id="doctor" class="home-section bg-gray paddingbot-60">
			<div class="container" style="margin-left: 10%;">

				<div class=" container section-heading text-center ">
					<h2 class="h-bold ">新增工時</h2>
					<div class="divider-short"></div>
				</div>

				<!-- 輸入列 -->

				<%
					Today today = new Today();
					java.util.Date dayy = new java.util.Date();
					SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd");
					int week = today.getWeekOfYear(dayy);
				%>

				<form action="NWorktimeServlet" method="post"
					class="contactForm lead">

					<table class="table table-bordered table-hover col-md-12">
						<thead>
							<tr>
								<th class="col-md-2" style="white-space: nowrap;">第<%out.print(week);%>週</th>
								<th style="text-align: center;">一</th>
								<th style="text-align: center;">二</th>
								<th style="text-align: center;">三</th>
								<th style="text-align: center;">四</th>
								<th style="text-align: center;">五</th>
								<th style="text-align: center;">六</th>
								<th style="text-align: center;">日</th>
							</tr>
						</thead>

						<tr>
							<th class="col-md-2" style="white-space: nowrap;">日期</th>
							<th>
								<%
									out.print(sdf.format(today.getMonDayOfWeek(dayy)));
								%>
							</th>
							<th>
								<%
									out.print(sdf.format(today.getTuesDayOfWeek(dayy)));
								%>
							</th>
							<th>
								<%
									out.print(sdf.format(today.getWednesDayOfWeek(dayy)));
								%>
							</th>
							<th>
								<%
									out.print(sdf.format(today.getThursDayOfWeek(dayy)));
								%>
							</th>
							<th>
								<%
									out.print(sdf.format(today.getFriDayOfWeek(dayy)));
								%>
							</th>
							<th>
								<%
									out.print(sdf.format(today.getSaturDayOfWeek(dayy)));
								%>
							</th>
							<th>
								<%
									out.print(sdf.format(today.getSunDayOfWeek(dayy)));
								%>
							</th>
						</tr>
						<tbody>
							<%
								Connection conn = null;
								PreparedStatement pstmt = null;
								ResultSet rs = null;
								String sql = "select Pro_code ,Pro_name from Pro order by Pro_code";
								conn = ConnectionHelper.getConnection();
								pstmt = conn.prepareStatement(sql);
								rs = pstmt.executeQuery();
							%>
							<tr>
								<td style="white-space: nowrap;">執行專案名稱</td>
								<td style="font-size: 17px;"><select id="project"
									name="project1">
										<option selected>請選擇專案</option>
										<%
											while (rs.next()) {
												String pj1 = rs.getString("PRO_CODE");
												String nm1 = rs.getString("PRO_NAME");
										%>
										<option value="<%=pj1%>">
											<%=nm1%>
										</option>
										<%
											}
											conn.commit();
										%>
								</select></td>
								<%
									conn = ConnectionHelper.getConnection();
									pstmt = conn.prepareStatement(sql);
									rs = pstmt.executeQuery();
								%>
								<td style="font-size: 17px;"><select id="project"
									name="project2">
										<option selected>請選擇專案</option>
										<%
											while (rs.next()) {
												String pj2 = rs.getString("PRO_CODE");
												String nm2 = rs.getString("PRO_NAME");
										%>
										<option value="<%=pj2%>"><%=nm2%></option>
										<%
											}
											conn.commit();
										%>
								</select></td>
								<%
									conn = ConnectionHelper.getConnection();
									pstmt = conn.prepareStatement(sql);
									rs = pstmt.executeQuery();
								%>
								<td style="font-size: 17px;"><select id="project"
									name="project3">
										<option selected>請選擇專案</option>
										<%
											while (rs.next()) {
												String pj3 = rs.getString("PRO_CODE");
												String nm3 = rs.getString("PRO_NAME");
										%>
										<option value="<%=pj3%>"><%=nm3%></option>
										<%
											}
											conn.commit();
										%>
								</select></td>
								<%
									conn = ConnectionHelper.getConnection();
									pstmt = conn.prepareStatement(sql);
									rs = pstmt.executeQuery();
								%>
								<td style="font-size: 17px;"><select id="project"
									name="project4">
										<option selected>請選擇專案</option>
										<%
											while (rs.next()) {
												String pj4 = rs.getString("PRO_CODE");
												String nm4 = rs.getString("PRO_NAME");
										%>
										<option value="<%=pj4%>"><%=nm4%></option>
										<%
											}
											conn.commit();
										%>
								</select></td>
								<%
									conn = ConnectionHelper.getConnection();
									pstmt = conn.prepareStatement(sql);
									rs = pstmt.executeQuery();
								%>
								<td style="font-size: 17px;"><select id="project"
									name="project5">
										<option selected>請選擇專案</option>
										<%
											while (rs.next()) {
												String pj5 = rs.getString("PRO_CODE");
												String nm5 = rs.getString("PRO_NAME");
										%>
										<option value="<%=pj5%>"><%=nm5%></option>
										<%
											}
											conn.commit();
										%>
								</select></td>
								<%
									conn = ConnectionHelper.getConnection();
									pstmt = conn.prepareStatement(sql);
									rs = pstmt.executeQuery();
								%>
								<td style="font-size: 17px;"><select id="project"
									name="project6">
										<option selected>請選擇專案</option>
										<%
											while (rs.next()) {
												String pj6 = rs.getString("PRO_CODE");
												String nm6 = rs.getString("PRO_NAME");
										%>
										<option value="<%=pj6%>"><%=nm6%></option>
										<%
											}
											conn.commit();
										%>
								</select></td>
								<%
									conn = ConnectionHelper.getConnection();
									pstmt = conn.prepareStatement(sql);
									rs = pstmt.executeQuery();
								%>
								<td style="font-size: 17px;"><select id="project"
									name="project7">
										<option selected>請選擇專案</option>
										<%
											while (rs.next()) {
												String pj7 = rs.getString("PRO_CODE");
												String nm7 = rs.getString("PRO_NAME");
										%>
										<option value="<%=pj7%>"><%=nm7%></option>
										<%
											}
											conn.commit();
										%>

								</select></td>

								<%
									rs.close();
									pstmt.close();
									conn.close();
								%>
							
							<tr>
								<td style="white-space: nowrap;">普通工時</td>
								<td><input id="workhour" name="wt1" maxlength="1"
									class="  col-md-4 form-control" type="number" min="0" max="8"
									required /></td>
								<td><input id="workhour" name="wt2" maxlength="1"
									class="  col-md-4 form-control" type="number" min="0" max="8"
									required /></td>
								<td><input id="workhour" name="wt3" maxlength="1"
									class="  col-md-4 form-control" type="number" min="0" max="8"
									required /></td>
								<td><input id="workhour" name="wt4" maxlength="1"
									class="  col-md-4 form-control" type="number" min="0" max="8"
									required /></td>
								<td><input id="workhour" name="wt5" maxlength="1"
									class="  col-md-4 form-control" type="number" min="0" max="8"
									required /></td>
								<td></td>
								<td></td>


							</tr>
							<tr>
								<td style="height: 100px; white-space: nowrap;">工作內容</td>
								<td><textarea rows="3" name="ct1"
										class="  col-md-4 form-control" required></textarea></td>
								<td><textarea rows="3" name="ct2"
										class="  col-md-4 form-control" required></textarea></td>
								<td><textarea rows="3" name="ct3"
										class="  col-md-4 form-control" required></textarea></td>
								<td><textarea rows="3" name="ct4"
										class="  col-md-4 form-control" required></textarea></td>
								<td><textarea rows="3" name="ct5"
										class="  col-md-4 form-control" required></textarea></td>
								<td>週六日為加班</td>
								<td>週六日為加班</td>
							</tr>
							<tr>
								<td style="white-space: nowrap;">加班工時</td>
								<td><input id="workhour" name="ot1" maxlength="1"
									class="  col-md-4 form-control" type="number" min="0" max="3" /></td>
								<td><input id="workhour" name="ot2" maxlength="1"
									class="  col-md-4 form-control" type="number" min="0" max="3" /></td>
								<td><input id="workhour" name="ot3" maxlength="1"
									class="  col-md-4 form-control" type="number" min="0" max="3" /></td>
								<td><input id="workhour" name="ot4" maxlength="1"
									class="  col-md-4 form-control" type="number" min="0" max="3" /></td>
								<td><input id="workhour" name="ot5" maxlength="1"
									class="  col-md-4 form-control" type="number" min="0" max="3" /></td>
								<td><input id="workhour" name="ot6" maxlength="1"
									class="  col-md-4 form-control" type="number" min="0" max="3" /></td>
								<td><input id="workhour" name="ot7" maxlength="1"
									class="  col-md-4 form-control" type="number" min="0" max="3" /></td>
							</tr>
							<tr>
								<td style="height: 100px; white-space: nowrap;">工作內容</td>
								<td><textarea rows="3" name="otc1"
										class="  col-md-4 form-control"></textarea></td>
								<td><textarea rows="3" name="otc2"
										class="  col-md-4 form-control"></textarea></td>
								<td><textarea rows="3" name="otc3"
										class="  col-md-4 form-control"></textarea></td>
								<td><textarea rows="3" name="otc4"
										class="  col-md-4 form-control"></textarea></td>
								<td><textarea rows="3" name="otc5"
										class="  col-md-4 form-control"></textarea></td>
								<td><textarea rows="3" name="otc6"
										class="  col-md-4 form-control"></textarea></td>
								<td><textarea rows="3" name="otc7"
										class="  col-md-4 form-control"></textarea></td>
							</tr>
						</tbody>
					</table>

					<!-- 輸入列結束 -->


					<div class="section-heading text-center">
						<input type="submit" name="action" value="新增"
							class="btn btn-skin btn-lg" style="font-family: Microsoft JhengHei;"> <input type="submit"
							name="action" value="儲存" class="btn btn-skin btn-lg" style="font-family: Microsoft JhengHei;">

					</div>
			</div>


		</section>
		</form>
	</div>
	<!-- /Section: word -->

	<%@ include file="/WEB-INF/views/template/footer.file"%>


	<!-- Core JavaScript Files -->
	<!-- 功能表換色 -->
	<script type="text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script type="text/javascript">
		$(".active1").addClass("active");
	</script>
	<%@ include file="/WEB-INF/views/template/jsFile.file"%>

</body>

</html>
