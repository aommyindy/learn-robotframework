*** Settings ***
Documentation     Step 1 นี้เป็นการทำความเข้าใจคำสั่งพื้นฐานที่ใช้บ่อย
...
...               โดยไม่มีการสร้าง Keywords
Library           Selenium2Library

*** Test Cases ***
ทดสอบการค้นหาเว็บ aOmmy Gadget
    Open Browser    https://www.google.co.th   browser=chrome
    Set Window Size     1366    768
    Set Selenium Speed    0
    Location Should Contain     www.google.co.th
    Input Text  name:q    blog.systemme.com
    Press Key   name:q    \\13
    Wait Until Page Contains   aOmmy Gadget | มือถือ ราคาถูก ดี คุ้ม รีวิว    5s
    Click Link  aOmmy Gadget | มือถือ ราคาถูก ดี คุ้ม รีวิว
    Close Browser
    