console.log("initialized dashboard");

const DATA_URL = "/shinyapp/lmic_dashboard/data/"

const svg_legend = d3
  .select(".svg-legend-wrapper")
  .append("svg")
  .attr("viewBox", `0 0 900 60`);

renderLegend = function(showOpacity=false){
  svg_legend.selectAll("*").remove();

  svg_legend
    .append("text")
    .attr("x", 220)
    .attr("y", 10)
    .text("median model run")
    .style("font-size", "11px")
    .attr("alignment-baseline","middle");

  svg_legend
    .append("line")
    .attr('class', 'line-path line-med country-legend')
    .attr("x1", 150)
    .attr("x2", 200)
    .attr("y1", 10)
    .attr("y2", 10);

  svg_legend
    .append("text")
    .attr("x", 220)
    .attr("y", 30)
    .text("model run representing lower 95% quantile")
    .style("font-size", "11px")
    .attr("alignment-baseline","middle");

  svg_legend
    .append("line")
    .attr('class', 'line-path line-low country-legend')
    .attr("x1", 150)
    .attr("x2", 200)
    .attr("y1", 30)
    .attr("y2", 30);

  svg_legend
    .append("text")
    .attr("x", 220)
    .attr("y", 50)
    .text("model run representing upper 95% quantile")
    .style("font-size", "11px")
    .attr("alignment-baseline","middle");

  svg_legend
    .append("line")
    .attr('class', 'line-path line-high country-legend')
    .attr("x1", 150)
    .attr("x2", 200)
    .attr("y1", 50)
    .attr("y2", 50);

  if(showOpacity){
    svg_legend
      .append("text")
      .attr("x", 620)
      .attr("y", 10)
      .text("unmitigated")
      .style("font-size", "11px")
      .attr("alignment-baseline","middle");

    svg_legend
      .append("circle")
      .attr("cx",600)
      .attr("cy",10-3)
      .attr("r", 6)
      .style("fill", "#000000")
      .style("opacity", 0.5)

    svg_legend
      .append("text")
      .attr("x", 620)
      .attr("y", 30)
      .text("intervention")
      .style("font-size", "11px")
      .attr("alignment-baseline","middle");

    svg_legend
      .append("circle")
      .attr("cx",600)
      .attr("cy",30-3)
      .attr("r", 6)
      .style("fill", "#000000")
      .style("opacity", 1)
  }
}

const svg = d3
  .select(".svg-wrapper")
  .append("svg")
  .attr("viewBox", `0 0 900 400`);

height = svg.attr("viewBox").split(" ")[3];
width = svg.attr("viewBox").split(" ")[2];

margin = ({top: 20, right: 20, bottom: 80, left: 120});
innerWidth = width - margin.left - margin.right;
innerHeight = height - margin.top - margin.bottom;

