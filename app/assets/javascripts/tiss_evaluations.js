$(document).on("turbolinks:load", function() {
// ie9 compatibility
//$(document).ready(function(){
  // TISS 28 rules 
  $("input#tiss_evaluation_ba_q3_2").click(function() {
    $("input#tiss_evaluation_ba_q4_0").prop('checked',true);
  });
  $("input#tiss_evaluation_ba_q4_3").click(function() {
    $("input#tiss_evaluation_ba_q3_0").prop('checked',true);
  });

  $("input#tiss_evaluation_vs_q1_5").click(function() {
    $("input#tiss_evaluation_vs_q2_0").prop('checked',true);
  });
  $("input#tiss_evaluation_vs_q2_2").click(function() {
    $("input#tiss_evaluation_vs_q1_0").prop('checked',true);
  });

  $("input#tiss_evaluation_cs_q1_3").click(function() {
    $("input#tiss_evaluation_cs_q2_0").prop('checked',true);
  });
  $("input#tiss_evaluation_cs_q2_4").click(function() {
    $("input#tiss_evaluation_cs_q1_0").prop('checked',true);
  });

  $("input#tiss_evaluation_si_q1_3").click(function() {
    $("input#tiss_evaluation_si_q2_0").prop('checked',true);
  });
  $("input#tiss_evaluation_si_q2_5").click(function() {
    $("input#tiss_evaluation_si_q1_0").prop('checked',true);
  });

});