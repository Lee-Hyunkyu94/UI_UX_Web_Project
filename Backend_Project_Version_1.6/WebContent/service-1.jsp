<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%-- import 
<%@ page import="spms.vo.Pat" %>
<%@ page import="java.util.ArrayList" %>	
	--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Parallo - Services</title>

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,600" />
<link rel="stylesheet" href="etc/css/all.min.css" />
<link rel="stylesheet" href="etc/css/bootstrap.min.css" />
<link rel="stylesheet" href="etc/css/templatemo-style.css" />
<style>
table {
	display: flex;
	display: -webkit-box;
	display: -ms-flexbox;
	overflow-x: auto;
	overflow-y: hidden;
	background-color: white;
	color: gray;
	board: 1px solid;
}

tbody {
	display: flex
}

th, td {
	display: block
}
</style>
</head>
<body id="servicesPage">
	<div class="parallax-window" data-parallax="scroll"
		data-image-src="etc/img/bg-06.jpg">
		<div class="container-fluid">
			<div class="row tm-brand-row">
				<div class="col-lg-4 col-11">
					<div class="tm-brand-container tm-bg-white-transparent">
						<img src="etc/img/logo_0.png" alt="App on Mobile mockup" />
						<div class="tm-brand-texts">
							<h1 class="text-uppercase tm-brand-name">D-Shelter</h1>
							<p class="small">Give new life to puppies!!</p>
						</div>
					</div>
				</div>
				<div class="col-lg-8 col-1">
					<div class="tm-nav">
						<nav
							class="navbar navbar-expand-lg navbar-light tm-bg-white-transparent tm-navbar">
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#navbarNav"
								aria-controls="navbarNav" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
							<div class="collapse navbar-collapse" id="navbarNav">
								<ul class="navbar-nav">
									<li class="nav-item">
										<div class="tm-nav-link-highlight"></div> <a class="nav-link"
										href="index.jsp">Home</a>
									</li>
									<li class="nav-item">
										<div class="tm-nav-link-highlight"></div> <a class="nav-link"
										href="about.jsp">About</a>
									</li>
									<li class="nav-item green-highlight active">
										<div class="tm-nav-link-highlight"></div> <a
										class="nav-link dropdown-toggle js-scroll-trigger"
										data-toggle="dropdown" href="./services.jsp">Adoption</a>
										<ul class="dropdown-menu">
											<li class="dropdown-item"><a href="./services.jsp"><p
														style="color: grey;">센터내 동물</p></a></li>
											<li class="dropdown-item"><a href="./services2.jsp"><p
														style="color: grey;">입양된 동물</p></a></li>
										</ul>
									</li>
									<li class="nav-item">
										<div class="tm-nav-link-highlight"></div> <a class="nav-link"
										href="testimonials.jsp">Board</a>
									</li>
									<li class="nav-item">
										<div class="tm-nav-link-highlight"></div> <a class="nav-link"
										href="contact.jsp">Direction</a>
									</li>
								</ul>
							</div>
						</nav>
					</div>
				</div>
			</div>

			<!-- Services header -->
			<section class="row" id="tmServices">
				<div class="card col-lg-6 col-md-6 col-sm-6 mb-6">
					<a href="#"><img class="card-img-top" src="etc/img/bg-01.jpg" alt=""></a>
				</div>
				<div class="card col-lg-6 col-md-6 col-sm-6 mb-6">
					<table class="table">
						<thead>
							<tr>
							<tr>
							<%-- 
							<% 
								ArrayList<Pat> pats = (ArrayList<Pat>)request.getAttribute("pats");
							for(Pat pat : pats){
								
							
							%>
								<th>고유번호 : <%=pat.getId() %></th>
								<th>이름  :  <%=pat.getName() %></th>
								<th>견종 : <%=pat.getDog_breed() %></th>
								<th>성별 : <%=pat.getGender() %></th>
								<th>나이 : <%=pat.getAge() %></th>
								<th>병이력 : <%=pat.getMedical_history() %></th>
								<th>발견장소: <%=pat.getDiscovery_place() %></th>
							<% } %>
							</tr>
							--%>
							<th>고유번호 : ${pat.id}</th>
								<th>이름  :  ${pat.name}</th>
								<th>견종 : ${pat.dog_breed}</th>
								<th>성별 : ${pat.gender}</th>
								<th>나이 : ${pat.age}</th>
								<th>병이력 : ${pat.medical_history}</th>
								<th>발견장소: ${pat.discovery_place}</th>
							</tr>
						</thead>
					</table>
				</div>
			</section>

			<!-- Page footer -->
			<footer class="row">
				<p class="col-12 text-white text-center tm-copyright-text">
					Copyright &copy; 2021 BitComputer JAVA #203. Designed by <a
						href="#" class="tm-copyright-link">Team 3</a>
				</p>
			</footer>
		</div>
		<!-- .container-fluid -->
	</div>

	<script src="etc/js/jquery.min.js"></script>
	<script src="etc/js/parallax.min.js"></script>
	<script src="etc/js/bootstrap.min.js"></script>
	<script>
		$(function() {
			$('.tabgroup > div').hide();
			$('.tabgroup > div:first-of-type').show();
			$('.tabs a')
					.click(
							function(e) {
								e.preventDefault();
								var $this = $(this), tabgroup = '#'
										+ $this.parents('.tabs').data(
												'tabgroup'), others = $this
										.closest('li').siblings().children('a'), target = $this
										.attr('href');
								others.removeClass('active');
								$this.addClass('active');
								$(tabgroup).children('div').hide();
								$(target).show();

								// Scroll to tab content (for mobile)
								if ($(window).width() < 992) {
									$('jsp, body').animate(
											{
												scrollTop : $(
														"#first-tab-group")
														.offset().top
											}, 200);
								}
							})
		});
	</script>
</body>
</html>