var global_mouseval;
/*jQuery(".unmitigated").mousemove(function(e){
  var left = e.pageX - jQuery(this).offset().left;
  var top = e.pageY - jQuery(this).offset().top;
  console.log(left, top);
  //jQuery(".graph_tooltip").css({top: top, left: left}).show();
});
*/
const render = function(data, outcome_nicename, intervention, intervention_data){

  svg.selectAll("*").remove();
  //svg.selectAll(".tick").remove();
  //svg.selectAll(".no_data").remove();

  const xValue = function(d){
    return d.t / (365/12);
  }

  const yValueLow = function(d){
    return d.lo_lo;
  }

  const yValueMed = function(d){
    return d.med;
  }

  const yValueHigh = function(d){
    return d.hi_hi;
  }

  const xAxisLabel = "Months since virus introduction";
  const yAxisLabel = outcome_nicename;

  var ymin = 0; var ymax = 0; var xmin = 0; var xmax = 0;
  for(country in data){
    x = d3.extent(data[country], xValue);
    y = d3.extent(data[country], yValueHigh);
    if(x[0] < xmin){ xmin = x[0]; }
    if(x[1] > xmax){ xmax = x[1]; }
    if(y[0] < ymin){ ymin = y[0]; }
    if(y[1] > ymax){ ymax = y[1]; }
  }

  const xScale = d3.scaleLinear()
    .domain([xmin, xmax])
    .range([0, innerWidth]);
  xScale_global = xScale;

  const yScale = d3.scaleLinear()
    .domain([ymin, ymax])
    .range([innerHeight, 0])
    .nice();
  yScale_global = yScale;

  const g = svg.append('g')
    .attr('transform', `translate(${margin.left},${margin.top})`);

  const xAxis = d3.axisBottom(xScale)
    .tickSize(-innerHeight)
    .tickPadding(5);
    //.tickValues([0, 30, 60, 90, 120, 150, 180, 210, 240, 270, 300, 330, 360]);

  const yAxis = d3.axisLeft(yScale)
    .tickSize(-innerWidth)
    .tickPadding(10);

  const yAxisG = g.append('g').call(yAxis);
  yAxisG.selectAll('.domain').remove();

  yAxisG.append('text')
      .attr('class', 'axis-label')
      .attr('y', -80)
      .attr('x', -innerHeight / 2)
      .attr('fill', 'black')
      .attr('transform', `rotate(-90)`)
      .attr('text-anchor', 'middle')
      .text(yAxisLabel);

  const xAxisG = g.append('g').call(xAxis)
    .attr('transform', `translate(0,${innerHeight})`);
  xAxisG.selectAll('.domain').remove();

  xAxisG.append('text')
      .attr('class', 'axis-label')
      .attr('y', 50)
      .attr('x', innerWidth / 2)
      .attr('fill', 'black')
      .text(xAxisLabel);

  const lineGeneratorHigh = d3.line()
    .x(d => xScale(xValue(d)))
    .y(d => yScale(yValueHigh(d)))
    .curve(d3.curveBasis);

  const lineGeneratorLow = d3.line()
    .x(d => xScale(xValue(d)))
    .y(d => yScale(yValueLow(d)))
    .curve(d3.curveBasis);

  const lineGeneratorMed = d3.line()
    .x(d => xScale(xValue(d)))
    .y(d => yScale(yValueMed(d)))
    .curve(d3.curveBasis);

  if(intervention != 1){
    unmitigated_class = "unmitigated";
  } else {
    unmitigated_class = "";
  }

  for(country in data){
    country_wrapper = g.append('g').attr('class', 'wrapper country-'+ country)

    country_wrapper.append('path')
        .attr('class', 'line-path line-high country-'+ country+' '+unmitigated_class)
        .attr('d', lineGeneratorHigh(data[country]));

    country_wrapper.append('path')
        .attr('class', 'line-path line-med country-'+ country+' '+unmitigated_class)
        .attr('d', lineGeneratorMed(data[country]));

    country_wrapper.append('path')
        .attr('class', 'line-path line-low country-'+ country+' '+unmitigated_class)
        .attr('d', lineGeneratorLow(data[country]));

    if(intervention != 1){
      country_wrapper.append('path')
          .attr('class', 'line-path line-high country-'+ country)
          .attr('d', lineGeneratorHigh(intervention_data[country]));

      country_wrapper.append('path')
          .attr('class', 'line-path line-med country-'+ country)
          .attr('d', lineGeneratorMed(intervention_data[country]));

      country_wrapper.append('path')
          .attr('class', 'line-path line-low country-'+ country)
          .attr('d', lineGeneratorLow(intervention_data[country]));
    }
  }

  /*g.on('mousemove', function(){
    const x = d3.mouse(g.node())[0];
    const y = d3.mouse(g.node())[1];
    const hoveredTime = xScale.invert(x);
    const hoveredValue = yScale.invert(y);

    jQuery(".graph_tooltip").css({
      "top": y + margin.top - 10,
      "left": x + margin.left + 10
    }).html("country "+ country + ", low, " + Math.round(hoveredTime) + ", "+ Math.round(hoveredValue/100)*100);
  });*/

};

