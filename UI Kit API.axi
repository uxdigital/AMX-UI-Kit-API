PROGRAM_NAME='UI Kit API'
(***********************************************************)
(*  FILE_LAST_MODIFIED_ON: 07/02/2013  AT: 11:50:51        *)
(*******************************************************************************)
(*                                                                             *)
(*     _____            _              _  ____             _                   *)
(*    |     | ___  ___ | |_  ___  ___ | ||    \  ___  ___ |_| ___  ___  ___    *)
(*    |   --|| . ||   ||  _||  _|| . || ||  |  || -_||_ -|| || . ||   ||_ -|   *)
(*    |_____||___||_|_||_|  |_|  |___||_||____/ |___||___||_||_  ||_|_||___|   *)
(*                                                           |___|             *)
(*                                                                             *)
(*     _     _ _____      _     _ _____ _______      _______  _____  _____     *)
(*     |     |   |        |____/    |      |         |_____| |_____]   |       *)
(*     |_____| __|__      |    \_ __|__    |         |     | |       __|__     *)
(*                                                                             *)
(*                                                                             *)
(*                   © Control Designs Software Ltd (2012)                     *)
(*                         www.controldesigns.co.uk                            *)
(*                                                                             *)
(*      Tel: +44 (0)1753 208 490     Email: support@controldesigns.co.uk       *)
(*                                                                             *)
(*******************************************************************************)
(*                                                                             *)
(*                            UI Kit API v1-01                                 *)
(*                      also includes 'UI Kit v1-01'                           *)
(*                                                                             *)
(*            Written by Mike Jobson (Control Designs Software Ltd)            *)
(*                                                                             *)
(** REVISION HISTORY ***********************************************************)
(*                                                                             *)
(*  v1-01 (beta 3)                                                             *)
(*  First release developed in beta only at this point in time                 *)
(*  No known issues - Notes to follow in coming update                         *)
(*                                                                             *)
(*******************************************************************************)
(*                                                                             *)
(*  Permission is hereby granted, free of charge, to any person obtaining a    *)
(*  copy of this software and associated documentation files (the "Software"), *)
(*  to deal in the Software without restriction, including without limitation  *)
(*  the rights to use, copy, modify, merge, publish, distribute, sublicense,   *)
(*  and/or sell copies of the Software, and to permit persons to whom the      *)
(*  Software is furnished to do so, subject to the following conditions:       *)
(*                                                                             *)
(*  The above copyright notice and this permission notice and header shall     *)
(*  be included in all copies or substantial portions of the Software.         *)
(*                                                                             *)
(*  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS    *)
(*  OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF                 *)
(*  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.     *)
(*  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY       *)
(*  CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT  *)
(*  OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR   *)
(*  THE USE OR OTHER DEALINGS IN THE SOFTWARE.                                 *)
(*                                                                             *)
(*******************************************************************************)

DEFINE_CONSTANT

#IF_NOT_DEFINED UI_MAX_DEVICES
INTEGER UI_MAX_DEVICES					= 10
#END_IF

INTEGER UI_KEY_MAX_LENGTH				= 50
INTEGER UI_NAME_MAX_LENGTH				= 50
INTEGER UI_GROUP_NAME_MAX_LENGTH			= 50

INTEGER UI_PAGE_NAME_MAX_LENGTH				= 255
INTEGER UI_POPUP_NAME_MAX_LENGTH			= 255

INTEGER UI_INDEX_ALL					= 0

INTEGER UI_POPUP_TIMEOUT_DEFAULT			= 100

INTEGER UI_MAX_NUMBER_OF_VARS				= 20

INTEGER UI_ACTIONSHEET_KEY_MAX_LENGTH			= 20
INTEGER UI_ACTIONSHEET_TITLE_MAX_LENGTH			= 50
INTEGER UI_ACTIONSHEET_SUBTITLE_MAX_LENGTH		= 255
INTEGER UI_ACTIONSHEET_MAX_BUTTONS			= 3
INTEGER UI_ACTIONSHEET_BUTTON_TITLE_MAX_LENGTH		= 20
INTEGER UI_ACTIONSHEET_BUTTON_ACTION_KEY_MAX_LENGTH	= 20
INTEGER UI_ACTIONSHEET_DEFAULT_TIMEOUT			= 10

INTEGER UI_FONT_ID_COURIER_NEW_SIZE_9			= 1
INTEGER UI_FONT_ID_COURIER_NEW_SIZE_12			= 2
INTEGER UI_FONT_ID_COURIER_NEW_SIZE_18			= 3
INTEGER UI_FONT_ID_COURIER_NEW_SIZE_26			= 4
INTEGER UI_FONT_ID_COURIER_NEW_SIZE_32			= 5
INTEGER UI_FONT_ID_AMX_BOLD_SIZE_14			= 9
INTEGER UI_FONT_ID_AMX_BOLD_SIZE_20			= 10
INTEGER UI_FONT_ID_AMX_BOLD_SIZE_36			= 11
INTEGER UI_FONT_ID_ARIAL_BOLD_SIZE_9			= 12
INTEGER UI_FONT_ID_ARIAL_BOLD_SIZE_12			= 13
INTEGER UI_FONT_ID_ARIAL_BOLD_SIZE_14			= 14
INTEGER UI_FONT_ID_ARIAL_BOLD_SIZE_16			= 15
INTEGER UI_FONT_ID_ARIAL_BOLD_SIZE_18			= 16
INTEGER UI_FONT_ID_ARIAL_BOLD_SIZE_20			= 17
INTEGER UI_FONT_ID_ARIAL_SIZE_8				= 18
INTEGER UI_FONT_ID_ARIAL_SIZE_9				= 19
INTEGER UI_FONT_ID_ARIAL_SIZE_10			= 20
INTEGER UI_FONT_ID_ARIAL_SIZE_12			= 21
INTEGER UI_FONT_ID_ARIAL_SIZE_14			= 22
INTEGER UI_FONT_ID_ARIAL_SIZE_16			= 23
INTEGER UI_FONT_ID_ARIAL_SIZE_18			= 24
INTEGER UI_FONT_ID_ARIAL_SIZE_20			= 25
INTEGER UI_FONT_ID_ARIAL_SIZE_24			= 26
INTEGER UI_FONT_ID_ARIAL_SIZE_36			= 27
INTEGER UI_FONT_ID_ARIAL_BOLD_SIZE_10			= 28
INTEGER UI_FONT_ID_ARIAL_BOLD_SIZE_8			= 29

