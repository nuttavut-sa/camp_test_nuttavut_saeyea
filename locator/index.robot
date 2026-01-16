*** Settings ***

Resource   ../data/test_data.resource

*** Variables ***

#common
${find_line}  //span[contains(normalize-space(.),'${contain_text_line}')]
${x_button_line}  //img[@alt='Close']

#category button
${buauty_hall}  //img[@alt='Beauty Hall']
${women}  //img[@alt='Women']
${men}  //img[@alt='Men']
${sport_mall}  //img[@alt='Sports']
${power_mall}  //img[@alt='Power Mall']
${watch}  //img[@alt='Watch']
${kids}  //img[@alt='Kids Planet']
${betrend}  //img[@alt='Betrend']
${the_living}  //img[@alt='The Living']
${gourmet}  //img[@alt='Gourmet']

#buauty hall
${exit_line}  //div[contains(@class,'popup_close')]//button[contains(@class,'button_close')]
${fine_linename}  //span[normalize-space()='${contain_buauty_hall}']

#gourmet market
${gourmet_menu}  //img[@alt='logo gourmet market thailand' and contains(@class,'tablet-none') and contains(@src,'logo-gourmetmarketthailand')]
${language_th}  //span[normalize-space()='ภาษาไทย']
${language_button}  //button[@data-bs-toggle='dropdown' and contains(@class,'btn-lang') and contains(@class,'tablet-none')]
${language_dd}  //button[@data-bs-toggle='dropdown' and contains(@class,'btn-lang') and contains(@class,'tablet-none')]
${language_btn_en}  //button[contains(@class,'change-locale') and contains(@class,'en')]
${language_en}  //span[normalize-space()='English']