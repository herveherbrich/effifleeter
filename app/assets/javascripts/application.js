// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require moment 
//= require fullcalendar
//= require turbolinks
//= require_tree .

$(document).ready(function(){
	// inicio calendario
	var mipath = window.location.pathname + '/new';
	$('#calendar').fullCalendar({
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay'
		},
		selectable: true,
		selectHelper: true,
		editable: true,
		eventLimit: true,

		select: function(start, end) {
			$.getScript(mipath, function() {
				$('#event_date_range').val(moment(start).format("MM/DD/YYYY HH:mm") + ' - ' + moment(end).format("MM/DD/YYYY HH:mm"));
				$('.start_hidden').val(moment(start).format("MM/DD/YYYY HH:mm"));
				$('.end_hidden').val(moment(end).format("MM/DD/YYYY HH:mm"));
			});
			// this.fullCalendar('unselect');
		},
		events: gon.events
	})

	// negrita en el mes de la agenda
	$('.fc-center h2').addClass('title-sections')
});

// var initialize_calendar;
// initialize_calendar = function() {
// 	$('.calendar').each(function() {
// 		var calendar = $(this);
// 		calendar.fullCalendar({})
// 	})
// }