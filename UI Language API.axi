PROGRAM_NAME='UI Language API v1-01'
(***********************************************************)
(*  FILE CREATED ON: 01/31/2013  AT: 14:58:57              *)
(***********************************************************)
(*  FILE_LAST_MODIFIED_ON: 03/08/2013  AT: 11:40:48        *)
(*******************************************************************************)
(*                                                                             *)
(*     _____            _              _  ____             _                   *)
(*    |     | ___  ___ | |_  ___  ___ | ||    \  ___  ___ |_| ___  ___  ___    *)
(*    |   --|| . ||   ||  _||  _|| . || ||  |  || -_||_ -|| || . ||   ||_ -|   *)
(*    |_____||___||_|_||_|  |_|  |___||_||____/ |___||___||_||_  ||_|_||___|   *)
(*                                                           |___|             *)
(*                                                                             *)
(*                   © Control Designs Software Ltd (2012)                     *)
(*                         www.controldesigns.co.uk                            *)
(*                                                                             *)
(*      Tel: +44 (0)1753 314 660     Email: support@controldesigns.co.uk       *)
(*                                                                             *)
(*******************************************************************************)
(*                                                                             *)
(*                           UI Language API v1-01                             *)
(*                       for use with UI Kit API v1-01                         *)
(*                                                                             *)
(*            Written by Mike Jobson (Control Designs Software Ltd)            *)
(*                                                                             *)
(** REVISION HISTORY ***********************************************************)
(*                                                                             *)
(*  v1-01 (beta)                                                               *)
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

UI_MAX_LANGUAGES					= 2
UI_MAX_LANGUAGE_BTN_TEXT_LENGTH				= 255
UI_MAX_LANGUAGE_STORAGE_SIZE				= 100

DEFINE_TYPE

STRUCT _btnLanguageText {
    INTEGER address
    CHAR uiDeviceKey[UI_KEY_MAX_LENGTH]
    INTEGER port
    INTEGER state
    INTEGER defined
    CHAR text[UI_MAX_LANGUAGES][UI_MAX_LANGUAGE_BTN_TEXT_LENGTH]
}

DEFINE_VARIABLE

_btnLanguageText uiLanguageBtnText[UI_MAX_LANGUAGE_STORAGE_SIZE]

DEFINE_FUNCTION UILanguageTypeInit(_btnLanguageText btnLangText) {
    STACK_VAR INTEGER lang
    
    btnLangText.address = 0
    btnLangText.uiDeviceKey = ''
    btnLangText.defined = FALSE
    btnLangText.port = 0
    btnLangText.state = 0
    for(lang = 1; lang <= MAX_LENGTH_ARRAY(btnLangText.text); lang ++) {
	btnLangText.text[lang] = ''
    }
}

DEFINE_FUNCTION UILanguageInitAll() {
    STACK_VAR INTEGER n
    STACK_VAR INTEGER lang
    
    for(n = 1; n <= MAX_LENGTH_ARRAY(uiLanguageBtnText); n ++) {
	UILanguageTypeInit(uiLanguageBtnText[n])
    }
}

DEFINE_FUNCTION UILanguageSet(CHAR uiDeviceKey[UI_KEY_MAX_LENGTH], CHAR uiDeviceVarKeyForLanguage[], INTEGER language) {
    STACK_VAR INTEGER n
    STACK_VAR CHAR popup[UI_POPUP_NAME_MAX_LENGTH]
    
    if(language && language <= UI_MAX_LANGUAGES) {
	UISetVarValue(uiDeviceKey, uiDeviceVarKeyForLanguage, ItoA(language))
	
	for(n = 1; n <= MAX_LENGTH_ARRAY(uiLanguageBtnText); n ++) {
	    if(uiLanguageBtnText[n].uiDeviceKey == uiDeviceKey OR uiLanguageBtnText[n].uiDeviceKey == UIGetGroupKeyFromKey(uiDeviceKey)) {
		if(uiLanguageBtnText[n].port) {
		    UITextToPort(uiDeviceKey, uiLanguageBtnText[n].port, uiLanguageBtnText[n].address, uiLanguageBtnText[n].state, uiLanguageBtnText[n].text[language])
		} else {
		    UIText(uiDeviceKey, uiLanguageBtnText[n].address, uiLanguageBtnText[n].state, uiLanguageBtnText[n].text[language])
		}
	    }
	}
    }
}

DEFINE_FUNCTION INTEGER UILanguageBtnTextDefine(CHAR uiDeviceKey[], INTEGER port, INTEGER btnAddress, INTEGER state, CHAR language1[], CHAR language2[]) {
    STACK_VAR INTEGER n
    STACK_VAR INTEGER result
    
    result = 0
    
    for(n = 1; n <= MAX_LENGTH_ARRAY(uiLanguageBtnText); n ++) {
	if(!uiLanguageBtnText[n].defined) {
	    result = n
	    break
	}
    }
    
    uiDeviceKey = UIGetGroupKeyFromKey(uiDeviceKey)
    
    if(result) {
	uiLanguageBtnText[result].defined = TRUE
	uiLanguageBtnText[result].address = btnAddress
	uiLanguageBtnText[result].port = port
	uiLanguageBtnText[result].state = state
	uiLanguageBtnText[result].uiDeviceKey = uiDeviceKey
	uiLanguageBtnText[result].text[1] = language1
	uiLanguageBtnText[result].text[2] = language2
    }
    
    return result
}

