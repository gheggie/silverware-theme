<% if $MetaImageShown %>
  <div class="$MetaImageWrapperClass"<% if $MetaImageWrapperWidth %> style="width: {$MetaImageWrapperWidth}px"<% end_if %>>
    <% if $MetaImageLinked %><a href="$MetaImageLink" title="$MetaTitle" class="$MetaImageLinkClass" data-caption-title="$MetaTitle" data-caption-desc="$MetaImageCaption"><% end_if %>
    <% with $MetaImageResized %>
      <img src="$URL" class="$Up.MetaImageClass" alt="$Title">
    <% end_with %>
    <% if $MetaImageLinked %></a><% end_if %>
    <% if $MetaImageCaption %>
      <p class="$MetaImageCaptionClass">$MetaImageCaption</p>
    <% end_if %>
  </div>
<% end_if %>