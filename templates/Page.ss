<!DOCTYPE html>

<html class="no-js" lang="$ContentLocale">
  <head{$OGPrefix}>
    <% base_tag %>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    $MetaTags(false)<title>$Title &ndash; $SiteConfig.Title</title>
    <% with $SiteConfig %>
      <% if $FavIconURL %>
        <link rel="icon" type="$FavIconType" href="$FavIconURL">
      <% end_if %>
      <% if $SiteIconTouchExists %>
        <link rel="apple-touch-icon" sizes="57x57" href="$SiteIconTouchResized(57,57).URL">
        <link rel="apple-touch-icon" sizes="72x72" href="$SiteIconTouchResized(72,72).URL">
        <link rel="apple-touch-icon" sizes="114x114" href="$SiteIconTouchResized(114,114).URL">
        <link rel="apple-touch-icon" sizes="144x144" href="$SiteIconTouchResized(144,144).URL">
      <% end_if %>
    <% end_with %>
  </head>
  <body<% if $PageTemplate %> $PageTemplate.AttributesHTML<% end_if %>>
    <% if $PageTemplate %>
      <% with $PageTemplate %>
        <% loop $Sections %>
          $Render($Layout, $Top.Title)
        <% end_loop %>
      <% end_with %>
    <% else %>
      <% include Error_NotFound Type='Template', Layout=$Layout %>
    <% end_if %>
  </body>
</html>