INTEGER UI_STATE_ALL					= 0
INTEGER UI_STATE_ON					= 1
INTEGER UI_STATE_OFF					= 2

//INTEGER ANIMATE_ORIGIN_CENTER				= 1
INTEGER ANIMATE_ORIGIN_TOP				= 2
INTEGER ANIMATE_ORIGIN_BOTTOM				= 3
INTEGER ANIMATE_ORIGIN_LEFT				= 4
INTEGER ANIMATE_ORIGIN_RIGHT				= 5
INTEGER ANIMATE_ORIGIN_LOWER_LEFT			= 6
INTEGER ANIMATE_ORIGIN_LOWER_RIGHT			= 7
INTEGER ANIMATE_ORIGIN_UPPER_LEFT			= 8
INTEGER ANIMATE_ORIGIN_UPPER_RIGHT			= 9


CHAR ANIMATE_TYPE_SLIDE[]				= 'slide'
CHAR ANIMATE_TYPE_SLIDE_WITH_BOUNCE[]			= 'sldBounce'
CHAR ANIMATE_TYPE_BLACK_GLASS[]				= 'blkGlass'
CHAR ANIMATE_TYPE_FADE[]				= 'fade'
CHAR ANIMATE_TYPE_PAGE_CURL[]				= 'pgCurl'
CHAR ANIMATE_TYPE_DOOR_WITH_FADE[]			= 'doorFade'
CHAR ANIMATE_TYPE_CENTRE_DOOR_WITH_FADE[]		= 'cntrDrFade'



DEFINE_TYPE

STRUCT _UI_GROUP_MEMBERS {
    INTEGER index[UI_MAX_DEVICES]
    CHAR name[UI_GROUP_NAME_MAX_LENGTH]
}

STRUCT _UI_ACTIONSHEET_BUTTON {
    CHAR key[UI_ACTIONSHEET_BUTTON_ACTION_KEY_MAX_LENGTH]
    CHAR title[UI_ACTIONSHEET_BUTTON_TITLE_MAX_LENGTH]
    INTEGER titleJoin
}

STRUCT _UI_ACTIONSHEET {
    CHAR key[UI_ACTIONSHEET_KEY_MAX_LENGTH]
    CHAR title[UI_ACTIONSHEET_TITLE_MAX_LENGTH]
    INTEGER titleJoin
    CHAR subTitle[UI_ACTIONSHEET_SUBTITLE_MAX_LENGTH]
    INTEGER subTitleJoin
    INTEGER timeOutTimeInSeconds
    _UI_ACTIONSHEET_BUTTON buttonChoice[UI_ACTIONSHEET_MAX_BUTTONS]
    INTEGER numberOfButtons
    CHAR popUpName[UI_POPUP_NAME_MAX_LENGTH]
}

STRUCT _UI_COLOUR {
    INTEGER red
    INTEGER green
    INTEGER blue
}

STRUCT _UI_POS {
    INTEGER top
    INTEGER left
}

STRUCT _UI_POPUP_EFFECT {
    CHAR name[50]
    _UI_POS positon
    INTEGER time
}

STRUCT _UI_POPUP {
    CHAR name[UI_POPUP_NAME_MAX_LENGTH]
    _UI_POPUP_EFFECT showEffect
    _UI_POPUP_EFFECT hideEffect
    INTEGER timeOut
}

#INCLUDE 'UI Kit'

/*
UIRegisterDevice(
	CHAR key[] 		Unique key to identify the UI
	CHAR name[]		A name for the UI
	CHAR group[]		Group key which can belong to several UI devices
	DEV device		The device of the UI
)
*/

DEFINE_FUNCTION INTEGER UIRegisterDevice(CHAR key[], CHAR name[], CHAR group[], DEV device) {
    STACK_VAR INTEGER n
    STACK_VAR INTEGER index

    index = 0

    for(n = 1; n <= MAX_LENGTH_ARRAY(ui); n ++) {
	if(!ui[n].defined) {
	    index = n;
	    break
	}
    }

    if(index) {
	ui[index].defined = TRUE
	ui[index].key = key
	ui[index].name = name
	ui[index].device = device
	ui[index].group = group
    }

    return(index)
}

DEFINE_FUNCTION INTEGER UIGetDeviceIndexFromKey(CHAR deviceKey[]) {
    STACK_VAR INTEGER n
    STACK_VAR INTEGER result

    result = 0

    for(n = 1; n <= MAX_LENGTH_ARRAY(ui); n ++) {
	if(ui[n].key == deviceKey) {
	    result = n
	    break
	}
    }

    return(result)
}

DEFINE_FUNCTION CHAR[UI_KEY_MAX_LENGTH] UIGetGroupKeyFromKey(CHAR deviceKey[]) {
    STACK_VAR INTEGER n
    STACK_VAR CHAR result[UI_KEY_MAX_LENGTH]

    result = ''

    //check if it isn't a group key already
    for(n = 1; n <= MAX_LENGTH_ARRAY(ui); n ++) {
	if(ui[n].group == deviceKey) {
	    result = ui[n].group
	    break
	}
    }

    //check for devicekey if no group key
    if(!LENGTH_STRING(result)) {
	for(n = 1; n <= MAX_LENGTH_ARRAY(ui); n ++) {
	    if(ui[n].key == deviceKey) {
		result = ui[n].group
		break
	    }
	}
    }

    return(result)
}

