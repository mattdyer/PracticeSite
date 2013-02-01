$(function(){
	
	var PageContent = $('#PageContent').html();
	
	$.get('/common/template.htm',function(data){
		$('html').html(data);
		$('#MainContent').html(PageContent);
	});
	
	$('body').on('click',function(e){
		e.preventDefault();
		
		$('#MainContent').load($(this).attr('href') + ' #PageContent');
	});
});