$(document).ready(function () {
    
    $('.article-introtext-container').each(function () {
        var myP = $('.introtext-text');
        myP.text(myP.text().substring(0, 200));
        myP.append("... <span class='read-more'>Read more</span>");
    });
    
});