DEFINE_FUNCTION CHAR[UI_KEY_MAX_LENGTH] UIGetKeyForDevice(DEV device) {
    STACK_VAR INTEGER n
    STACK_VAR CHAR result[UI_KEY_MAX_LENGTH]

    result = ''

    for(n = 1; n <= MAX_LENGTH_ARRAY(ui); n ++) {
	if(ui[n].device == device) {
	    result = ui[n].key
	    break
	}
    }

    return(result)
}

DEFINE_FUNCTION CHAR[UI_KEY_MAX_LENGTH] UIGetGroupKeyForDevice(DEV device) {
    STACK_VAR INTEGER n
    STACK_VAR CHAR result[UI_KEY_MAX_LENGTH]

    result = ''

    for(n = 1; n <= MAX_LENGTH_ARRAY(ui); n ++) {
	if(ui[n].device == device) {
	    result = ui[n].group
	    break
	}
    }

    return(result)
}

DEFINE_FUNCTION CHAR[UI_KEY_MAX_LENGTH] UIGetKeyForIndex(INTEGER index) {
    STACK_VAR CHAR result[UI_KEY_MAX_LENGTH]

    result = ''

    if(index) {
	if(ui[index].defined) {
	    result = ui[index].key
	}
    }

    return(result)
}

DEFINE_FUNCTION INTEGER UIIsRegistered(INTEGER index) {
    if(index) {
	if(ui[index].defined) {
	    return TRUE
	} else {
	    return FALSE
	}
    } else {
	return FALSE
    }
}


DEFINE_FUNCTION UIInitGroupMembersType(_UI_GROUP_MEMBERS group) {
    STACK_VAR INTEGER n

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    group.index[n] = 0
	}
    }
}

DEFINE_FUNCTION UIGetDeviceIndexesFromGroup(_UI_GROUP_MEMBERS group) {
    STACK_VAR INTEGER n
    STACK_VAR INTEGER count

    count = 0

    for(n = 1; n <= MAX_LENGTH_ARRAY(ui); n ++) {
	if(ui[n].group == group.name) {
	    count ++
	    group.index[count] = n
	}
    }
}

DEFINE_FUNCTION CHAR[UI_PAGE_NAME_MAX_LENGTH] UIGetCurrentPageName(CHAR deviceKey[]) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n
    STACK_VAR CHAR result[UI_PAGE_NAME_MAX_LENGTH]

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    result = ui[group.index[1]].pageCurrent

    return(result)
}

DEFINE_FUNCTION INTEGER UIGetCurrentPageID(CHAR deviceKey[]) {
    CHAR pageName[UI_PAGE_NAME_MAX_LENGTH]
    STACK_VAR INTEGER n
    
    pageName = UIGetCurrentPageName(deviceKey)
    
    for(n = 1; n <= MAX_LENGTH_ARRAY(uiPages); n ++) {
	if(uiPages[n].name == pageName) {
	    return uiPages[n].id
	}
    }	
    
    return 0
}

DEFINE_FUNCTION CHAR[UI_PAGE_NAME_MAX_LENGTH] UIGetPreviousPageName(CHAR deviceKey[]) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n
    STACK_VAR CHAR result[UI_PAGE_NAME_MAX_LENGTH]

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    result = ui[group.index[1]].pagePrevious

    return(result)
}

DEFINE_FUNCTION UISetCurrentSource(CHAR deviceKey[], INTEGER source) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    ui[group.index[n]].currentSelectedSource = source
	}
    }
}

DEFINE_FUNCTION INTEGER UIGetCurrentSource(CHAR deviceKey[]) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n
    STACK_VAR INTEGER result

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    result = ui[group.index[1]].currentSelectedSource

    return(result)
}

DEFINE_FUNCTION UISetCurrentSubSource(CHAR deviceKey[], INTEGER subSource) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    ui[group.index[n]].currentSelectedSubSource = subSource
	}
    }
}

DEFINE_FUNCTION INTEGER UIGetCurrentSubSource(CHAR deviceKey[]) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n
    STACK_VAR INTEGER result

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    result = ui[group.index[1]].currentSelectedSubSource

    return(result)
}

DEFINE_FUNCTION UIVarRegister(CHAR deviceKey[], CHAR varKey[], CHAR initValue[]) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n
    STACK_VAR INTEGER v

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    UIRegisterVarForDeviceAtIndex(group.index[n], varKey, initValue)
	}
    }
}

DEFINE_FUNCTION UISetVarValue(CHAR deviceKey[], CHAR varKey[], CHAR value[]) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    UISetVarForDeviceAtIndex(group.index[n], varKey, value)
	}
    }
}

DEFINE_FUNCTION UISetVarValueInt(CHAR deviceKey[], CHAR varKey[], SLONG value) {
    UISetVarValue(deviceKey, varKey, ItoA(value))
}


DEFINE_FUNCTION CHAR[UI_VAR_MAX_VALUE_LENGTH] UIGetVarValue(CHAR deviceKey[], CHAR varKey[]) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n
    STACK_VAR CHAR result[UI_VAR_MAX_VALUE_LENGTH]

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    result = UIGetVarForDeviceAtIndex(group.index[1], varKey)

    return(result)
}

DEFINE_FUNCTION SLONG UIGetVarValueInt(CHAR deviceKey[], CHAR varKey[]) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n
    STACK_VAR INTEGER result

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    result = AtoI(UIGetVarForDeviceAtIndex(group.index[1], varKey))

    return(result)
}

DEFINE_FUNCTION INTEGER UICheckKeyForGroup(CHAR key[]) {
    STACK_VAR INTEGER n
    STACK_VAR INTEGER result

    result = FALSE

    for(n = 1; n <= MAX_LENGTH_ARRAY(ui); n ++) {
	if(ui[n].group == key) {
	    result = TRUE
	    break
	}
    }

    return(result)
}

