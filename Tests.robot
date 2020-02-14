*** Settings ***
Library         AppiumLibrary
Test Setup      AppiumLibrary.Open Application    http://localhost:4723/wd/hub   platformName=Android   platformVersion=8.1    deviceName=emulator-5554   appPackage=com.eit.srd   appActivity=com.eit.srd.MainActivity
Test Teardown   Close Application

*** Variables ***
${ConsignmentID}    5853163
${ShortTimeout}     15
${LongTimeout}      90

*** Test Cases ***
Consignment Tracking
    [Tags]   Regression
    Log To Console     \nChecking Consignment Tracking...
    #Click menu
    AppiumLibrary.Wait Until Element Is Visible    //android.widget.Button[@content-desc="menu "]   timeout=${LongTimeout}   error=Menu button is not visible
    AppiumLibrary.Click Element    //android.widget.Button[@content-desc="menu "]
    #Click Consignment Tracking
    AppiumLibrary.Wait Until Element Is Visible    //android.widget.Button[@content-desc="pin Consignment Tracking "]   timeout=${LongTimeout}   error=Consignment tracking option is not visible
    AppiumLibrary.Click Element    //android.widget.Button[@content-desc="pin Consignment Tracking "]
    AppiumLibrary.Wait Until Element Is Visible    //*[@class='android.widget.EditText']   timeout=${LongTimeout}   error=Consignment ID textbox is not visible
    AppiumLibrary.Input Text   //*[@class='android.widget.EditText']   ${ConsignmentID}
    AppiumLibrary.Click Element      //android.widget.Button[@content-desc="arrow forward "]
    Sleep     2
    AppiumLibrary.Wait Until Page Does Not Contain Element   //*[@class='android.app.Dialog']/android.view.View   timeout=${ShortTimeout}   error=Consignment Tracking is taking longer than usual...
    Sleep     2
    Capture Page Screenshot

About Us
    [Tags]   Regression
    Log To Console     \nChecking About Us page...
    #Click menu
    AppiumLibrary.Wait Until Element Is Visible    //android.widget.Button[@content-desc="menu "]   timeout=${LongTimeout}   error=Menu button is not visible
    AppiumLibrary.Click Element    //android.widget.Button[@content-desc="menu "]
    #Click About Us
    AppiumLibrary.Wait Until Element Is Visible    //android.widget.Button[@content-desc="contacts About Us "]   timeout=${LongTimeout}   error=About Us option is not visible
    AppiumLibrary.Click Element    //android.widget.Button[@content-desc="contacts About Us "]
    Sleep     2
    AppiumLibrary.Wait Until Page Does Not Contain Element   //*[@class='android.app.Dialog']/android.view.View   timeout=${ShortTimeout}   error=About Us option is still loading...
    AppiumLibrary.Wait Until Element Is Visible    //android.view.View[@content-desc="About SRD"]   timeout=${LongTimeout}   error=About Us page is not visible
    Sleep     2
    Capture Page Screenshot

Latest News
    [Tags]   Regression
    Log To Console     \nChecking Latest News page...
    #Click menu
    AppiumLibrary.Wait Until Element Is Visible    //android.widget.Button[@content-desc="menu "]   timeout=${LongTimeout}   error=Menu button is not visible
    AppiumLibrary.Click Element    //android.widget.Button[@content-desc="menu "]
    #Click Latest News
    AppiumLibrary.Wait Until Element Is Visible    //android.widget.Button[@content-desc="globe Latest News "]   timeout=${LongTimeout}   error=Latest News option is not visible
    AppiumLibrary.Click Element    //android.widget.Button[@content-desc="globe Latest News "]
    Sleep    2
    AppiumLibrary.Wait Until Page Does Not Contain Element   //*[@class='android.app.Dialog']/android.view.View   timeout=${ShortTimeout}   error=Latest News option is still loading...
    AppiumLibrary.Wait Until Element Is Visible    //android.view.View[@content-desc="Latest News"]   timeout=${LongTimeout}   error=Latest News page is not visible
    Sleep     2
    Capture Page Screenshot

