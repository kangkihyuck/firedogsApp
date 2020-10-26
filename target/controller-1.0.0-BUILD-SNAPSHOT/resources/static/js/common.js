function init(){
	var headerH = $('header').height();
	//headerFixed
	function headerFixed(){
		$('#container').css('margin-top',headerH);
	}
	headerFixed();
}

//tab
function contentsTab(){
	var tabWrap = $('#ctab');
	var tabList = tabWrap.find('.tabs > li');
	var tabCont = tabWrap.find('.panels > .tabCon');
	
	tabList.click(function(e){
		e.preventdefault;
		var activeTab = $(this).index();
		$(this).addClass('current').siblings().removeClass('current');
		tabCont.eq(activeTab).addClass('current').siblings().removeClass('current');
	});
}
$.fn.scrollFixed = function(opt){
	$(this).each(function(){
		var target = $(this);
		setTimeout(function(){
			var header = $('header').height(); //129
			var menu =  ($('.m-category').parent().is('.scroll-hide'))? 0 : $('.m-category').height(); //224
			var notice = ($('.notice').parent().is('.scroll-hide'))? 0 : $('.notice').outerHeight() //59
			var tab = $('#ctab').children().eq(0).height(); //54 + 9.6
			var space = parseInt($('#ctab').css('margin-top'));
			var footer = $('#cs-num').outerHeight()//72
			var spaceTop = parseInt($('.quick-menu').css('margin-bottom')) - 1;

			if(menu){
				menu = menu + (space*3)
			}
			target.height($('body').height() - header - menu - notice - tab - footer - spaceTop);
		},100);
	});
}

$(document).ready(function(){
	init();
	contentsTab();
	$('#ctab .panels').scrollFixed()
});
$(window).resize(function(){
	init();
	$('#ctab .panels').scrollFixed()
});

$(document).on('click', 'a[href="#"]', function(e){
	e.preventDefault();
});


