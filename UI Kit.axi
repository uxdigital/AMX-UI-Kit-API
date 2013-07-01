PROGRAM_NAME='UI Kit'
(***********************************************************)
(*  FILE_LAST_MODIFIED_ON: 06/19/2013  AT: 14:51:29        *)
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
(*                         UI Kit v1-01 (include)                              *)
(*                     for use with 'UI Kit API v1-01'                         *)
(*                                                                             *)
(*            Written by Mike Jobson (Control Designs Software Ltd)            *)
(*                                                                             *)
(** REVISION HISTORY ***********************************************************)
(*                                                                             *)
(*  v1-01 (beta 2)                                                             *)
(*  First release developed in beta only at this point in time                 *)
(*  No known issues                                                            *)
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
(*  The above copyright notice and this permission notice shall be included in *)
(*  all copies or substantial portions of the Software.                        *)
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

INTEGER UI_VAR_MAX_VALUE_LENGTH				= 255

INTEGER UI_LIST_ITEM_TEXT_MAX_LENGTH			= 50
INTEGER UI_LIST_MAX_ITEMS				= 100

INTEGER UI_PASSWORD_MAX_LENGTH				= 50

LONG UI_TIMELINE_1_SECOND_REPEAT_TIME[]			= { 1000 }
LONG UI_TIMEOUT_CHECK_TIMELINE				= 3
LONG UI_PASSWORD_TIMELINE_MASK				= 4

INTEGER UI_MAX_POPUPS_FOR_PAGE_TYPE			= 10
INTEGER UI_MAX_PAGES					= 100

DEFINE_TYPE

STRUCT _UI_PASSWORD_SESSION {
    CHAR password[UI_PASSWORD_MAX_LENGTH]
    CHAR passwordAttempt[UI_PASSWORD_MAX_LENGTH]
    INTEGER showingLastCharacter
    INTEGER inSession
    INTEGER displayTextJoin
}

STRUCT _UI_VAR {
    INTEGER id
    INTEGER defined
    CHAR key[UI_KEY_MAX_LENGTH]
    CHAR value[UI_VAR_MAX_VALUE_LENGTH]
}

STRUCT _UI_LIST_ITEM {
    INTEGER id
    INTEGER defined
    CHAR key[UI_KEY_MAX_LENGTH]
    CHAR text[UI_LIST_ITEM_TEXT_MAX_LENGTH]
    CHAR subText[UI_LIST_ITEM_TEXT_MAX_LENGTH]
    INTEGER icon
}

STRUCT _UI_LIST {
    INTEGER listActive
    INTEGER itemStartAddress
    INTEGER itemSubTextStartAddress
    INTEGER currentSelectedItem
    INTEGER numberOfItems
    INTEGER size
    INTEGER numberOfPages
    INTEGER currentPage
    CHAR header[UI_LIST_ITEM_TEXT_MAX_LENGTH]
    _UI_LIST_ITEM item[UI_LIST_MAX_ITEMS]
}

STRUCT _UI_DATA {
    INTEGER id
    INTEGER defined
    DEV device
    CHAR key[UI_KEY_MAX_LENGTH]
    CHAR name[UI_NAME_MAX_LENGTH]
    CHAR group[UI_GROUP_NAME_MAX_LENGTH]
    CHAR pageCurrent[UI_PAGE_NAME_MAX_LENGTH]
    INTEGER pageTimeout
    INTEGER pageTimeoutCounting
    CHAR pagePrevious[UI_PAGE_NAME_MAX_LENGTH]
    CHAR pageOnTimeout[UI_PAGE_NAME_MAX_LENGTH]
    INTEGER currentSelectedSource
    INTEGER currentSelectedSubSource
    INTEGER buttonHold
    _UI_VAR var[UI_MAX_NUMBER_OF_VARS]
    _UI_ACTIONSHEET actionSheet
    _UI_LIST list
    _UI_PASSWORD_SESSION password
}

STRUCT _UI_PAGE {
    INTEGER id
    INTEGER defined
    CHAR name[255]
    CHAR popups[UI_MAX_POPUPS_FOR_PAGE_TYPE][255]
    INTEGER numberOfPopupsDefined
}


DEFINE_VARIABLE

VOLATILE _UI_DATA ui[UI_MAX_DEVICES]
VOLATILE _UI_PAGE uiPages[UI_MAX_PAGES]

