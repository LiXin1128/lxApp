$(document).on('turbolinks:load', function (){
  console.log($(".alert"));
  $(".alert").delay(1000).fadeOut("slow");
  console.log($(".notice"));
  $(".notice").delay(1000).fadeOut("slow");
});


$(document).on('turbolinks:load', function(){
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
    $('.rated').raty({ path: '/assets',
      readOnly: true,
      score: function() {
        return $(this).attr('data-score');
      }
    });
});