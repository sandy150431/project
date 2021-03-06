<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dao.*, model.*, java.sql.*, java.util.*"%>

<!DOCTYPE html>
<html lang="zh-Hant">

<%@ include file="/WEB-INF/views/template/head.file"%>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
	<div id="wrapper">
		<%@ include file="/WEB-INF/views/template/navbar_admin.file"%>


		<!-- Section: team -->
		<section id="doctor" class="home-section bg-gray paddingbot-60">
			<div class="container marginbot-50">


				<!-- 表格 -->
				<div class="container">

					<div
						class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
						<div class="panel panel-info" style="border-color: white;">

							<!-- 標題 -->
							<div class="contentTitle" id="contentTitle"  style="font-family: Microsoft JhengHei;">修改例假日</div>

							<!-- 內容 -->
							<div class="panel-body">
								<form action="HoliController">

									<div class="form-group required fontChinese">
										<label for="empNo"
											class="control-label col-md-4  requiredField" style="font-family: Microsoft JhengHei; width:100px;">假日日期</label>
										<div class="controls col-md-8 ">
											<input id="empNo" type="text" name="holiday" readonly
												class="input-md  textinput textInput form-control"
												style="margin-bottom: 10px" type="text" required value=${holi.holiday } />
										</div>
									</div>

									<div class="form-group required fontChinese">
										<label for="empName"
											class="control-label col-md-4  requiredField"  style="font-family: Microsoft JhengHei; width:100px;">假日原因</label>
										<div class="controls col-md-8 ">
											<input id="empName" name="holiReason" 
												maxlength="20"
												class="input-md  textinput textInput form-control"
												style="margin-bottom: 10px" type="text" required value=${holi.holiReason } />
										</div>
									</div>

									<div class="form-group required fontChinese">
										<label for="twid"
											class="control-label col-md-4  requiredField"  style="font-family: Microsoft JhengHei; width:100px;">假日時數</label>
										<div class="controls col-md-8 ">
											<input id="twid" name="hrs" maxlength="2"
												class="input-md  textinput textInput form-control"
												style="margin-bottom: 10px" type="text" 
												placeholder="請輸入1~8整數時數" required value=${holi.hrs } />
										</div>
									</div>


									<div class="section-heading text-center">
										<div style="margin-top: 30px;" class="col-lg-12">
											<!-- name指動作；value指要做什麼動作 -->
											<input type="submit" name="action" value="修改例假日" class="btn btn-skin btn-lg"  style="font-family: Microsoft JhengHei;">
											<input type="submit" name="action" value="刪除例假日" class="btn btn-skin btn-lg"  style="font-family: Microsoft JhengHei;">

											<!-- button純粹轉址 -->
											<input type ="button" onclick="javascript:location.href='adminFindHoliday.jsp'" value="重新查詢" class="btn btn-skin btn-lg"  style="font-family: Microsoft JhengHei;">
										</div>
									</div>



								</form>
							</div>
							<!-- 內容結束 -->



						</div>
					</div>
				</div>
				<!-- 表格結束 -->


			</div>
		</section>
		<!-- /Section: team -->


		<%@ include file="/WEB-INF/views/template/footer.file"%>
	</div>

	<!-- Core JavaScript Files -->
	<!-- 功能表換色 -->
	<script type="text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script type="text/javascript">
		$(".active1").addClass("active");
	</script>
	<!--<script src="js/inputAlernt.js"></script>-->


</body>

</html>
