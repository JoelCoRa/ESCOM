$(document).ready(()=>{
  $("form#formLogin").validetta({
    realTime: true,
    display: 'inline',
    errorTemplateClass: 'validetta-inline',
  });
});