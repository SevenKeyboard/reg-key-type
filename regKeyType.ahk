#Requires AutoHotkey v2.0.0+
;==============================================================
; regKeyType — Gets the registry value type for a given key/value name
;
; GitHub: https://github.com/SevenKeyboard/reg-key-type
; Author: SevenKeyboard Ltd. (2026)
; License: The Unlicense
;
; Documentation / References:
;   RegRead
;     https://www.autohotkey.com/docs/v2/lib/RegRead.htm#ExType
;==============================================================
class VersionManager_regKeyType
{
    static _ := this._init()
    static _init()    {
        global
        REGKEYTYPE_VERSION := "1.0.0"
    }
}
regKeyType(rootKey, subKey, valueName)    {
    loop reg, rootKey "\" subKey
        if (A_LoopRegName=valueName)
            return A_LoopRegType
    return "Error"
}