DEFINE_FUNCTION UIPage(CHAR deviceKey[], CHAR pageName[]) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    UIPageSend(ui[group.index[n]].device, pageName)

	    if(ui[group.index[n]].pageCurrent <> pageName) {
		ui[group.index[n]].pagePrevious = ui[group.index[n]].pageCurrent
	    }

	    ui[group.index[n]].pageOnTimeout = ''
	    ui[group.index[n]].pageTimeOut = 0
	    ui[group.index[n]].pageTimeoutCounting = 0
	    ui[group.index[n]].pageCurrent = pageName
	}
    }
}

DEFINE_FUNCTION UIPageWithTimeOut(CHAR deviceKey[], CHAR pageName[], INTEGER timeOutInSeconds) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    UIPageSend(ui[group.index[n]].device, pageName)

	    if(ui[group.index[n]].pageCurrent <> pageName) {
		ui[group.index[n]].pagePrevious = ui[group.index[n]].pageCurrent
	    }

	    ui[group.index[n]].pageOnTimeout = ''
	    ui[group.index[n]].pageCurrent = pageName
	    ui[group.index[n]].pageTimeout = timeOutInSeconds
	    ui[group.index[n]].pageTimeoutCounting = timeOutInSeconds
	}
    }
}

DEFINE_FUNCTION UIPageWithTimeOutAndAnimation(CHAR deviceKey[], CHAR pageName[], INTEGER timeOutInSeconds, CHAR animationType[], INTEGER origin, INTEGER duration) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    UIPageSendWithAnimation(ui[group.index[n]].device, pageName, animationType, origin, duration)

	    if(ui[group.index[n]].pageCurrent <> pageName) {
		ui[group.index[n]].pagePrevious = ui[group.index[n]].pageCurrent
	    }

	    ui[group.index[n]].pageOnTimeout = ''
	    ui[group.index[n]].pageCurrent = pageName
	    ui[group.index[n]].pageTimeout = timeOutInSeconds
	    ui[group.index[n]].pageTimeoutCounting = timeOutInSeconds
	}
    }
}

DEFINE_FUNCTION UIPageWithTimeOutToPage(CHAR deviceKey[], CHAR pageName[], INTEGER timeOutInSeconds, CHAR pageNameToReturn[]) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    UIPageSend(ui[group.index[n]].device, pageName)

	    if(ui[group.index[n]].pageCurrent <> pageName) {
		ui[group.index[n]].pagePrevious = ui[group.index[n]].pageCurrent

	    }
	    ui[group.index[n]].pageOnTimeout = pageNameToReturn
	    ui[group.index[n]].pageCurrent = pageName
	    ui[group.index[n]].pageTimeout = timeOutInSeconds
	    ui[group.index[n]].pageTimeoutCounting = timeOutInSeconds
	}
    }
}

DEFINE_FUNCTION UIPageTimeOutReset(CHAR deviceKey[]) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    ui[group.index[n]].pageTimeoutCounting = ui[group.index[n]].pageTimeout
	}
    }
}

DEFINE_FUNCTION UIPageBack(CHAR deviceKey[]) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    if(LENGTH_STRING(ui[group.index[n]].pagePrevious)) {
		UIPageSend(ui[group.index[n]].device, ui[group.index[n]].pagePrevious)
		ui[group.index[n]].pageCurrent = ui[group.index[n]].pagePrevious
		ui[group.index[n]].pagePrevious = ''
		ui[group.index[n]].pageOnTimeout = ''
		ui[group.index[n]].pageTimeout = 0
		ui[group.index[n]].pageTimeoutCounting = 0
	    }
	}
    }
}

DEFINE_FUNCTION UIPageWithAnimation(CHAR deviceKey[], CHAR pageName[], CHAR animationType[], INTEGER origin, INTEGER duration) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    UIPageSendWithAnimation(ui[group.index[n]].device, pageName, animationType, origin, duration)

	    if(ui[group.index[n]].pageCurrent <> pageName) {
		ui[group.index[n]].pagePrevious = ui[group.index[n]].pageCurrent
	    }

	    ui[group.index[n]].pageOnTimeout = ''
	    ui[group.index[n]].pageTimeOut = 0
	    ui[group.index[n]].pageTimeoutCounting = 0
	    ui[group.index[n]].pageCurrent = pageName
	}
    }
}

DEFINE_FUNCTION INTEGER UIPageAdd(char pageName[]) {
    STACK_VAR INTEGER n
    STACK_VAR INTEGER nextIndex
    
    for(n = 1; n <= MAX_LENGTH_ARRAY(uiPages); n ++) {
	if(uiPages[n].defined == FALSE) {
	    nextIndex = n
	    break
	}
    }
    
    if(nextIndex) {
	uiPages[nextIndex].defined = TRUE
	uiPages[nextIndex].name = pageName
	return uiPages[nextIndex].id
    } else {
	return 0
    }
}

DEFINE_FUNCTION INTEGER UIPageAddWithPopups(char pageName[], char popups[][]) {
    STACK_VAR INTEGER index
    STACK_VAR INTEGER id
    STACK_VAR INTEGER n
    
    id = UIPageAdd(pageName)
    
    if(id) {
	index = UIPageGetIndexForID(id)
	uiPages[index].popups = popups
	for(n = 1; n <= MAX_LENGTH_ARRAY(uiPages[index].popups); n ++) {
	    if(!LENGTH_STRING(uiPages[index].popups)) {
		break
	    } else {
		uiPages[index].numberOfPopupsDefined = n
	    }
	}
	return id
    } else {
	return 0
    }
}

DEFINE_FUNCTION UIPageAddPopup(integer pageID, char popup[]) {
    STACK_VAR INTEGER n
    STACK_VAR INTEGER index
    
    index = UIPageGetIndexForID(pageID)
    
    if(index) {
	for(n = 1; n <= MAX_LENGTH_ARRAY(uiPages[index].popups); n ++) {
	    if(!LENGTH_STRING(uiPages[index].popups[n])) {
		uiPages[index].popups[n] = popup
		uiPages[index].numberOfPopupsDefined = n
		break
	    }
	}
    }
}

