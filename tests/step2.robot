*** Settings ***
Documentation     Step 2 นี้เป็นการทำความเข้าใจ Keywords และ Variables
...               และมีการทำงานเหมือนกับ Step 1 
...
...               โดยสร้าง Keywords นั้นจะถูกเรียกใช้จาก Test Cases หรือ
...               Keywords ด้วยกันเองก็ได้
...               ส่วน Variables ไว้สำหรับประกาศตัวแปรเพื่อเรียกใช้บ่อยๆ
Library           Selenium2Library

*** Variables ***
${BROWSER}          chrome
${URL_GOOGLE}       www.google.co.th
${WIDTH}            1366
${HEIGHT}           768
${DELAY}            0

*** Test Cases ***
ทดสอบการค้นหาเว็บ aOmmy Gadget
    Open Browser To Google
    ค้นหาคำว่า blog.systemme.com
    Click Link  aOmmy Gadget | มือถือ ราคาถูก ดี คุ้ม รีวิว
    Close Browser

*** Keywords ***
Open Browser To Google
    Open Browser    https://${URL_GOOGLE}   browser=${BROWSER}
    Set Window Size     ${WIDTH}    ${HEIGHT}
    Set Selenium Speed    ${DELAY}
    Google Should Be Open

Google Should Be Open
    Location Should Contain    ${URL_GOOGLE}

ค้นหาคำว่า blog.systemme.com
    Input Text  name:q    blog.systemme.com
    Press Key   name:q    \\13
    Wait Until Page Contains   aOmmy Gadget | มือถือ ราคาถูก ดี คุ้ม รีวิว    5s
