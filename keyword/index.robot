*** Settings ***

Library    SeleniumLibrary
Library    XML
Resource   ../locator/index.robot
Resource   ../resource/variable.robot
Resource   ../data/test_data.resource

*** Keywords ***

Open The Mall Page
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Location Should Be  ${url}

Check Category Beauty
  Wait Until Element Is Not Visible  css=.modal-custom-body  10s
  Wait Until Element Is Visible  ${buauty_hall}  timeout=10s
  Scroll Element Into View  ${buauty_hall}
  Click Element  ${buauty_hall}
  Wait Until Element Is Visible  ${exit_line}  timeout=10s
  Wait Until Element Is Enabled  ${exit_line}  timeout=10s
  Click Element  ${exit_line}
  Wait Until Element Contains  ${fine_linename}  ${contain_buauty_hall}  timeout=10s
  Go Back
  Wait Until Element Is Visible  ${buauty_hall}  timeout=10s

Check Category Women
  Wait Until Element Is Not Visible  css=.modal-custom-body  10s
  Wait Until Element Is Visible  ${women}  timeout=10s
  Scroll Element Into View  ${women}
  Click Element  ${women}
  Wait Until Element Is Visible  ${x_button_line}  timeout=10s
  Check Line Opened

Check Line Opened
  Wait Until Element Is Visible  ${find_line}  timeout=10s
  Wait Until Element Contains  ${find_line}  ${contain_text_line}  timeout=10s
  Click Element  ${x_button_line}
  Wait Until Element Is Visible  ${women}  timeout=10s

Check Category Men
  Wait Until Element Is Not Visible  css=.modal-custom-body  10s
  Wait Until Element Is Visible  ${men}  timeout=10s
  Scroll Element Into View  ${men}
  Click Element  ${men}
  Wait Until Element Is Visible  ${x_button_line}  timeout=10s
  Check Line Opened

Check Category Sport Mall
  Wait Until Element Is Not Visible  css=.modal-custom-body  10s
  Wait Until Element Is Visible  ${sport_mall}  timeout=10s
  Scroll Element Into View  ${sport_mall}
  Click Element  ${sport_mall}
  Wait Until Element Is Visible  ${x_button_line}  timeout=10s
  Check Line Opened

Check Category Power Mall
  Wait Until Element Is Not Visible  css=.modal-custom-body  10s
  Wait Until Element Is Visible  ${power_mall}  timeout=10s
  Scroll Element Into View  ${power_mall}
  Click Element  ${power_mall}
  Wait Until Element Is Visible  ${x_button_line}  timeout=10s
  Check Line Opened

Check Category Watch
  Wait Until Element Is Not Visible  css=.modal-custom-body  10s
  Wait Until Element Is Visible  ${watch}  timeout=10s
  Scroll Element Into View  ${watch}
  Click Element  ${watch}
  Wait Until Element Is Visible  ${x_button_line}  timeout=10s
  Check Line Opened

Check Category Kids Planet
  Wait Until Element Is Not Visible  css=.modal-custom-body  10s
  Wait Until Element Is Visible  ${kids}  timeout=10s
  Scroll Element Into View  ${kids}
  Click Element  ${kids}
  Wait Until Element Is Visible  ${x_button_line}  timeout=10s
  Check Line Opened

Check Category Betrend
  Wait Until Element Is Not Visible  css=.modal-custom-body  10s
  Wait Until Element Is Visible  ${betrend}  timeout=10s
  Scroll Element Into View  ${betrend}
  Click Element  ${betrend}
  Wait Until Element Is Visible  ${x_button_line}  timeout=10s
  Check Line Opened

Check Category The Living
  Wait Until Element Is Not Visible  css=.modal-custom-body  10s
  Wait Until Element Is Visible  ${the_living}  timeout=10s
  Scroll Element Into View  ${the_living}
  Click Element  ${the_living}
  Wait Until Element Is Visible  ${x_button_line}  timeout=10s
  Check Line Opened

Check Category Gourmet
  Wait Until Element Is Not Visible  css=.modal-custom-body  10s
  Wait Until Element Is Visible  ${gourmet}  timeout=10s
  Scroll Element Into View  ${gourmet}
  Click Element  ${gourmet}
  Wait Until Element Is Visible  ${gourmet_menu}  timeout=10s
  Wait Until Element Contains  ${language_th}  ${contain_lang_th}  timeout=10s

Change Language
  Wait Until Element Is Visible  ${language_button}  timeout=10s
  Click Element  ${language_button}
  Wait Until Element Is Visible  ${language_dd}  timeout=10s
  Click Element  ${language_btn_en}
  Wait Until Element Contains  ${language_en}  ${contain_lang_en}  timeout=10s