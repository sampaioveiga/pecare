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

});