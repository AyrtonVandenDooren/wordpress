<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <?php wp_head()?>
    <title><?php echo get_bloginfo( 'name' ) ?></title>
  </head>
  <body <?php body_class(  ) ?>>
    <div class="o-page">
      <div class="o-page__header">
        <div class="o-fullwidth">
          <div class="o-fullwidth__inner">
            <header class="c-header">
              <img src="img/small.png" alt="" class="c-header__symbol" height="48" />
              <div class="c-header__search">
                <form action="#" class="c-search">
                  <input type="text" class="c-search__input" placeholder="Hallo, waar ben je naar op zoek?" />
                  <button class="c-search__action">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                      <circle cx="11" cy="11" r="8"></circle>
                      <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
                    </svg>
                  </button>
                </form>
              </div>
              <div class="c-header__actions">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg>
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                  <circle cx="10" cy="20.5" r="1" />
                  <circle cx="18" cy="20.5" r="1" />
                  <path d="M2.5 2.5h3l2.7 12.4a2 2 0 0 0 2 1.6h7.7a2 2 0 0 0 2-1.6l1.6-8.4H7.1" />
                </svg>
              </div>
            </header>
          </div>
        </div>
      </div>

      <div class="o-page__main-nav">
        <div class="o-fullwidth u-background--sec">
          <div class="o-fullwidth__inner">
            <div class="c-main-nav">
              <?php
                 $locations = get_nav_menu_locations();
                 $idVanNavigatie = $locations['header-menu'];
                 $menu_items = wp_get_nav_menu_items($idVanNavigatie);
                //  echo "<pre>";
                //  print_r($menu_items);
                //  echo "</pre>";
                 $teller = 0;
                 $aantal = count($menu_items);
                 $niv1ID = 0;
                 foreach($menu_items as $item){
                     if ($item->menu_item_parent == 0){
                       //niv 1
                       //ik start een nieuw niv 1, dus oud niv1 mag worden afsloten. Doe dit altijd maar niet de eerste keer
                       if ($teller != 0){
                         echo'</div>
                                    <!-- c-main-nav-subcat -->
                                  </div>
                                  <!-- o-fullwidth__inner -->
                                </div>
                                <!-- o-fullwidth -->
                              </div>
                              <!-- c-main-nav__subitem -->
                            </div>
                            <!--c-main-nav__item-->';
                       }
                      $niv1ID = $item->ID;
                      echo '<div class="c-main-nav__item">';
                      echo $item->title;
                      echo ' <div class="c-main-nav__subitem">';
                      echo '   <div class="o-fullwidth u-background--white">';
                      echo '     <div class="o-fullwidth__inner">';
                      echo '       <div class="c-main-nav-subcat">';
                     }else{
                       //niv 2 of 3
                       //als het parent van dit item gelijk is $niv1ID dan weet ik dat het een niv 2 is. Is het niet gelijk dan is het niv3
                       if ($item->menu_item_parent == $niv1ID){
                         //niv 2
                         echo '<ul class="c-main-nav-subcat__collection">';
                         echo '<li class="c-main-nav-subcat__item c-main-nav-subcat__item--niv2"><a href="' . $item->url . '" class="c-main-nav-subcat__link">' . $item->title .'</a></li>';
                       }else{
                         //niv 3
                         echo '<li class="c-main-nav-subcat__item c-main-nav-subcat__item--niv3"><a href="' . $item->url . '" class="c-main-nav-subcat__link">' . $item->title .'</a></li>';
                       }
                     }

                     //als de volgende item een niv 1 of een ander niv2 dan mag de ul worden afgesloten
                     if ($teller != $aantal-1 && ($menu_items[$teller+1]->menu_item_parent == 0 ||$menu_items[$teller+1]->menu_item_parent == $niv1ID )){
                       echo '</ul>';
                     }
                     if ($teller == $aantal-1){
                        echo '</ul>';
                        echo'</div>
                        <!-- c-main-nav-subcat -->
                      </div>
                      <!-- o-fullwidth__inner -->
                    </div>
                    <!-- o-fullwidth -->
                  </div>
                  <!-- c-main-nav__subitem -->
                </div>
                <!--c-main-nav__item-->';
                     }
                     $teller+=1;
                 }
              ?>
              <!--c-main-nav__item-->
            </div>
          </div>
        </div>
      </div>
