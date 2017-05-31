define('site_search.tpl', ['Handlebars','Handlebars.CompilerNameLookup'], function (Handlebars, compilerNameLookup){ var template = Handlebars.template({"compiler":[6,">= 2.0.0-beta.1"],"main":function(depth0,helpers,partials,data) {
  var helperMissing=helpers.helperMissing, escapeExpression=this.escapeExpression;
  return " <div class=\"site-search\" data-type=\"site-search\"><div class=\"site-search-content\"><form class=\"site-search-content-form\" method=\"GET\" action=\"/search\" data-action=\"search\"><div class=\"site-search-content-input\"><div data-view=\"ItemsSeacher\"></div><i class=\"site-search-input-icon\"></i><a class=\"site-search-input-reset\" data-type=\"search-reset\"><i class=\"site-search-input-reset-icon\"></i></a></div><button class=\"site-search-button-submit\" type=\"submit\">"
    + escapeExpression(((compilerNameLookup(helpers,"translate") || (depth0 && compilerNameLookup(depth0,"translate")) || helperMissing).call(depth0, "Go", {"name":"translate","hash":{},"data":data})))
    + "</button><a href=\"#\" class=\"site-search-button-close\" data-action=\"hide-sitesearch\">"
    + escapeExpression(((compilerNameLookup(helpers,"translate") || (depth0 && compilerNameLookup(depth0,"translate")) || helperMissing).call(depth0, "Close", {"name":"translate","hash":{},"data":data})))
    + "</a></form></div></div>";
},"useData":true}); template.Name = 'site_search'; return template;});