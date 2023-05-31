<div class="o-page__footer">
        <div class="o-fullwidth">
          <div class="o-fullwidth__inner">
            <footer class="c-footer-nav">
            <?php
                $locations = get_nav_menu_locations();
                $idVanNavigatie = $locations['footer-menu'];
                $menu_items = wp_get_nav_menu_items($idVanNavigatie);
                // echo "<pre>";
                // print_r($menu_items);
                // echo "</pre>";
                $teller = 0;
                $aantal = count($menu_items);
                foreach($menu_items as $item){
                    if ($item->menu_item_parent == 0){
                      //niv 1
                      echo '<ul class="c-footer-nav__col">';
                      echo '<li class="c-footer-nav__item c-footer-nav__item--head"><a href="' . $item->url . '" class="c-footer-nav__link">';
                      echo $item->title;
                      echo '</a></li>';
                      //echo '</ul>';
                    }else{
                      //niv 2
                      echo '<li class="c-footer-nav__item c-footer-nav__item"><a href="' . $item->url . '" class="c-footer-nav__link">';
                      echo $item->title;
                      echo '</a></li>';

                    }

                    if($teller != $aantal - 1 && $menu_items[$teller+1]->menu_item_parent == 0){
                      echo "</ul>";
                    }

                    if($teller == $aantal-1){
                      echo "</ul>";
                    }

                    $teller+=1;
                }
            ?>
            </footer>
          </div>
        </div>
      </div>
    </div>
  </body>
  <?php wp_footer(  ) ?>
</html>
      