DEFINE_FUNCTION UIPageFromID(char deviceKey[], integer pageID) {
    STACK_VAR INTEGER index
    STACK_VAR INTEGER n
    
    index = UIPageGetIndexForID(pageID)
    
    if(index) {
	if(uiPages[index].numberOfPopupsDefined) {
	    for(n = 1; n <= MAX_LENGTH_ARRAY(uiPages[index].popups); n ++) {
		if(n <= uiPages[index].numberOfPopupsDefined) {
		    UIPopup(deviceKey, uiPages[index].popups[n], uiPages[index].name, TRUE, 0)
		}
	    }
	}
	UIPage(deviceKey, uiPages[index].name)
    }
}

DEFINE_FUNCTION CHAR[255] UIPageNameFromID(char deviceKey[], integer pageID) {
    STACK_VAR INTEGER index
    
    index = UIPageGetIndexForID(pageID)
    
    if(index) {
	return uiPages[index].name
    } else {
	return ''
    }
}

DEFINE_FUNCTION UIPopup(CHAR deviceKey[], CHAR popupName[], CHAR pageName[], INTEGER show, INTEGER timeOut) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    UIPopupSend(ui[group.index[n]].device, popupName, pageName, show, timeOut)
	}
    }
}

DEFINE_FUNCTION UIPopupWithSetup(CHAR deviceKey[], _UI_POPUP popup, CHAR pageName[], INTEGER show) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    UIPopupSetupSend(ui[group.index[n]].device, popup)
	    UIPopupSend(ui[group.index[n]].device, popup.name, pageName, show, popup.timeOut)
	}
    }
}

DEFINE_FUNCTION UIPopupTypeInit(_UI_POPUP popup) {
    popup.name = ''
    popup.hideEffect.name = ''
    popup.hideEffect.positon.left = 0
    popup.hideEffect.positon.top = 0
    popup.hideEffect.time = 0
    popup.showEffect.name = ''
    popup.showEffect.positon.left = 0
    popup.showEffect.positon.top = 0
    popup.showEffect.time = 0
    popup.timeOut = 0
}

DEFINE_FUNCTION UIPopupSetup(CHAR deviceKey[], _UI_POPUP popup) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    UIPopupSetupSend(ui[group.index[n]].device, popup)
	}
    }
}

DEFINE_FUNCTION UIPopupToGroup(CHAR deviceKey[], CHAR popupName[], CHAR groupName[]) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    UIPopupToGroupSend(ui[group.index[n]].device, popupName, groupName)
	}
    }
}

DEFINE_FUNCTION UIPopupsClear(CHAR deviceKey[]) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    UIPopupsClearSend(ui[group.index[n]].device)
	}
    }
}

DEFINE_FUNCTION UIPopupsClearOnPage(CHAR deviceKey[], CHAR pageName[]) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    UIPopupsClearOnPageSend(ui[group.index[n]].device, pageName)
	}
    }
}

DEFINE_FUNCTION UIIconSlot(CHAR deviceKey[], INTEGER address, INTEGER state, INTEGER slot) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    UIIconSlotSend(ui[group.index[n]].device, address, state, slot)
	}
    }
}

DEFINE_FUNCTION UIText(CHAR deviceKey[], INTEGER address, INTEGER state, CHAR text[]) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    UITextSend(ui[group.index[n]].device, address, state, text)
	}
    }
}

DEFINE_FUNCTION UITextToPort(CHAR deviceKey[], INTEGER port, INTEGER address, INTEGER state, CHAR text[]) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n
    STACK_VAR DEV uiDevice
    
    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    uiDevice = ui[group.index[n]].device
	    uiDevice.port = port
	    UITextSend(uiDevice, address, state, text)
	}
    }
}

DEFINE_FUNCTION UITextColour(CHAR deviceKey[], INTEGER address, INTEGER state, _UI_COLOUR colour) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    UITextColourSend(ui[group.index[n]].device, address, state, colour)
	}
    }
}

DEFINE_FUNCTION UITextAlignAbsolute(CHAR deviceKey[], INTEGER address, INTEGER state, INTEGER left, INTEGER top) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    UITextAlignAbsoluteSend(ui[group.index[n]].device, address, state, left, top)
	}
    }
}

DEFINE_FUNCTION UIBorderColour(CHAR deviceKey[], INTEGER address, INTEGER state, _UI_COLOUR colour) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    UIBorderColourSend(ui[group.index[n]].device, address, state, colour)
	}
    }
}

DEFINE_FUNCTION UIFillColour(CHAR deviceKey[], INTEGER address, INTEGER state, _UI_COLOUR colour) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    UIFillColourSend(ui[group.index[n]].device, address, state, colour)
	}
    }
}

DEFINE_FUNCTION UIFont(CHAR deviceKey[], INTEGER address, INTEGER state, INTEGER fontID) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    UIFontSend(ui[group.index[n]].device, address, state, fontID)
	}
    }
}

DEFINE_FUNCTION UIButtonHide(CHAR deviceKey[], INTEGER address) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    UIButtonHideSend(ui[group.index[n]].device, address)
	}
    }
}

DEFINE_FUNCTION UIButtonShow(CHAR deviceKey[], INTEGER address) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    UIButtonShowSend(ui[group.index[n]].device, address)
	}
    }
}

DEFINE_FUNCTION UIButtonSize(CHAR deviceKey[], INTEGER address, INTEGER left, INTEGER top, INTEGER right, INTEGER bottom) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    UIButtonSizeSend(ui[group.index[n]].device, address, left, top, right, bottom)
	}
    }
}

DEFINE_FUNCTION UILevel(CHAR deviceKey[], INTEGER levelAddress, INTEGER levelVal) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    UILevelSend(ui[group.index[n]].device, levelAddress, levelVal)
	}
    }
}