Our Branches
    [Tags]   Regression
    Log To Console     \nChecking Our Branches page...
    AppiumLibrary.Wait Until Element Is Visible    //android.widget.Button[@content-desc="menu "]   timeout=${LongTimeout}   error=Menu button is not visible
    AppiumLibrary.Click Element    //android.widget.Button[@content-desc="menu "]
    #Click Our Branches
    AppiumLibrary.Wait Until Element Is Visible    //android.widget.Button[@content-desc="wifi Our Branches "]   timeout=${LongTimeout}   error=Our Branches option is not visible
    AppiumLibrary.Click Element    //android.widget.Button[@content-desc="wifi Our Branches "]
    Sleep    2
    AppiumLibrary.Wait Until Element Is Visible    //android.view.View[@content-desc="Our Branches"]   timeout=${ShortTimeout}   error=Our Branches page is not displayed.
    Sleep    2
    Capture Page Screenshot

Check Service Route
    [Tags]   Regression
    Log To Console     \nChecking Service Route page...
    AppiumLibrary.Wait Until Element Is Visible    //android.widget.Button[@content-desc="menu "]   timeout=${LongTimeout}   error=Menu button is not visible
    AppiumLibrary.Click Element    //android.widget.Button[@content-desc="menu "]
    #Click locate Check Service Route
    AppiumLibrary.Wait Until Element Is Visible    //android.widget.Button[@content-desc="locate Check Service Route "]   timeout=${LongTimeout}   error=Check Service Route option is not visible
    AppiumLibrary.Click Element    //android.widget.Button[@content-desc="locate Check Service Route "]
    Sleep    2
    AppiumLibrary.Wait Until Element Is Visible    //android.view.View[@content-desc="Service Route"]   timeout=${ShortTimeout}   error=Service Route page is not displayed.
    Sleep    2
    Capture Page Screenshot

Find Nearest Booking & Delivery Center
    [Tags]   Regression
    Log To Console     \nChecking Nearest Center page...
    AppiumLibrary.Wait Until Element Is Visible    //android.widget.Button[@content-desc="menu "]   timeout=${LongTimeout}   error=Menu button is not visible
    AppiumLibrary.Click Element    //android.widget.Button[@content-desc="menu "]
    #Click bookmarks Find Nearest Booking & Delivery Center
    AppiumLibrary.Wait Until Element Is Visible    //android.widget.Button[@content-desc="bookmarks Find Nearest Booking & Delivery Center "]   timeout=${LongTimeout}   error=Find Nearest Booking & Delivery Center option is not visible
    AppiumLibrary.Click Element    //android.widget.Button[@content-desc="bookmarks Find Nearest Booking & Delivery Center "]
    Sleep    2
    AppiumLibrary.Wait Until Element Is Visible    //android.view.View[@content-desc="Nearest Center"]   timeout=${ShortTimeout}   error=Nearest Center page is not displayed.
    Sleep    2
    Capture Page Screenshot

Contact Us
    [Tags]   Regression
    Log To Console     \nChecking Contact Us page...
    AppiumLibrary.Wait Until Element Is Visible    //android.widget.Button[@content-desc="menu "]   timeout=${LongTimeout}   error=Menu button is not visible
    AppiumLibrary.Click Element    //android.widget.Button[@content-desc="menu "]
    #Click contact Contact Us
    AppiumLibrary.Wait Until Element Is Visible    //android.widget.Button[@content-desc="contact Contact Us "]   timeout=${LongTimeout}   error=Contact Us option is not visible
    AppiumLibrary.Click Element    //android.widget.Button[@content-desc="contact Contact Us "]
    Sleep    5
    AppiumLibrary.Wait Until Page Does Not Contain Element   //*[@class='android.app.Dialog']/android.view.View   timeout=${ShortTimeout}   error=Contact Us is still loading...
    AppiumLibrary.Wait Until Element Is Visible    //android.view.View[@content-desc="Contact Us"]   timeout=${ShortTimeout}   error=Contact Us page is not displayed.
    Sleep    2
    Capture Page Screenshot

