$(document).ready(()=>{
  $("form#formLogin").validetta({ //formEdit con PHP
    realTime: true,
    display: 'inline',
    errorTemplateClass: 'validetta-inline',
  });
});