DEFINE_FUNCTION UIShowKeyboard(CHAR deviceKey[], CHAR text[], CHAR title[]) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    SEND_COMMAND ui[group.index[n]].device, "'@AKB-', text, ';', title"
	}
    }
}

DEFINE_FUNCTION UIActionSheetInit(_UI_ACTIONSHEET actionSheet) {
    STACK_VAR INTEGER nButton

    actionSheet.key = ''
    actionSheet.title = ''
    actionSheet.titleJoin = 0
    actionSheet.subTitle = ''
    actionSheet.subTitleJoin = 0
    actionSheet.timeOutTimeInSeconds = UI_ACTIONSHEET_DEFAULT_TIMEOUT

    for(nButton = 1; nButton <= MAX_LENGTH_ARRAY(actionSheet.buttonChoice); nButton ++) {
	actionSheet.buttonChoice[nButton].key = ''
	actionSheet.buttonChoice[nButton].title = ''
	actionSheet.buttonChoice[nButton].titleJoin = 0
    }

    actionSheet.numberOfButtons = 0
    actionSheet.popUpName = ''
}

DEFINE_FUNCTION UIGetActionSheetFromDeviceKey(CHAR deviceKey[], _UI_ACTIONSHEET actionSheet) {
    STACK_VAR INTEGER uiDeviceIndex

    uiDeviceIndex = UIGetDeviceIndexFromKey(deviceKey)

    actionSheet = ui[uiDeviceIndex].actionSheet
}

DEFINE_FUNCTION UIActionSheetShow(CHAR deviceKey[], _UI_ACTIONSHEET actionSheet) {
    STACK_VAR INTEGER uiDeviceIndex
    STACK_VAR INTEGER nButton
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    actionSheet.numberOfButtons = UIGetNumberOfActionSheetButtons(actionSheet)

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    ui[group.index[n]].actionSheet = actionSheet
	}
    }

    for(nButton = 1; nButton <= MAX_LENGTH_ARRAY(actionSheet.buttonChoice); nButton ++) {
	if(nButton <= actionSheet.numberOfButtons) {
	    UIText(deviceKey, actionSheet.buttonChoice[nButton].titleJoin, UI_STATE_ALL, actionSheet.buttonChoice[nButton].title)
	    UIButtonShow(deviceKey, actionSheet.buttonChoice[nButton].titleJoin)
	} else if(actionSheet.buttonChoice[nButton].titleJoin) {
	    UIButtonHide(deviceKey, actionSheet.buttonChoice[nButton].titleJoin)
	}
    }

    UIText(deviceKey, actionSheet.titleJoin, UI_STATE_ALL, actionSheet.title)
    UIText(deviceKey, actionSheet.subTitleJoin, UI_STATE_ALL, actionSheet.subTitle)
    UIPopup(deviceKey, actionSheet.popUpName, '', 1, actionSheet.timeOutTimeInSeconds * 10)
}

DEFINE_FUNCTION UIActionSheetClose(CHAR deviceKey[]) {
    _UI_ACTIONSHEET actionSheet
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    actionSheet = ui[group.index[n]].actionSheet
	    UIPopup(ui[group.index[n]].key, actionSheet.popUpName, ui[group.index[n]].pageCurrent, 0, 0)
	    UIPopup(ui[group.index[n]].key, actionSheet.popUpName, ui[group.index[n]].pagePrevious, 0, 0)
	}
    }
}

DEFINE_FUNCTION UIWake(CHAR deviceKey[]) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    UIWakeSend(ui[group.index[n]].device)
	}
    }
}

DEFINE_FUNCTION UIPageTrackingEnable(CHAR deviceKey[]) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    UIPageTrackingEnableSend(ui[group.index[n]].device)
	}
    }
}

DEFINE_FUNCTION UIListInit(CHAR deviceKey[], CHAR name[], INTEGER startAddress, INTEGER subTextStartAddress, INTEGER size) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n
    _UI_LIST list

    UIInitGroupMembersType(group)
    UIListInitStruct(list)

    list.header = name
    list.itemStartAddress = startAddress
    list.itemSubTextStartAddress = subTextStartAddress
    list.size = size
    list.currentPage = 1

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    ui[group.index[n]].list = list
	}
    }
}

DEFINE_FUNCTION INTEGER UIListGetNumberOfItems(CHAR deviceKey[]) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    return(ui[group.index[1]].list.numberOfItems)
}

DEFINE_FUNCTION INTEGER UIListGetNumberOfPages(CHAR deviceKey[]) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    return(ui[group.index[1]].list.numberOfPages)
}

DEFINE_FUNCTION INTEGER UIListGetCurrentPage(CHAR deviceKey[]) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    return(ui[group.index[1]].list.currentPage)
}

DEFINE_FUNCTION UIListUpdate(CHAR deviceKey[], INTEGER page) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	if(group.index[n]) {
	    if(ui[group.index[n]].list.listActive) {
		ui[group.index[n]].list.currentPage = UIListUpdateSend(ui[group.index[n]].device, ui[group.index[n]].list, page)
	    }
	}
    }
}

DEFINE_FUNCTION INTEGER UIListItemAdd(CHAR deviceKey[], CHAR itemKey[], CHAR text[], CHAR subText[], INTEGER icon) {
    STACK_VAR INTEGER nextIndex
    STACK_VAR INTEGER uiIndex

    uiIndex = UIGetDeviceIndexFromKey(deviceKey)
    nextIndex = UIListNextAvailableItemIndex(uiIndex)

    if(nextIndex) {
	ui[uiIndex].list.item[nextIndex].key = itemKey
	ui[uiIndex].list.item[nextIndex].defined = TRUE
	ui[uiIndex].list.item[nextIndex].text = text
	ui[uiIndex].list.item[nextIndex].subText = subText
	ui[uiIndex].list.item[nextIndex].icon = icon

	if(!ui[uiIndex].list.listActive) {
	    ui[uiIndex].list.listActive = TRUE
	}
    }

    UIListUpdateStatusInfo(uiIndex)

    return(nextIndex)
}

