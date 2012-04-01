var App = function(){
	var rawTime = parseInt($('#timer').data('counter'));
	var days, hours, mins, sec;
	
	var calc = function(time){
		days    = parseInt(time  / 86400),
	  hours   = parseInt((time / 3600  ) - (days * 24)),
	  mins  	= parseInt((time / 60 ) - (days * 1440) - (hours * 60)),
	  sec  		= parseInt(time  % 60)		
	}
	
	var ui = function(){
		$('#day').html(days);
		$('#hour').html(hours);
		$('#min').html(mins);
		$('#sec').html(sec);
	}
	
	this.clock = function(){
		calc(rawTime--);
		ui();
	}
}
	
	
jQuery(function(){
	app = new App();
	self.clsInterval = self.setInterval('app.clock()',1000);
});
