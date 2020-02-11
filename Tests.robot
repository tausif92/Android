*** Settings ***
Library         AppiumLibrary
#Test Setup      AppiumLibrary.Open Application    http://localhost:4723/wd/hub   platformName=Android   platformVersion=10    deviceName=emulator-5554   appPackage=com.eit.srd   appActivity=com.eit.srd.MainActivity
#Test Teardown   Close Application

*** Variables ***

*** Test Cases ***
Consignment Tracking
    [Tags]   Regression
    #Click menu
    AppiumLibrary.Wait Until Element Is Visible    //*[@text='menu']   timeout=60   error=Menu button is not visible
    AppiumLibrary.Click Element    //*[@text='menu']
    #Click Consignment Tracking
    AppiumLibrary.Wait Until Element Is Visible    //*[@text='pin Consignment Tracking']   timeout=60   error=Consignment tracking option is not visible
    AppiumLibrary.Click Element    //*[@text='pin Consignment Tracking']
    AppiumLibrary.Wait Until Element Is Visible    //*[@class='android.widget.EditText']   timeout=60   error=Consignment ID textbox is not visible
    AppiumLibrary.Input Text   //*[@class='android.widget.EditText']   xyz123
    Sleep     2

About Us
    [Tags]   Regression
    #Click menu
    AppiumLibrary.Wait Until Element Is Visible    //*[@text='menu']   timeout=60   error=Menu button is not visible
    AppiumLibrary.Click Element    //*[@text='menu']
    #Click About Us
    AppiumLibrary.Wait Until Element Is Visible    //*[@text='contacts About Us']   timeout=60   error=About Us option is not visible
    AppiumLibrary.Click Element    //*[@text='contacts About Us']
    Sleep     2
    AppiumLibrary.Wait Until Page Does Not Contain Element   //*[@class='android.app.Dialog']/android.view.View   timeout=15   error=About Us option is still loading...

Latest News
    [Tags]   Regression
    #Click menu
    AppiumLibrary.Wait Until Element Is Visible    //*[@text='menu']   timeout=60   error=Menu button is not visible
    AppiumLibrary.Click Element    //*[@text='menu']
    #Click Latest News
    AppiumLibrary.Wait Until Element Is Visible    //*[@text='globe Latest News']   timeout=60   error=Latest News option is not visible
    AppiumLibrary.Click Element    //*[@text='globe Latest News']
    Sleep    2
    AppiumLibrary.Wait Until Page Does Not Contain Element   //*[@class='android.app.Dialog']/android.view.View   timeout=15   error=Latest News option is still loading...

Our Branches
    [Tags]   Regression    branches
#    AppiumLibrary.Wait Until Element Is Visible    //*[@text='menu']   timeout=60   error=Menu button is not visible
#    AppiumLibrary.Click Element    //*[@text='menu']
#    #Click Our Branches
#    AppiumLibrary.Wait Until Element Is Visible    //*[@text='wifi Our Branches']   timeout=60   error=Our Branches option is not visible
#    AppiumLibrary.Click Element    //*[@text='wifi Our Branches']
#    Sleep    2
#    AppiumLibrary.Wait Until Element Is Visible    id=select-8-0   timeout=15   error=Our Branches page is not displayed.
    Log    this

Check Service Route
    [Tags]   Regression
    AppiumLibrary.Wait Until Element Is Visible    //*[@text='menu']   timeout=60   error=Menu button is not visible
    AppiumLibrary.Click Element    //*[@text='menu']
    #Click locate Check Service Route
    AppiumLibrary.Wait Until Element Is Visible    //*[@text='locate Check Service Route']   timeout=60   error=Check Service Route option is not visible
    AppiumLibrary.Click Element    //*[@text='locate Check Service Route']
    Sleep    2
    AppiumLibrary.Wait Until Element Is Visible    id=select-8-0   timeout=15   error=Service Route page is not displayed.

Find Nearest Booking & Delivery Center
    [Tags]   Regression
    AppiumLibrary.Wait Until Element Is Visible    //*[@text='menu']   timeout=60   error=Menu button is not visible
    AppiumLibrary.Click Element    //*[@text='menu']
    #Click bookmarks Find Nearest Booking & Delivery Center
    AppiumLibrary.Wait Until Element Is Visible    //*[@text='bookmarks Find Nearest Booking & Delivery Center']   timeout=60   error=Find Nearest Booking & Delivery Center option is not visible
    AppiumLibrary.Click Element    //*[@text='bookmarks Find Nearest Booking & Delivery Center']
    Sleep    2
    AppiumLibrary.Wait Until Element Is Visible    id=select-12-0   timeout=15   error=Nearest Center page is not displayed.

Contact Us
    [Tags]   Regression
    AppiumLibrary.Wait Until Element Is Visible    //*[@text='menu']   timeout=60   error=Menu button is not visible
    AppiumLibrary.Click Element    //*[@text='menu']
    #Click contact Contact Us
    AppiumLibrary.Wait Until Element Is Visible    //*[@text='contact Contact Us']   timeout=60   error=Contact Us option is not visible
    AppiumLibrary.Click Element    //*[@text='contact Contact Us']
    Sleep    5
    AppiumLibrary.Wait Until Page Does Not Contain Element   //*[@class='android.app.Dialog']/android.view.View   timeout=15   error=Contact Us is still loading...

*** Keywords ***