DEFINE_FUNCTION UIListItemSet(CHAR deviceKey[], CHAR itemKey[], CHAR text[], CHAR subText[], INTEGER icon, INTEGER index) {
    STACK_VAR INTEGER uiIndex

    uiIndex = UIGetDeviceIndexFromKey(deviceKey)

    if(index && uiIndex) {
	ui[uiIndex].list.item[index].key = itemKey
	ui[uiIndex].list.item[index].defined = TRUE
	ui[uiIndex].list.item[index].text = text
	ui[uiIndex].list.item[index].subText = subText
	ui[uiIndex].list.item[index].icon = icon

	if(!ui[uiIndex].list.listActive) {
	    ui[uiIndex].list.listActive = TRUE
	}
    }

    UIListUpdateStatusInfo(uiIndex)
}

DEFINE_FUNCTION INTEGER UIListPageUp(CHAR deviceKey[]) {
    STACK_VAR INTEGER uiIndex

    uiIndex = UIGetDeviceIndexFromKey(deviceKey)

    if(ui[uiIndex].list.currentPage > 1) {
	UIListUpdate(deviceKey, ui[uiIndex].list.currentPage - 1)
    }

    return(ui[uiIndex].list.currentPage)
}

DEFINE_FUNCTION INTEGER UIListPageDown(CHAR deviceKey[]) {
    STACK_VAR INTEGER uiIndex

    uiIndex = UIGetDeviceIndexFromKey(deviceKey)

    if(ui[uiIndex].list.currentPage < ui[uiIndex].list.numberOfPages) {
	UIListUpdate(deviceKey, ui[uiIndex].list.currentPage + 1)
    }

    return(ui[uiIndex].list.currentPage)
}

DEFINE_FUNCTION INTEGER UIListItemSelect(CHAR deviceKey[], INTEGER item) {
    STACK_VAR INTEGER uiIndex

    uiIndex = UIGetDeviceIndexFromKey(deviceKey)

    if(item) {
	if(ui[uiIndex].list.item[item].defined) {
	    ui[uiIndex].list.currentSelectedItem = item
	    return(item)
	} else {
	    return(0)
	}
    } else {
	ui[uiIndex].list.currentSelectedItem = 0
	return(0)
    }
}

DEFINE_FUNCTION INTEGER UIListItemSelectOnList(CHAR deviceKey[], INTEGER itemOnList) {
    STACK_VAR INTEGER uiIndex
    STACK_VAR INTEGER itemOffset

    uiIndex = UIGetDeviceIndexFromKey(deviceKey)

    if(itemOnList) {
	itemOffset = ui[uiIndex].list.size * (ui[uiIndex].list.currentPage - 1)
	if(ui[uiIndex].list.item[itemOnList + itemOffset].defined) {
	    ui[uiIndex].list.currentSelectedItem = itemOnList + itemOffset
	    return(ui[uiIndex].list.currentSelectedItem)
	} else {
	    return(0)
	}
    } else {
	ui[uiIndex].list.currentSelectedItem = 0
	return(0)
    }
}

DEFINE_FUNCTION CHAR[UI_LIST_ITEM_TEXT_MAX_LENGTH] UIListGetItemText(CHAR deviceKey[], INTEGER item) {
    STACK_VAR INTEGER uiIndex

    uiIndex = UIGetDeviceIndexFromKey(deviceKey)

    return(ui[uiIndex].list.item[item].text)
}

DEFINE_FUNCTION CHAR[UI_LIST_ITEM_TEXT_MAX_LENGTH] UIListGetItemSubText(CHAR deviceKey[], INTEGER item) {
    STACK_VAR INTEGER uiIndex

    uiIndex = UIGetDeviceIndexFromKey(deviceKey)

    return(ui[uiIndex].list.item[item].subText)
}

DEFINE_FUNCTION CHAR[UI_KEY_MAX_LENGTH] UIListGetItemKey(CHAR deviceKey[], INTEGER item) {
    STACK_VAR INTEGER uiIndex

    uiIndex = UIGetDeviceIndexFromKey(deviceKey)

    return(ui[uiIndex].list.item[item].key)
}

DEFINE_FUNCTION CHAR[UI_LIST_ITEM_TEXT_MAX_LENGTH] UIListGetHeader(CHAR deviceKey[]) {
    STACK_VAR INTEGER uiIndex

    uiIndex = UIGetDeviceIndexFromKey(deviceKey)

    return(ui[uiIndex].list.header)
}

DEFINE_FUNCTION INTEGER UIListIsActive(CHAR deviceKey[]) {
    STACK_VAR INTEGER uiIndex

    uiIndex = UIGetDeviceIndexFromKey(deviceKey)

    return(ui[uiIndex].list.listActive)
}

DEFINE_FUNCTION INTEGER UIListItemOnListIsSelected(CHAR deviceKey[], INTEGER itemOnList) {
    STACK_VAR INTEGER uiIndex
    STACK_VAR INTEGER itemOffset

    uiIndex = UIGetDeviceIndexFromKey(deviceKey)

    itemOffset = ui[uiIndex].list.size * (ui[uiIndex].list.currentPage - 1)

    if(ui[uiIndex].list.currentSelectedItem == (itemOnList + itemOffset)) {
	return(TRUE)
    } else {
	return(FALSE)
    }
}

DEFINE_FUNCTION INTEGER UIGetButtonHold(CHAR deviceKey[]) {
    STACK_VAR INTEGER n

    if(UICheckKeyForGroup(deviceKey)) {
	return(0)
    } else {
	return(ui[UIGetDeviceIndexFromKey(deviceKey)].buttonHold)
    }
}

DEFINE_FUNCTION UISetButtonHold(CHAR deviceKey[], INTEGER buttonValue) {
    STACK_VAR INTEGER n

    if(!UICheckKeyForGroup(deviceKey)) {
	ui[UIGetDeviceIndexFromKey(deviceKey)].buttonHold = buttonValue
    }
}