DEFINE_FUNCTION UIInitData() {
    STACK_VAR INTEGER n
    STACK_VAR INTEGER v

    for(n = 1; n <= MAX_LENGTH_ARRAY(ui); n ++) {
	ui[n].id = n
	ui[n].defined = FALSE
	ui[n].key = ''
	ui[n].group = ''
	ui[n].name = ''
	ui[n].device = 0:0:0
	ui[n].pageCurrent = ''
	ui[n].pagePrevious = ''
	ui[n].pageOnTimeout = ''
	ui[n].pageTimeout = 0
	ui[n].pageTimeoutCounting = 0
	ui[n].currentSelectedSource = 0
	ui[n].currentSelectedSubSource = 0
	ui[n].buttonHold = 0
	for(v = 1; v <= MAX_LENGTH_ARRAY(ui[n].var); v ++) {
	    ui[n].var[v].id = v
	    ui[n].var[v].defined = FALSE
	    ui[n].var[v].key = ''
	    ui[n].var[v].value = ''
	}
	UIListInitStruct(ui[n].list)
	UIActionSheetInit(ui[n].actionSheet)
	ui[n].password.password = ''
	ui[n].password.passwordAttempt = ''
	ui[n].password.showingLastCharacter = 0
	ui[n].password.inSession = 0
    }
}

DEFINE_FUNCTION UIInitPages() {
    STACK_VAR INTEGER n
    STACK_VAR INTEGER p
    
    for(n = 1; n <= MAX_LENGTH_ARRAY(uiPages); n ++) {
	uiPages[n].id = n
	uiPages[n].defined = FALSE
	uiPages[n].name = ''
	for(p = 1; p <= MAX_LENGTH_ARRAY(uiPages[n].popups); p ++) {
	    uiPages[n].popups[p] = ''
	}
	uiPages[n].numberOfPopupsDefined = 0
    }
}

DEFINE_FUNCTION INTEGER UIGetNextUndefinedVarIndex(INTEGER deviceIndex) {
    STACK_VAR INTEGER n
    STACK_VAR INTEGER result

    result = 0

    for(n = 1; n <= MAX_LENGTH_ARRAY(ui[deviceIndex].var); n ++) {
	if(!ui[deviceIndex].var[n].defined) {
	    result = n
	    break
	}
    }

    return(result)
}

DEFINE_FUNCTION INTEGER UIRegisterVarForDeviceAtIndex(INTEGER deviceIndex, CHAR varKey[], CHAR initVal[]) {
    STACK_VAR INTEGER nextVarIndex

    nextVarIndex = UIGetNextUndefinedVarIndex(deviceIndex)

    if(nextVarIndex) {
	ui[deviceIndex].var[nextVarIndex].defined = TRUE
	ui[deviceIndex].var[nextVarIndex].key = varKey
	ui[deviceIndex].var[nextVarIndex].value = initVal
    }

    return(nextVarIndex)
}

DEFINE_FUNCTION INTEGER UIGetIndexOfVarFromKey(INTEGER deviceIndex, CHAR varKey[]) {
    STACK_VAR INTEGER n
    STACK_VAR INTEGER result

    result = 0

    for(n = 1; n <= MAX_LENGTH_ARRAY(ui[deviceIndex].var); n++) {
	if(ui[deviceIndex].var[n].key == varKey) {
	    result = n
	    break
	}
    }

    return(result)
}

DEFINE_FUNCTION UISetVarForDeviceAtIndex(INTEGER deviceIndex, CHAR varKey[], CHAR value[]) {
    STACK_VAR INTEGER varIndex

    varIndex = UIGetIndexOfVarFromKey(deviceIndex, varKey)

    if(varIndex) {
	ui[deviceIndex].var[varIndex].value = value
    }
}

DEFINE_FUNCTION CHAR[UI_VAR_MAX_VALUE_LENGTH] UIGetVarForDeviceAtIndex(INTEGER deviceIndex, CHAR varKey[]) {
    STACK_VAR INTEGER varIndex
    STACK_VAR CHAR result[UI_VAR_MAX_VALUE_LENGTH]

    result = ''

    varIndex = UIGetIndexOfVarFromKey(deviceIndex, varKey)

    if(varIndex) {
	result = ui[deviceIndex].var[varIndex].value
    }

    return(result)
}

DEFINE_FUNCTION UIPageSend(DEV uiDevice, CHAR pageName[]) {
    SEND_COMMAND uiDevice, "'PAGE-', pageName"
}

