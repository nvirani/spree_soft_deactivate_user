Deface::Override.new(:virtual_path  => "spree/admin/users/index",
                     :insert_bottom => "[data-hook='admin_users_index_row_actions']",
                     :text          => "<% unless user == spree_current_user %>
                     <% if user.is_active %>
                     <a class='icon_link with-tip icon-pause no-text' method='post' data-confirm='Are you sure to deactive this user?' data-action='remove' href='<%= admin_users_active_deactive_path( user ) %>' >
                     </a>
                     <% else %>
                     <a class='icon_link with-tip icon-play no-text' method='post' data-confirm='Are you sure to active this user?' data-action='edit' href='<%= admin_users_active_deactive_path( user ) %>'>
                     </a>
                     <% end %>
                     <% end %>",
                     :name          => "soft_deactive_user"
                     )