function callRenderer(all_data, outcome, outcome_nicename, ageSelected, intervention){

  var intervention_data = {};
  for(key in all_data){
    intervention_data[key] = all_data[key].filter(d => (d.age == ageSelected && d.compartment == outcome && d.scen_id == intervention));
    all_data[key] = all_data[key].filter(d => (d.age == ageSelected && d.compartment == outcome && d.scen_id == 1));
  }

  renderLegend(intervention>1);
  render(all_data, outcome_nicename, intervention, intervention_data);
}

var countryData = [];
function toggleData(){

  svg.selectAll("*").remove();
  svg.append('text')
    .attr('x', width / 2)
    .attr('class', "no_data")
    .attr('y', innerHeight/2)
    .text("Please select data...");

  var countries = [];
  var countryDataSelected = {};
  var outcomeSelected = jQuery("select.outcome_select").children("option:selected").val();
  var outcomeSelectedNicename = jQuery("select.outcome_select").children("option:selected").text();
  var ageSelected = jQuery("select.age_select").children("option:selected").val();
  var interventionSelected = jQuery("select.intervention_select").children("option:selected").val();

  jQuery.each(jQuery(".country_select input[type='checkbox']:checked"), function(){
    countries.push(jQuery(this).attr("id"));
  });

  jQuery.each(countries, function( index, value ){
    //only load data once
    if(!countryData.hasOwnProperty(value)){
      jQuery.getJSON(DATA_URL + value + ".json", function(data){
        countryData[value] = data;
        countryDataSelected[value] = data;
        callRenderer(countryDataSelected, outcomeSelected, outcomeSelectedNicename, ageSelected, interventionSelected);
      });
    } else {
      countryDataSelected[value] = countryData[value];
      callRenderer(countryDataSelected, outcomeSelected, outcomeSelectedNicename, ageSelected, interventionSelected);
    }
  });
}

d3.json(DATA_URL + "countries.json").then(function(available_countries) {
  d3.select(".country_select")
  .attr("onClick", function(d) {
    return "toggleData()";
  })
  .selectAll("input")
  .data(available_countries)
  .enter()
  .append("label")
    .attr("for", function(d){
      return d.iso3;
    })
    .text(function(d){
      return d.name;
    })
  .append("input")
    .attr("type", "checkbox")
    .attr("checked", function(d) {
      if(d.initial){
        toggleData(d.iso3);
        return "checked";
      }
    })
    .attr("id", function(d){
      return(d.iso3);
    })

  toggleData();
});

d3.json(DATA_URL + "outcomes.json").then(function(available_outcomes) {
  d3.select("select.outcome_select")
  .attr("onClick", function(d) {
    return "toggleData()";
  })
  .selectAll("option")
  .data(available_outcomes)
  .enter()
  .append("option")
    .attr("value", function(d){
      return d.key;
    })
    .text(function(d){
      return d.name;
    })

    toggleData();
});

d3.json(DATA_URL + "agegroups.json").then(function(available_ages) {
  d3.select("select.age_select")
  .attr("onClick", function(d) {
    return "toggleData()";
  })
  .selectAll("option")
  .data(available_ages)
  .enter()
  .append("option")
    .attr("value", function(d){
      return d.key;
    })
    .text(function(d){
      return d.name;
    })

    toggleData();
});

d3.json(DATA_URL + "interventions.json").then(function(available_ages) {
  d3.select("select.intervention_select")
  .attr("onClick", function(d) {
    return "toggleData()";
  })
  .selectAll("option")
  .data(available_ages)
  .enter()
  .append("option")
    .attr("value", function(d){
      return d.key;
    })
    .text(function(d){
      return d.name;
    })

    toggleData();
});