DEFINE_FUNCTION UIPageSendWithAnimation(DEV uiDevice, CHAR pageName[], CHAR animationType[], INTEGER origin, INTEGER duration) {
    SEND_COMMAND uiDevice, "'^AFP-', pageName, ',', animationType, ',', ItoA(origin), ',', ItoA(duration)"
}

DEFINE_FUNCTION INTEGER UIPageGetIndexForID(integer id) {
    STACK_VAR INTEGER n
    STACK_VAR INTEGER result
    
    result = 0
    
    for(n = 1; n <= MAX_LENGTH_ARRAY(uiPages); n ++) {
	if(uiPages[n].id == id) {
	    result = n
	    break
	}
    }
    
    return result
}

DEFINE_FUNCTION UIPopupSend(DEV uiDevice, CHAR popupName[], CHAR pageName[], INTEGER show, INTEGER timeOut) {
    STACK_VAR CHAR temp[255]

    if(show) {
	temp = '@PPN-'
	SEND_COMMAND uiDevice, "'@PPT-', popupName, ';', ItoA(timeOut)"
    } else {
	temp = '@PPF-'
    }

    temp = "temp, popupName"

    if(LENGTH_STRING(pageName)) {
	temp = "temp, ';', pageName"
    }

    SEND_COMMAND uiDevice, temp
}

DEFINE_FUNCTION UIPopupSetupSend(DEV uiDevice, _UI_POPUP popup) {
    SEND_COMMAND uiDevice, "'@PHE-', popup.name, ';', popup.hideEffect.name"
    
    if(LENGTH_STRING(popup.hideEffect.name)) {
	SEND_COMMAND uiDevice, "'@PHP-', popup.name, ';', ItoA(popup.hideEffect.positon.left), ',', ItoA(popup.hideEffect.positon.top)"
	SEND_COMMAND uiDevice, "'@PHT-', popup.name, ';', ItoA(popup.hideEffect.time)"    
    }
    
    SEND_COMMAND uiDevice, "'@PSE-', popup.name, ';', popup.showEffect.name"
    
    if(LENGTH_STRING(popup.showEffect.name)) {
	SEND_COMMAND uiDevice, "'@PSP-', popup.name, ';', ItoA(popup.showEffect.positon.left), ',', ItoA(popup.showEffect.positon.top)"
	SEND_COMMAND uiDevice, "'@PST-', popup.name, ';', ItoA(popup.showEffect.time)"
    }
    
    SEND_COMMAND uiDevice, "'@PPT-', popup.name, ';', ItoA(popup.timeOut)"
}

DEFINE_FUNCTION UIPopupToGroupSend(DEV uiDevice, CHAR popupName[], CHAR groupName[]) {
    SEND_COMMAND uiDevice, "'@APG-', popupName, ';', groupName"
}

DEFINE_FUNCTION UIPopupsClearSend(DEV uiDevice) {
    SEND_COMMAND uiDevice, "'@PPX'"
}

DEFINE_FUNCTION UIPopupsClearOnPageSend(DEV uiDevice, CHAR pageName[]) {
    SEND_COMMAND uiDevice, "'@PPA-', pageName"
}
/*
DEFINE_FUNCTION UITextSend(DEV uiDevice, INTEGER address, CHAR text[]) {
    SEND_COMMAND uiDevice, "'!T', address, text"
}
*/
DEFINE_FUNCTION UITextSend(DEV uiDevice, INTEGER address, INTEGER state, CHAR text[]) {
    SEND_COMMAND uiDevice, "'^BMF-', ItoA(address), ',', ItoA(state), ',%T', text"
}

DEFINE_FUNCTION UIIconSlotSend(DEV uiDevice, INTEGER address, INTEGER state, INTEGER slot) {
    SEND_COMMAND uiDevice, "'^BMF-', ItoA(address), ',', ItoA(state), ',%I', FORMAT('%02d', slot)"
}

DEFINE_FUNCTION UITextColourSend(DEV uiDevice, INTEGER address, INTEGER state, _UI_COLOUR colour) {
    SEND_COMMAND uiDevice, "'^BMF-', ItoA(address), ',', ItoA(state), ',%CT#', FORMAT('%02X', colour.red), FORMAT('%X', colour.green), FORMAT('%X', colour.blue)"
}

