$(document).on("turbolinks:load", function() {
  
  //console.log(gon.patient.tiss_evaluations[0].tiss_evaluation.score);
  //console.log(gon.patient.tiss_evaluations);

  // circles example
  //var data = [ 10, 200 ];
  //d3.select("#d3").append('svg')
  //  .selectAll('circle').data(data)
  //  .enter().append('circle')
  //    .attr("cx", function(d) { return d.score })
  //    .attr("cy", 10)
  //    .attr("r", 10)

  // working example for 'p'
  //var data = gon.patient.tiss_evaluations;
  //d3.select("#d3")
  //  .selectAll("p").data(data)
  //  .enter().append("p")
  //  .text(function(d) { return d.tiss_evaluation.score; });

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