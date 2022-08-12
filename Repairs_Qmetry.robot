*** Settings ***
Library   AppiumLibrary

Resource    Resources/Keywords.robot

Suite Setup   Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Automation E-hub Community-Repairs
       Open App
       Open Home Page
       # NGG-TC-127
       Home - Repairs
       # NGG-TC-128
       Select Categories - Repairs
        # NGG-TC-129
       Pending Status Cards - Repairs
        # NGG-TC-130
       Scheduled Status Cards - Repairs
       # NGG-TC-131
       Completed Status Cards - Repairs