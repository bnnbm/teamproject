<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>QNA</title>
</head>
<body>
	<div id="heading-breadcrumbs">
		<div class="container">
			<div class="row d-flex align-items-center flex-wrap">
				<div class="col-md-7">
					<h1 class="h2">자주 묻는 질문</h1>
				</div>
				<div class="col-md-5">
					<ul class="breadcrumb d-flex justify-content-end">
						<li class="breadcrumb-item"><a href="index.shop">Home</a></li>
						<li class="breadcrumb-item active">Accordions</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<section class="bar">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<!-- MENUS AND WIDGETS -->
					<div class="panel panel-default sidebar-menu with-icons">
						<div class="panel-heading">
							<h3 class="h4 panel-title">Menu</h3>
						</div>
						<div class="panel-body">
							<ul class="nav nav-pills flex-column text-sm">
								<li class="nav-item"><a href="sell.shop?userid=${sessionScope.loginUser.userid}"
									class="nav-link">판매 등록</a></li>
								<li class="nav-item"><a href="selling.shop?userid=${sessionScope.loginUser.userid}"
									class="nav-link">판매 등록 물품 관리</a></li>
								<li class="nav-item"><a href="takeback.shop?userid=${sessionScope.loginUser.userid}"
									class="nav-link">반품 신청 목록 관리</a></li>
								<li class="nav-item"><a href="state.shop?userid=${sessionScope.loginUser.userid}&year=${sessionScope.loginUser.year}"
									class="nav-link">판매 통계</a></li>
								<li class="nav-item"><a href="qna.shop?userid=${sessionScope.loginUser.userid}"
									class="nav-link active">Q&A 관리</a></li>
								<li class="nav-item"><a href="sellingcomplete.shop?userid=${sessionScope.loginUser.userid}"
									class="nav-link">판매된 목록</a></li>
								<li class="nav-item"><a
									href="takebacked.shop?userid=${sessionScope.loginUser.userid}"
									class="nav-link">반품/취소된 목록</a></li>
							</ul>
						</div>
					</div>
				</div>



            <div class="col-md-9">
              <section>
                <p class="lead">자주 물으시는 질문과 그에 따르는 답변을 작성했습니다. 이곳에 원하시는 답변이 없다면 기타 문의를 통해 연락해주세요.</p>
                <div id="accordion" role="tablist">
                  <div class="card card-primary">
                    <div id="headingOne" role="tab" class="card-header">
                      <h5 class="mb-0 mt-0"><a data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">1. 배송 관련</a></h5>
                    </div>
                    <div id="collapseOne" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion" class="collapse show">
                      <div class="card-body">
                        <p>주문/결제가 완료된 기점으로 상품준비 및 검품/포장 후
 배송처리까지는 2~7일정도 소요됩니다. 
발송 후 오후 7시이후부터 배송안내 문자와 이메일이 발송되며,
이후 주문내역에서 배송조회가 가능합니다.

수령기간은 1~2일정도 소요됩니다.

주문폭주 및 업체측 생산지연으로 인해 배송일이 늦어질경우 따로 연락드리며.
갑작스런 상품 품절시에도 안내드리도록 하겠습니다.

임시품절 상품이나 가방 및 신발과 같은 패션잡화상품은
배송준비기간이 일주일이상 소요될 수 있는 점 양해 부탁드립니다.</p>
                      </div>
                    </div>
                  </div>
                  <div class="card card-primary">
                    <div id="headingTwo" role="tab" class="card-header">
                      <h5 class="mb-0 mt-0"><a data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" class="collapsed">2. 상품 관련</a></h5>
                    </div>
                    <div id="collapseTwo" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion" class="collapse">
                      <div class="card-body">의류의경우에는 옷을 펼쳐놓은 방법/재는 위치/ 각도/ 방향등에따라
실측사이즈 측정시 오차가 발생 할 수 있습니다. 오차범위는 1~2cm정도임으로 이점 유의하시어 신중한 구매부탁드립니다
*만약 상품수령후, 실측사이즈 오차가 3cm이상 차이나신다면 이는
 사이즈 오류일 수 있음으로, 연락주시거나 게시판에 글을 남겨주시면
 확인 후 처리방법을 안내드리도록하겠습니다</div>
                    </div>
                  </div>
                  <div class="card card-primary">
                    <div id="headingThree" role="tab" class="card-header">
                      <h5 class="mb-0 mt-0"><a data-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree" class="collapsed"> 3. 취소/반품</a></h5>
                    </div>
                    <div id="collapseThree" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion" class="collapse">
                      <div class="card-body">취소/반품의 경우 사유를 적으셔서 신청해주시면 검토 후 처리해드리겠습니다.
                      </div>
                    </div>
                  </div>
                  <div class="card card-primary">
                    <div id="headingFour" role="tab" class="card-header">
                      <h5 class="mb-0 mt-0"><a data-toggle="collapse" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive" class="collapsed">  4. 쿠폰/공지사항</a></h5>
                    </div>
                    <div id="collapseFive" role="tabpanel" aria-labelledby="headingFour" data-parent="#accordion" class="collapse">
                      <div class="card-body">
                        <p>쿠폰 번호를 입력하시면 결제시 할인 적용됩니다. 공지사항은 공지사항 게시판을 참고하여 주시기 바랍니다.</p>
                      </div>
                    </div>
                  </div>
                  <div class="card card-primary">
                    <div id="headingFive" role="tab" class="card-header">
                      <h5 class="mb-0 mt-0"><a data-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree" class="collapsed"> 5. 그 외 문의사항</a></h5>
                    </div>
                    <div id="collapseThree" role="tabpanel" aria-labelledby="headingFive" data-parent="#accordion" class="collapse">
                      <div class="card-body">
                        <p>그 외 문의 사항은 아래의 문의처로 연락 부탁드립니다.</p>
                        <ul>
                          <li>call@call.com</li>
                          <li>010-1111-2222</li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
                <p class="text-muted">원하시는 질의응답이 없다면 이쪽으로  <a href="contact.shop">문의</a>해주시면 최선을 다해 도와드리겠습니다.</p>
              </section>
            </div>
				
			</div>
		</div>
	</section>
</body>
</html>