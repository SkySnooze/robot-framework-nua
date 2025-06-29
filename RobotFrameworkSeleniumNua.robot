*** Settings ***
Library           SeleniumLibrary
#Anantakeat
*** Variables ***
${SERVER1}         https://www.w3schools.com
${SERVER2}		   https://pantip.com
${SERVER3}		   https://discord.com
${SERVER4}         https://www.wikipedia.org
${SERVER5}         https://www.github.com
${SERVER6}         https://www.youtube.com
${SERVER7}		   http://www.mut.ac.th
${SERVER8}		   https://www.webtoons.com/th
${SERVER9}		   https://www.afreecatv.com
${SERVER10}		   https://www.netflix.com/th-en/
${BROWSER}         Chrome

*** Test Cases ***
Search Python from w3schools
     Open w3schools
     Search Python
	 
Search Netflix from pantip
	 Open pantip
	 Search Netflix
	 
Search Support from discord
	 Open discord
	 Search Support
	 
Search C++ from wikipedia
	 Open wikipedia
	 Search C++
	 
Search HTML from github
	 Open github
	 Search HTML
	 
Search NLE Choppa - Side [Official Music Video] from youtube
     Open youtube page
     Search NLE Choppa - Side [Official Music Video]	 

Search Personnel from mut
    Open mut page
    Search Personnel
	
Search Cartoon from webtoons
    Open webtoons page
    Search Cartoon
	
Search Valorant from afreecatv
     Open afreecatv page
     Search Valorant
	 
Search INFO from netflix
     Open netflix page
     Search INFO
	
*** Keywords ***
Open w3schools
    Open Browser    ${SERVER1}    ${BROWSER}
	Maximize Browser Window
	Capture Page Screenshot    output/w3schools.png
Search Python
    Input Text    id=search2   Python
    Click Button    id=learntocode_searchbtn
    Wait Until Page Contains    Python
	Click Element    //a[contains(text(),'Try it Yourself »')]
	Close Browser

Open pantip
	Open Browser    ${SERVER2}    ${BROWSER}
	Maximize Browser Window
	Capture Page Screenshot    output/pantest.png
Search Netflix
	Input Text    id=search-box  Netflix
    Click Element    //i[contains(text(),'search')]
    Wait Until Page Contains    Netflix
	Close Browser

Open discord
	Open Browser    ${SERVER3}    ${BROWSER}
	Maximize Browser Window
	Capture Page Screenshot    output/discordtest.png
Search Support
	Click Element    //a[contains(text(),'Safety')]
	Close Browser

Open wikipedia
	Open Browser    ${SERVER4}    ${BROWSER}
	Maximize Browser Window
	Capture Page Screenshot    output/wikipretest.png
Search C++
	Input Text    id=searchInput  C++
    Click Element    //i[contains(text(),'Search')]
    Wait Until Page Contains    C++
	Close Browser
	
Open github
	Open Browser    ${SERVER5}    ${BROWSER}
	Maximize Browser Window
	Capture Page Screenshot    output/GITHUBTRY.png
Search HTML
	Click Element    //span[contains(text(),'Search or jump to...')]
	Input Text    id=query-builder-test  HTML
	Press Keys    id=query-builder-test  HTML
    Wait Until Page Contains    HTML
	Close Browser
	
Open youtube page
    Open Browser    ${SERVER6}    ${BROWSER}
	Maximize Browser Window
	Capture Page Screenshot    output/NLECHOPPAYT.png
Search NLE Choppa - Side [Official Music Video]
    Input Text    name=search_query   NLE Choppa - Side [Official Music Video]
    Click Button    id=search-icon-legacy
    Wait Until Page Contains    NLE Choppa - Side [Official Music Video]
    Click Link   link:NLE Choppa - Side [Official Music Video]
	Page Should Contain    NLE Choppa - Side [Official Music Video]
	Close Browser
	
Open mut page
    Open Browser    ${SERVER7}    ${BROWSER}
	Maximize Browser Window
	Capture Page Screenshot    output/MUTTEST.png
Search Personnel
    Click Element    //a[contains(text(),'บุคลากร')]
	Close Browser
	
Open webtoons page
    Open Browser    ${SERVER8}    ${BROWSER}
	Maximize Browser Window
	Capture Page Screenshot    output/WEBTOONS.png
Search Cartoon
	Click Link   link:ออริจินัล
    Click Link   link:จันทร์
	Click Link   link:อังคาร
	Click Link   link:พุธ
	Click Link   link:พฤหัสบดี
	Click Link   link:ศุกร์
	Click Link   link:เสาร์
	Click Link   link:อาทิตย์
	Click Link   link:ประเภท
	Click Link   link:ยอดนิยม
	Click Link   link:แคนวาส
	Click Link   link:เผยแพร่
	Go Back
	Click Link   link:เข้าสู่ระบบ
	Go Back
	
Open afreecatv page
    Open Browser    ${SERVER9}    ${BROWSER}
	Maximize Browser Window
	Capture Page Screenshot    output/AFREECATV.png
Search Valorant
    Input Text    name=szKeyword   Valorant
    Click Button    class=btn_search
    Wait Until Page Contains    VALORANT_KR
	Click Link	link:VALORANT_KR
	
Open netflix page
    Open Browser    ${SERVER10}    ${BROWSER}
	Maximize Browser Window
	Capture Page Screenshot    output/NETFLIXEST.png
Search INFO
    Select From List by Label    id=:R5ajalalbd:    ไทย
	Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
	Click Button	id=button--nmhp-card-faq-accordion--0
	Click Button	id=button--nmhp-card-faq-accordion--1
	Click Button	id=button--nmhp-card-faq-accordion--2
	Click Button	id=button--nmhp-card-faq-accordion--3
	Click Button	id=button--nmhp-card-faq-accordion--4
	Click Button	id=button--nmhp-card-faq-accordion--5
	Input Text      name=email	muttest.mut.ac.th
	Click Element	//a[contains(text(),'คำถามที่พบบ่อย')]
	Click Link		link:Join Netflix	