*** Settings ***
Library   AppiumLibrary

Resource    Resources/Keywords.robot

Suite Setup   Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Automation E-hub Community-Repairs
       Open App
       Open Home Page
       # NGG-TC-65
       Home - Repairs
       # NGG-TC-64
       Select Categories - Repairs
        # NGG-TC-63
       Pending Status Cards - Repairs
        # NGG-TC-62
       Scheduled Status Cards - Repairs
       # NGG-TC-61
       Completed Status Cards - Repairs