DEFINE_FUNCTION UIBorderColourSend(DEV uiDevice, INTEGER address, INTEGER state, _UI_COLOUR colour) {
    SEND_COMMAND uiDevice, "'^BMF-', ItoA(address), ',', ItoA(state), ',%CB#', FORMAT('%02X', colour.red), FORMAT('%X', colour.green), FORMAT('%X', colour.blue)"
}

DEFINE_FUNCTION UIFillColourSend(DEV uiDevice, INTEGER address, INTEGER state, _UI_COLOUR colour) {
    SEND_COMMAND uiDevice, "'^BMF-', ItoA(address), ',', ItoA(state), ',%CF#', FORMAT('%02X', colour.red), FORMAT('%X', colour.green), FORMAT('%X', colour.blue)"
}

DEFINE_FUNCTION UIFontSend(DEV uiDevice, INTEGER address, INTEGER state, INTEGER fontID) {
    SEND_COMMAND uiDevice, "'^BMF-', ItoA(address), ',', ItoA(state), ',%F', FORMAT('%02d', fontID)"
}

DEFINE_FUNCTION UIButtonHideSend(DEV uiDevice, INTEGER address) {
    SEND_COMMAND uiDevice, "'^SHO-', ItoA(address), ',0'"
}

DEFINE_FUNCTION UIButtonShowSend(DEV uiDevice, INTEGER address) {
    SEND_COMMAND uiDevice, "'^SHO-', ItoA(address), ',1'"
}

DEFINE_FUNCTION UIButtonSizeSend(DEV uiDevice, INTEGER address, INTEGER left, INTEGER top, INTEGER right, INTEGER bottom) {
    SEND_COMMAND uiDevice, "'^BMF-', ItoA(address), ',', ItoA(0), ',%R', ItoA(left), ',', ItoA(top), ',', ItoA(right), ',', ItoA(bottom)"
}

DEFINE_FUNCTION UITextAlignAbsoluteSend(DEV uiDevice, INTEGER address, INTEGER state, INTEGER left, INTEGER top) {
    SEND_COMMAND uiDevice, "'^BMF-', ItoA(address), ',', ItoA(state), ',%JT0,', ItoA(left), ',', ItoA(top)"
}

DEFINE_FUNCTION UILevelSend(DEV uiDevice, INTEGER levelAddress, INTEGER levelVal) {
    SEND_LEVEL uiDevice, levelAddress, levelVal
}

DEFINE_FUNCTION INTEGER UIGetNumberOfActionSheetButtons(_UI_ACTIONSHEET actionSheet) {
    STACK_VAR INTEGER n
    STACK_VAR INTEGER result

    result = 0

    for(n = 1; n <= MAX_LENGTH_ARRAY(actionSheet.buttonChoice); n ++) {
	if(LENGTH_STRING(actionSheet.buttonChoice[n].title)) {
	    result ++
	} else {
	    break
	}
    }

    return(result)
}

DEFINE_FUNCTION UIWakeSend(DEV uiDevice) {
    SEND_COMMAND uiDevice, "'WAKE'"
}

DEFINE_FUNCTION UIPageTrackingEnableSend(DEV uiDevice) {
    SEND_COMMAND uiDevice, "'TPAGEON'"
}

DEFINE_FUNCTION UIListInitStruct(_UI_LIST list) {
    STACK_VAR INTEGER n

    list.currentSelectedItem = 0
    list.header = ''
    list.itemStartAddress = 0
    list.itemSubTextStartAddress = 0
    list.listActive = 0
    list.size = 0
    list.currentPage = 0
    list.numberOfItems = 0
    list.numberOfPages = 0
    for(n = 1; n <= MAX_LENGTH_ARRAY(list.item); n ++) {
	list.item[n].defined = 0
	list.item[n].id = n
	list.item[n].key = ''
	list.item[n].text = ''
	list.item[n].subText = ''
	list.item[n].icon = 0
    }
}