DEFINE_FUNCTION UIPasswordSessionStart(CHAR deviceKey[], CHAR password[], INTEGER displayTextJoin) {
    _UI_GROUP_MEMBERS group
    STACK_VAR INTEGER n

    UIInitGroupMembersType(group)

    if(UICheckKeyForGroup(deviceKey)) {
	group.name = deviceKey
	UIGetDeviceIndexesFromGroup(group)
    } else {
	group.index[1] = UIGetDeviceIndexFromKey(deviceKey)
    }

    if(LENGTH_STRING(password)) {
	for(n = 1; n <= MAX_LENGTH_ARRAY(group.index); n ++) {
	    if(group.index[n]) {
		ui[group.index[n]].password.password = password
		ui[group.index[n]].password.passwordAttempt = ''
		ui[group.index[n]].password.inSession = TRUE
		ui[group.index[n]].password.showingLastCharacter = FALSE
		ui[group.index[n]].password.displayTextJoin = displayTextJoin
		UITextSend(ui[group.index[n]].device, displayTextJoin, UI_STATE_ALL, '')
	    }
	}
    }
}

DEFINE_FUNCTION UIPasswordEnterCharacter(CHAR deviceKey[], CHAR character) {
    STACK_VAR INTEGER deviceIndex
    STACK_VAR CHAR temp[UI_PASSWORD_MAX_LENGTH]

    deviceIndex = UIGetDeviceIndexFromKey(deviceKey)

    if(deviceIndex) {
	if(ui[deviceIndex].password.inSession) {
	    temp = UIPasswordReturnAsMasked(ui[deviceIndex].password.passwordAttempt)
	    ui[deviceIndex].password.passwordAttempt = "ui[deviceIndex].password.passwordAttempt, character"
	    temp = "temp, character"
	    ui[deviceIndex].password.showingLastCharacter = TRUE
	    UITextSend(ui[deviceIndex].device, ui[deviceIndex].password.displayTextJoin, UI_STATE_ALL, temp)
	    if(TIMELINE_ACTIVE(UI_PASSWORD_TIMELINE_MASK)) {
		TIMELINE_KILL(UI_PASSWORD_TIMELINE_MASK)
	    }
	    TIMELINE_CREATE(UI_PASSWORD_TIMELINE_MASK, UI_TIMELINE_1_SECOND_REPEAT_TIME, LENGTH_ARRAY(UI_TIMELINE_1_SECOND_REPEAT_TIME), TIMELINE_ABSOLUTE, TIMELINE_ONCE)
	}
    }
}

DEFINE_FUNCTION UIPasswordDeleteCharacter(CHAR deviceKey[]) {
    STACK_VAR INTEGER deviceIndex
    STACK_VAR CHAR temp[UI_PASSWORD_MAX_LENGTH]

    deviceIndex = UIGetDeviceIndexFromKey(deviceKey)

    if(deviceIndex) {
	if(ui[deviceIndex].password.inSession) {
	    if(LENGTH_STRING(ui[deviceIndex].password.passwordAttempt)) {
		ui[deviceIndex].password.passwordAttempt = LEFT_STRING(ui[deviceIndex].password.passwordAttempt, LENGTH_STRING(ui[deviceIndex].password.passwordAttempt) - 1)
		UITextSend(ui[deviceIndex].device, ui[deviceIndex].password.displayTextJoin, UI_STATE_ALL, UIPasswordReturnAsMasked(ui[deviceIndex].password.passwordAttempt))
	    }
	}
    }
}

DEFINE_FUNCTION UIPasswordClearDisplay(CHAR deviceKey[]) {
    STACK_VAR INTEGER deviceIndex
    STACK_VAR CHAR temp[UI_PASSWORD_MAX_LENGTH]

    deviceIndex = UIGetDeviceIndexFromKey(deviceKey)

    if(deviceIndex) {
	if(ui[deviceIndex].password.inSession) {
	    if(LENGTH_STRING(ui[deviceIndex].password.passwordAttempt)) {
		ui[deviceIndex].password.passwordAttempt = ''
		UITextSend(ui[deviceIndex].device, ui[deviceIndex].password.displayTextJoin, UI_STATE_ALL, ui[deviceIndex].password.passwordAttempt)
	    }
	}
    }
}

DEFINE_FUNCTION INTEGER UIPasswordTestForMatch(CHAR deviceKey[]) {
    STACK_VAR INTEGER deviceIndex
    STACK_VAR INTEGER result

    result = 0
    deviceIndex = UIGetDeviceIndexFromKey(deviceKey)

    if(deviceIndex) {
	if(ui[deviceIndex].password.inSession) {
	    if(ui[deviceIndex].password.password == ui[deviceIndex].password.passwordAttempt) {
		result = TRUE
	    }
	}
    }

    return result
}

DEFINE_FUNCTION UIPasswordSessionReset(CHAR deviceKey[]) {
    STACK_VAR INTEGER deviceIndex

    deviceIndex = UIGetDeviceIndexFromKey(deviceKey)

    if(deviceIndex) {
	if(ui[deviceIndex].password.inSession) {
	    ui[deviceIndex].password.password = ''
	    ui[deviceIndex].password.passwordAttempt = ''
	    ui[deviceIndex].password.inSession = FALSE
	    ui[deviceIndex].password.showingLastCharacter = FALSE
	    UITextSend(ui[deviceIndex].device, ui[deviceIndex].password.displayTextJoin, UI_STATE_ALL, ui[deviceIndex].password.passwordAttempt)
	    if(TIMELINE_ACTIVE(UI_PASSWORD_TIMELINE_MASK)) {
		TIMELINE_KILL(UI_PASSWORD_TIMELINE_MASK)
	    }
	    ui[deviceIndex].password.displayTextJoin = 0
	}
    }
}


