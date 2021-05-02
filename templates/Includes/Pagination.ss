<% if $List.MoreThanOnePage %>
  <div class="pagination">
    <ul>
      <% if $List.NotFirstPage %>
        <li class="page prev">
          <a href="$List.PrevLink" title="<% _t('Pagination_ss.PREVIOUSPAGE', 'Previous Page') %>">
            <i class="fa fa-arrow-left"></i><span><% _t('Pagination_ss.PREVIOUS', 'Previous') %></span>
          </a>
        </li>
      <% end_if %>
      <% loop $List.PaginationSummary(5) %>
        <% if $CurrentBool %>
          <li class="page current" title="<% _t('Pagination_ss.CURRENTPAGE', 'Current Page') %>">
            <span>$PageNum</span>
          </li>
        <% else %>
          <% if $Link %>
            <li class="page number">
              <a href="$Link" title="<% _t('Pagination_ss.GOTOPAGE', 'Go to Page') %> $PageNum">
                <span>$PageNum</span>
              </a>
            </li>
          <% else %>
            <li class="page more">
              <span><% _t('Pagination_ss.PAGEMORE', '...') %></span>
            </li>
          <% end_if %>
        <% end_if %>
      <% end_loop %>
      <% if $List.NotLastPage %>
        <li class="page next">
          <a href="$List.NextLink" title="<% _t('Pagination_ss.NEXTPAGE', 'Next Page') %>">
            <span><% _t('Pagination_ss.NEXT', 'Next') %></span><i class="fa fa-arrow-right"></i>
          </a>
        </li>
      <% end_if %>
      <% if $PageSummary %>
        <li class="page summary">
          <span class="page">Page</span>
          <span class="current">{$List.CurrentPage}</span>
          <span class="of">of</span>
          <span class="total">{$List.TotalPages}</span>
          <span class="pages">pages</span>
        </li>
      <% end_if %>
    </ul>
  </div>
<% end_if %>