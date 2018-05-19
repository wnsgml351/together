<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>


<div class="row">

   <!--총 사용량(한달)-->
   <div class="col-xl-4 col-sm-6 mb-3">
      <div class="card text-white o-hidden h-10 bg-primary">
         <div class="card-head text-center"
            style="margin-top: 10px; padding-bottom: 10px; border-bottom: 1px solid white;">
            <i class="fa fa-bolt"></i> 당월 전력 소비량
         </div>
         <div class="card-body text-center" style="font-size: 24px;">

            <div class="mr-5" id="month">-kWh</div>
         </div>
      </div>
   </div>

   <!--오늘 사용량-->
   <div class="col-xl-4 col-sm-6 mb-3">
      <div class="card text-white o-hidden h-10"
         style="background-color: #6cd3ff">
         <div class="card-head text-center"
            style="margin-top: 10px; padding-bottom: 10px; border-bottom: 1px solid white;">
            <i class="fa fa-bolt"></i> 금일 전력 소비량
         </div>
         <div class="card-body text-center" style="font-size: 24px;">

            <div class="mr-5" id="day">-kWh</div>
         </div>
      </div>
   </div>

   <!--누진단계(한달)-->
   <div class="col-xl-4 col-sm-6 mb-3">
      <div class="card text-white o-hidden h-10"
         style="background-color: #9acb31">
         <div class="card-head text-center"
            style="margin-top: 10px; padding-bottom: 10px; border-bottom: 1px solid white;">
            <i class="fa fa-bolt"></i> 누진단계
         </div>

         <div class="card-body text-center" style="font-size: 24px;">

            <div class="mr-5" id="stack">-단계</div>

         </div>

      </div>
   </div>
</div>