DEFINE_FUNCTION INTEGER UIListUpdateSend(DEV uiDevice, _UI_LIST list, INTEGER page) {
    STACK_VAR INTEGER n
    STACK_VAR INTEGER listItem
    STACK_VAR INTEGER startAddress
    STACK_VAR INTEGER endAddress
    STACK_VAR INTEGER itemOffset

    startAddress = list.itemStartAddress
    endAddress = list.itemStartAddress + (list.size - 1)
    listItem = 0;

    if(page > list.numberOfPages) {
	page = list.numberOfPages
    }

    itemOffset = list.size * (page - 1)

    for(n = startAddress; n <= endAddress; n ++) {
	listItem ++
	UITextSend(uiDevice, n, UI_STATE_ALL, list.item[listItem + itemOffset].text)
	UIIconSlotSend(uiDevice, n, UI_STATE_ALL, list.item[listItem + itemOffset].icon)
    }

    startAddress = list.itemSubTextStartAddress
    endAddress = list.itemSubTextStartAddress + (list.size - 1)
    listItem = 0;

    for(n = startAddress; n <= endAddress; n ++) {
	listItem ++
	UITextSend(uiDevice, n, UI_STATE_ALL, list.item[listItem + itemOffset].subText)
    }

    return(page)
}

DEFINE_FUNCTION INTEGER UIListNextAvailableItemIndex(INTEGER uiDataIndex) {
    STACK_VAR INTEGER result
    STACK_VAR INTEGER n

    result = 0

    for(n = 1; n <= MAX_LENGTH_ARRAY(ui[uiDataIndex].list.item); n ++) {
	if(!ui[uiDataIndex].list.item[n].defined) {
	    result = n
	    break
	}
    }

    return(result)
}

DEFINE_FUNCTION UIListUpdateStatusInfo(INTEGER uiDataIndex) {
    STACK_VAR INTEGER n
    STACK_VAR INTEGER count

    count = 0

    for(n = 1; n <= MAX_LENGTH_ARRAY(ui[uiDataIndex].list.item); n ++) {
	if(ui[uiDataIndex].list.item[n].defined) {
	    count ++
	} else {
	    break
	}
    }

    ui[uiDataIndex].list.numberOfItems = count

    ui[uiDataIndex].list.numberOfPages = ui[uiDataIndex].list.numberOfItems / ui[uiDataIndex].list.size

    if(ui[uiDataIndex].list.numberOfItems MOD ui[uiDataIndex].list.size) {
	ui[uiDataIndex].list.numberOfPages ++
    }
}

DEFINE_FUNCTION CHAR[UI_PASSWORD_MAX_LENGTH] UIPasswordReturnAsMasked(CHAR password[]) {
    STACK_VAR INTEGER n
    STACK_VAR CHAR result[UI_PASSWORD_MAX_LENGTH]

    result = ''

    for(n = 1; n <= LENGTH_STRING(password); n ++) {
	result = "result, '*'"
    }

    return result
}

DEFINE_START

UIInitData()
UIInitPages()
UserInterfacesShouldRegister()
UserInterfaceVarsShouldRegister()
wait 10 {
    TIMELINE_CREATE(UI_TIMEOUT_CHECK_TIMELINE, UI_TIMELINE_1_SECOND_REPEAT_TIME, LENGTH_ARRAY(UI_TIMELINE_1_SECOND_REPEAT_TIME), TIMELINE_ABSOLUTE, TIMELINE_REPEAT)
}

DEFINE_EVENT

TIMELINE_EVENT[UI_TIMEOUT_CHECK_TIMELINE] {
    STACK_VAR INTEGER n

    for(n = 1; n <= MAX_LENGTH_ARRAY(ui); n ++) {
	if(ui[n].defined) {
	    if(ui[n].pageTimeoutCounting) {
		ui[n].pageTimeoutCounting --

		if(ui[n].pageTimeoutCounting == 0) {
		    ui[n].pageTimeout = 0
		    if(LENGTH_STRING(ui[n].pageOnTimeout)) {
			UIPageSend(ui[n].device, ui[n].pageOnTimeout)
			ui[n].pageCurrent = ui[n].pageOnTimeout
		    } else {
			UIPageSend(ui[n].device, ui[n].pagePrevious)
			ui[n].pageCurrent = ui[n].pagePrevious
		    }
		    ui[n].pagePrevious = ''
		}
	    }
	}
    }
}

TIMELINE_EVENT[UI_PASSWORD_TIMELINE_MASK] {
    STACK_VAR INTEGER n

    for(n = 1; n <= MAX_LENGTH_ARRAY(ui); n ++) {
	if(ui[n].password.inSession) {
	    if(ui[n].password.showingLastCharacter) {
		UITextSend(ui[n].device, ui[n].password.displayTextJoin, UI_STATE_ALL, UIPasswordReturnAsMasked(ui[n].password.passwordAttempt))
		TIMELINE_KILL(UI_PASSWORD_TIMELINE_MASK)
	    }
	}
    }
}