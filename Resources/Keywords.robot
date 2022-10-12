
*** Variables ***

${url}         http://127.0.0.1:4723/wd/hub
${PlatFormName}      Android
#We'll need to find the Android version that the eHub is using.
${PlatFormVersion}   7.1.2
#This can be replaced with the device name if using a remote device via adroid studio
${DeviceName}        192.168.1.133:5555
${Activity_NAME}      com.sentrics.engage360..presentation.MainActivity
${PACKAGE_NAME}       com.sentrics.engage360

*** Keywords ***
Open App
# Enter to Aplications
    Open Application   ${url}
  ...   platformName=${PlatFormName}
  ...   platformVersion=${PlatFormVersion}
  ...   deviceName=${DeviceName}
  ...   automationName=UiAutomator2
  ...   newCommandTimeout=2500
  ...   noReset=True
  ...   activateName=${Activity_NAME}
  ...   packageName=${PACKAGE_NAME}

Open Home Page
        Wait Until Element Is Visible    id=com.sentrics.engage360:id/tvGroupName
        Element Text Should Be           id=com.sentrics.engage360:id/tvGroupName          Entertainment
        Press KeyCode           20
        Press KeyCode           20
# NGG-TC-65
Home - Repairs
        Press KeyCode           22
        Press KeyCode           22
        Press Keycode           20
        Press Keycode           23

# NGG-TC-64
Select Categories - Repairs
        # Pending
        Wait Until Element Is Visible            id=com.sentrics.engage360:id/button_new_repair
        Element Text Should Be                   id=com.sentrics.engage360:id/button_new_repair      Add New Request
        press Keycode           22
        Press Keycode           23
        # Completed
        press Keycode           22
        Press Keycode           23

# NGG-TC-63
Pending Status Cards - Repairs
        press Keycode           21
        Wait Until Element Is Visible       id=com.sentrics.engage360:id/text_categories
        press keycode           23
        Wait Until Element Is Visible       id=com.sentrics.engage360:id/text_categories

        Press Keycode           20
        Press Keycode           21
        Wait Until Element Is Visible       id=com.sentrics.engage360:id/text_work_orders
        Press Keycode           23
        Press Keycode           4

# NGG-TC-62
Scheduled Status Cards - Repairs

        Press Keycode           22
        Press Keycode           23
        Press Keycode           4

# NGG-TC-61
Completed Status Cards - Repairs

        Press Keycode           19
        Press Keycode           22
        Press Keycode           23
        Press Keycode           20
        Press Keycode           23

# Return
        Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvWorkOrderRoomTitle
        Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvWorkOrderTimelineTitle
        Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvWorkOrderDate
        Press Keycode           4

        Wait Until Element Is Visible       id=com.sentrics.engage360:id/button_new_repair
        Wait Until Element Is Visible       id=com.sentrics.engage360:id/text_work_orders
        Press Keycode           4


