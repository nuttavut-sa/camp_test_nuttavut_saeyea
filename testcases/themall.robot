*** Settings ***
Library  SeleniumLibrary
Resource  ../keyword/index.robot

*** Test Cases ***
Open Web Page
  Open The Mall Page

Click Category And check
  Check Category Beauty
  Check Category Women
  Check Category Men
  Check Category Sport Mall
  Check Category Power Mall
  Check Category Watch
  Check Category Kids Planet
  Check Category Betrend
  Check Category The Living
  Check Category Gourmet

Verify Language And Change Language
  Change Language