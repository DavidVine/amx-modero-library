PROGRAM_NAME='amx-modero-control'

#if_not_defined __AMX_MODERO_CONTROL__
#define __AMX_MODERO_CONTROL__

/*
 * --------------------
 * amx-modero-control
 *
 * For usage, check out the readme for the amx-modero-library.
 * --------------------
 */

define_constant

char VERSION_AMX_MODERO_CONTROL[] = 'v0.9.0'

#WARN '@TODO expand MODERO_G5_DEVICE_IDS to cover all G5 devices'
integer MODERO_G5_DEVICE_IDS[] = {
	$019f,	// MXT-701
	$0199,	// MXT-1901-PAN
	$0196	// MXT-2001-PAN
}


/*
 * --------------------
 * Include files
 * --------------------
 */

#include 'amx-modero-api'
#include 'amx-device-control'




/*
 * --------------------
 * Function Naming Format
 *
 * moderoRequestXXXXXXXX
 *  - call the moderoRequest functions to request information from a Modero.
 *
 * moderoSetXXXXXXX
 *  - call the moderoSet functions to set a value on a Modero.
 *
 * moderoEnableXXXXXXX
 *  - call the moderoEnable functions to enable a setting on the Modero which can be enabled or disabled.
 *
 * moderoDisableXXXXXXX
 *  - call the moderoDisable functions to disable a setting on the Modero which can be enabled or disabled.
 *
 * moderoToggleXXXXXX
 * - call the moderoCycle functions to toggle a setting on the Modero from enabled to disabled or vice versa.
 * --------------------
 */







/*
 * --------------------
 * Page functions
 * --------------------
 */

/*
 * Function:    moderoSetPage
 *
 * Arguments:   dev panel - touch panel
 *              char pageName[] - page name (1-50 ASCII characters)
 *
 * Description: Flip to a page with a specified page name. If the page name is
 *              empty, the panel flips to the previous page.
 */
define_function moderoSetPage (dev panel, char pageName[])
{
	if (moderoIsG5Panel(panel))
	{
		sendCommand (panel, "MODERO_COMMAND_PAGE_FLIP_G5,pageName")
	}
	else
	{
		sendCommand (panel, "MODERO_COMMAND_PAGE_FLIP,pageName")
	}
}

/*
 * Function:    moderoSetPagePrevious
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Flip to the previous page.
 */
define_function moderoSetPagePrevious (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_PAGE_FLIP")
}

/*
 * Function:    moderoSetPageAnimated
 *
 * Arguments:   dev panel - touch panel
 *              char pageName[] - page name
 *              char pageFlipAnimation[] - page flip animation
 *              integer duration - animation duration, in tenths of seconds
 *
 * Description: Flip to a page with a specified page name. If the page name is
 *              empty, the panel flips to the previous page.
 */
define_function moderoSetPageAnimated (dev panel, char pageName[], char pageFlipAnimation[], integer duration)
{
	sendCommand (panel, "MODERO_COMMAND_PAGE_FLIP_ANIMATED, pageName, pageFlipAnimation, itoa(duration)")
}


/*
 * --------------------
 * Popup functions
 * --------------------
 */

/*
 * Function:    moderoAddPopupToGroup
 *
 * Arguments:   dev panel - touch panel
 *              char popupName[] - popup page name (1-50 ASCII characters)
 *              char popupGroupName[] - popup group name (1-50 ASCII characters)
 *
 * Description: Add a specific popup page to a specified popup group if it does
 *              not already exist. If the new popup is added to a group which has a
 *              popup displayed on the current page along with the new pop-up, the
 *              displayed popup will be hidden and the new popup will be displayed.
 */
define_function moderoAddPopupToGroup (dev panel, char popupName[], char popupGroupName[])
{
	sendCommand (panel, "MODERO_COMMAND_POPUP_ADD_TO_GROUP,popupName,';',popupGroupName")
}

/*
 * Function:    moderoClearAllPopupsFromGroup
 *
 * Arguments:   dev panel - touch panel
 *              char popupGroupName[] - popup group name (1-50 ASCII characters)
 *
 * Description: Clear all popup pages from specified popup group.
 */
define_function moderoClearAllPopupsFromGroup (dev panel, char popupGroupName[])
{
	sendCommand (panel, "MODERO_COMMAND_POPUP_GROUP_CLEAR,popupGroupName")
}

/*
 * Function:    moderoDeletePopupFromGroup
 *
 * Arguments:   dev panel - touch panel
 *              char popupName[] - popup page name (1-50 ASCII characters)
 *              char popupGroupName[] - popup group name (1-50 ASCII characters)
 *
 * Description: Delete a specific popup page from specified popup group if it exists.
 */
define_function moderoDeletePopupFromGroup (dev panel, char popupName[], char popupGroupName[])
{
	sendCommand (panel, "MODERO_COMMAND_POPUP_DELETE_FROM_GROUP,popupName,';',popupGroupName")
}

/*
 * Function:    moderoEnablePopupLocationResetFlag
 *
 * Arguments:   dev panel - touch panel
 *              char popupName[] - popup page name (1-50 ASCII characters)
 *
 * Description: Enable the popup location reset flag. If the flag is set, the
 *              popup will return to its default location on show instead of its last
 *              drag location.
 */
define_function moderoEnablePopupLocationResetFlag (dev panel, char popupName[])
{
	sendCommand (panel, "MODERO_COMMAND_POPUP_LOCATION_RESET_FLAG,popupName,';','1'")
}

/*
 * Function:    moderoDisablePopupLocationResetFlag
 *
 * Arguments:   dev panel - touch panel
 *              char popupName[] - popup page name (1-50 ASCII characters)
 *
 * Description: Disable the popup location reset flag. If the flag is not set,
 *              the popup will return to its default location on show instead of its
 *              last drag location.
 */
define_function moderoDisablePopupLocationResetFlag (dev panel, char popupName[])
{
	sendCommand (panel, "MODERO_COMMAND_POPUP_LOCATION_RESET_FLAG,popupName,';','0'")
}

/*
 * Function:    moderoTogglePopup
 *
 * Arguments:   dev panel - touch panel
 *              char popupName[] - popup page name (1-50 ASCII characters)
 *
 * Description: Toggle a specific popup page on a the current page.
 */
define_function moderoTogglePopup (dev panel, char popupName[])
{
	sendCommand (panel, "MODERO_COMMAND_POPUP_TOGGLE,popupName")
}

/*
 * Function:    moderoTogglePopupOnPage
 *
 * Arguments:   dev panel - touch panel
 *              char popupName[] - popup page name (1-50 ASCII characters)
 *              char pageName[] - page name (1-50 ASCII characters)
 *
 * Description: Toggle a specific popup page on a specified page.
 */
define_function moderoTogglePopupOnPage (dev panel, char popupName[], char pageName[])
{
	sendCommand (panel, "MODERO_COMMAND_POPUP_TOGGLE,popupName,';',pageName")
}

/*
 * Function:    moderoEnablePopupModality
 *
 * Arguments:   dev panel - touch panel
 *              char popupName[] - popup page name (1-50 ASCII characters)
 *
 * Description: Set the modality of a specific popup page to modal.
 */
define_function moderoEnablePopupModality (dev panel, char popupName[])
{
	sendCommand (panel, "MODERO_COMMAND_POPUP_MODAL,popupName,';',MODERO_MODALITY_MODAL")
}

/*
 * Function:    moderoDisablePopupModality
 *
 * Arguments:   dev panel - touch panel
 *              char popupName[] - popup page name (1-50 ASCII characters)
 *
 * Description: Set the modality of a specific popup page to non-modal.
 */
define_function moderoDisablePopupModality (dev panel, char popupName[])
{
	sendCommand (panel, "MODERO_COMMAND_POPUP_MODAL,popupName,';',MODERO_MODALITY_NON_MODAL")
}

/*
 * Function:    moderoEnablePopup
 *
 * Arguments:   dev panel - touch panel
 *              char popupName[] - popup page name (1-50 ASCII characters)
 *
 * Description: Activates a specific popup to launch on the current page. If
 *              the popup is already active on the current page it does not get redrawn.
 */
define_function moderoEnablePopup (dev panel, char popupName[])
{
	if (moderoIsG5Panel(panel))
	{
		sendCommand (panel, "MODERO_COMMAND_POPUP_SHOW_G5,popupName")
	}
	else
	{
		sendCommand (panel, "MODERO_COMMAND_POPUP_SHOW,popupName")
	}
}

/*
 * Function:    moderoEnablePopupOnPage
 *
 * Arguments:   dev panel - touch panel
 *              char popupName[] - popup page name (1-50 ASCII characters)
 *              char pageName[] - page name (1-50 ASCII characters)
 *
 * Description: Activates a specific popup to launch on a specified page. If
 *              the page name is empty, the current page is used. If the popup is
 *              already active on the current page it does not get redrawn.
 */
define_function moderoEnablePopupOnPage (dev panel, char popupName[], char pageName[])
{
	sendCommand (panel, "MODERO_COMMAND_POPUP_SHOW,popupName,';',pageName")
}

/*
 * Function:    moderoDisablePopup
 *
 * Arguments:   dev panel - touch panel
 *              char popupName[] - popup page name (1-50 ASCII characters)
 *
 * Description: Deactivates a specific popup on the current page.If the popup
 *              is part of a group the whole group is deactivated.
 */
define_function moderoDisablePopup (dev panel, char popupName[])
{
	if (moderoIsG5Panel(panel))
	{
		sendCommand (panel, "MODERO_COMMAND_POPUP_HIDE_G5,popupName")
	}
	else
	{
		sendCommand (panel, "MODERO_COMMAND_POPUP_HIDE,popupName")
	}
}

/*
 * Function:    moderoDisablePopupOnPage
 *
 * Arguments:   dev panel - touch panel
 *              char popupName[] - popup page name (1-50 ASCII characters)
 *              char pageName[] - page name (1-50 ASCII characters)
 *
 * Description: Deactivates a specific popup on a specified page. If the page
 *              name is empty, the current page is used. If the popup is part of a
 *              group the whole group is deactivated.
 */
define_function moderoDisablePopupOnPage (dev panel, char popupName[], char pageName[])
{
	sendCommand (panel, "MODERO_COMMAND_POPUP_HIDE,popupName,';',pageName")
}

/*
 * Function:    moderoDisablePopupOnAllPages
 *
 * Arguments:   dev panel - touch panel
 *              char popupName[] - popup page name (1-50 ASCII characters)
 *
 * Description: Deactivates a specific popup on all pages. If the popup is par
 *              of a group the whole group is deactivated.
 */
define_function moderoDisablePopupOnAllPages (dev panel, char popupName[])
{
	sendCommand (panel, "MODERO_COMMAND_POPUP_KILL_FROM_ALL_PAGES,popupName")
}

/*
 * Function:    moderoDisableAllPopups
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Close all popups on all pages.
 */
define_function moderoDisableAllPopups (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_POPUP_CLOSE_ALL")
}


define_function moderoDisableAllPopupsOnPage (dev panel, char pageName[])
{
	sendCommand (panel, "MODERO_COMMAND_POPUP_CLOSE_ALL_ON_PAGE,pageName")
}

/*
 * Function:    moderoSetPopupTimeout
 *
 * Arguments:   dev panel - touch panel
 *              char popupName[] - popup page name (1-50 ASCII characters)
 *              integer timeoutInTenthsOfSeconds - timeout in tenths of seconds
 *
 * Description: Set a specific popup page to timeout within a specified time. If
 *              timeout is empty, popup page will clear the timeout.
 */
define_function moderoSetPopupTimeout (dev panel, char popupName[], integer timeoutInTenthsOfSeconds)
{
	sendCommand (panel, "MODERO_COMMAND_POPUP_TIMEOUT,popupName,';',timeoutInTenthsOfSeconds")
}

/*
 * Function:    moderoSetPopupShowEffect
 *
 * Arguments:   dev panel - touch panel
 *              char popupName[] - popup page name (1-50 ASCII characters)
 *              char showEffect[] - show effect
 *
 * Description: Set the show effect for the specified popup page to the named
 *              show effect.
 */
define_function moderoSetPopupShowEffect (dev panel, char popupName[], char showEffect[])
{
	switch (showEffect)
	{
		case MODERO_SHOW_EFFECT_NONE:
		case MODERO_SHOW_EFFECT_FADE:
		case MODERO_SHOW_EFFECT_SLIDE_FROM_LEFT:
		case MODERO_SHOW_EFFECT_SLIDE_FROM_RIGHT:
		case MODERO_SHOW_EFFECT_SLIDE_FROM_TOP:
		case MODERO_SHOW_EFFECT_SLIDE_FROM_BOTTOM:
		case MODERO_SHOW_EFFECT_SLIDE_FROM_LEFT_FADE:
		case MODERO_SHOW_EFFECT_SLIDE_FROM_RIGHT_FADE:
		case MODERO_SHOW_EFFECT_SLIDE_FROM_TOP_FADE:
		case MODERO_SHOW_EFFECT_SLIDE_FROM_BOTTOM_FADE:
		{
			sendCommand (panel, "MODERO_COMMAND_POPUP_SHOW_EFFECT,popupName,';',showEffect")
		}
	}
}

/*
 * Function:    moderoSetPopupShowEffectPosition
 *
 * Arguments:   dev panel - touch panel
 *              char popupName[] - popup page name (1-50 ASCII characters)
 *              char showEffect[] - show effect
 *              integer coordX - X coordinate
 *              integer coordY - Y coordinate
 *
 * Description: Set the show effect position. Only 1 coordinate is ever needed
 *              for an effect; however, the command will specify both. This command
 *              sets the location at which the effect will begin.
 */
define_function moderoSetPopupShowEffectPosition (dev panel, char popupName[], integer coordX, integer coordY)
{
	sendCommand (panel, "MODERO_COMMAND_POPUP_SHOW_EFFECT_POSITION,popupName,';',itoa(coordX),',',itoa(coordY)")
}

/*
 * Function:    moderoSetPopupShowEffectTime
 *
 * Arguments:   dev panel - touch panel
 *              char popupName[] - popup page name (1-50 ASCII characters)
 *              integer timeInTenthsOfSeconds - show effect time in tenths of seconds
 *
 * Description: Set the show effect time for the specified popup page.
 */
define_function moderoSetPopupShowEffectTime (dev panel, char popupName[], integer timeInTenthsOfSeconds)
{
	sendCommand (panel, "MODERO_COMMAND_POPUP_SHOW_EFFECT_TIME,popupName,';',itoa(timeInTenthsOfSeconds)")
}

/*
 * Function:    moderoSetPopupHidewEffect
 *
 * Arguments:   dev panel - touch panel
 *              char popupName[] - popup page name (1-50 ASCII characters)
 *              char hideEffect[] - hide effect
 *
 * Description: Set the hide effect for the specified popup page to the named
 *              hide effect.
 */
define_function moderoSetPopupHideEffect (dev panel, char popupName[], char hideEffect[])
{
	switch (hideEffect)
	{
		case MODERO_HIDE_EFFECT_NONE:
		case MODERO_HIDE_EFFECT_FADE:
		case MODERO_HIDE_EFFECT_SLIDE_TO_LEFT:
		case MODERO_HIDE_EFFECT_SLIDE_TO_RIGHT:
		case MODERO_HIDE_EFFECT_SLIDE_TO_TOP:
		case MODERO_HIDE_EFFECT_SLIDE_TO_BOTTOM:
		case MODERO_HIDE_EFFECT_SLIDE_TO_LEFT_FADE:
		case MODERO_HIDE_EFFECT_SLIDE_TO_RIGHT_FADE:
		case MODERO_HIDE_EFFECT_SLIDE_TO_TOP_FADE:
		case MODERO_HIDE_EFFECT_SLIDE_TO_BOTTOM_FADE:
		{
			sendCommand (panel, "MODERO_COMMAND_POPUP_HIDE_EFFECT,popupName,';',hideEffect")
		}
	}
}

/*
 * Function:    moderoSetPopupHideEffectPosition
 *
 * Arguments:   dev panel - touch panel
 *              char popupName[] - popup page name (1-50 ASCII characters)
 *              char hideEffect[] - hide effect
 *              integer coordX - X coordinate
 *              integer coordY - Y coordinate
 *
 * Description: Set the hide effect position. Only 1 coordinate is ever needed
 *              for an effect; however, the command will specify both. This command
 *              sets the location at which the effect will begin.
 */
define_function moderoSetPopupHideEffectPosition (dev panel, char popupName[], integer coordX, integer coordY)
{
	sendCommand (panel, "MODERO_COMMAND_POPUP_HIDE_EFFECT_POSITION,popupName,';',itoa(coordX),',',itoa(coordY)")
}

/*
 * Function:    moderoSetPopupHideEffectTime
 *
 * Arguments:   dev panel - touch panel
 *              char popupName[] - popup page name (1-50 ASCII characters)
 *              integer timeInTenthsOfSeconds - hide effect time in tenths of seconds
 *
 * Description: Set the hide effect time for the specified popup page.
 */
define_function moderoSetPopupHideEffectTime (dev panel, char popupName[], integer timeInTenthsOfSeconds)
{
	sendCommand (panel, "MODERO_COMMAND_POPUP_HIDE_EFFECT_TIME,popupName,';',itoa(timeInTenthsOfSeconds)")
}


/*
 * --------------------
 * Button feedback functions
 * --------------------
 */

/*
 * Function:    moderoSetButtonFeedback
 *
 * Arguments:   dev panel - touch panel
 *              integer btnChanCde - button channel code
 *              integer status - feedback status
 *                      Values:
 *                          TRUE turns button feedback on
 *                          FALSE turns button feedback off
 *
 * Description: Sets button feedback on or off based on value of status param.
 */
define_function moderoSetButtonFeedback (dev panel, integer btnChanCde, integer status)
{
	channelSet (panel, btnChanCde, status)
}

/*
 * Function:    moderoEnableButtonFeedback
 *
 * Arguments:   dev panel - touch panel
 *              integer btnChanCde - button channel code
 *
 * Description: Turns on button feedback.
 */
define_function moderoEnableButtonFeedback (dev panel, integer btnChanCde)
{
	channelOn (panel, btnChanCde)
}

/*
 * Function:    moderoDisableButtonFeedback
 *
 * Arguments:   dev panel - touch panel
 *              integer btnChanCde - button channel code
 *
 * Description: Turns off button feedback.
 */
define_function moderoDisableButtonFeedback (dev panel, integer btnChanCde)
{
	channelOff (panel, btnChanCde)
}

/*
 * Function:    moderoToggleButtonFeedback
 *
 * Arguments:   dev panel - touch panel
 *              integer btnChanCde - button channel code
 *
 * Description: Toggles button feedback (e.g, if on, turns button feedback off)
 */
define_function moderoToggleButtonFeedback (dev panel, integer btnChanCde)
{
	channelToggle (panel, btnChanCde)
}

/*
 * Function:    moderoEnableButtonFeedbackPulse
 *
 * Arguments:   dev panel - touch panel
 *              integer btnChanCde - button channel code
 *
 * Description: Pulse button feedback on for short time (default is .5 seconds)
 */
define_function moderoEnableButtonFeedbackPulse (dev panel, integer btnChanCde)
{
	channelPulse (panel, btnChanCde)
}


/*
 * --------------------
 * Panel runtime functions
 * --------------------
 */

/*
 * Function:    moderoWake
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Force the panel out of screensaver mode.
 */
define_function moderoWake (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_WAKE")
}

/*
 * Function:    moderoWake
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Force the panel into screensaver mode.
 */
define_function moderoSleep (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_SLEEP")
}

/*
 * Function:    moderoBeepSingle
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Output a single beep even if beep is off.
 */
define_function moderoBeepSingle (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_BEEP")
}

/*
 * Function:    moderoBeepDouble
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Output a double beep even if beep is off.
 */
define_function moderoBeepDouble (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_BEEP_DOUBLE")
}

/*
 * Function:    moderoEnableKeyboard
 *
 * Arguments:   dev panel - touch panel
 *              char initialText[] - initial text string for the keyboard
 *
 * Description: Pop up the keyboard icon and initialize the text string to that
 *              specified.
 */
define_function moderoEnableKeyboard (dev panel, char initialText[])
{
	sendCommand (panel, "MODERO_COMMAND_KEYBOARD,initialText")
}

/*
 * Function:    moderoEnableKeyboardWithPrompt
 *
 * Arguments:   dev panel - touch panel
 *              char initialText[] - initial text string for the keyboard
 *              char prompt[] - prompt text
 *
 * Description: Pop up the keyboard icon and initialize the text string to that
 *              specified.
 */
define_function moderoEnableKeyboardWithPrompt (dev panel, char initialText[], char prompt[])
{
	sendCommand (panel, "MODERO_COMMAND_KEYBOARD_WITH_PROMPT,initialText,';',prompt")
}

/*
 * Function:    moderoEnableKeypad
 *
 * Arguments:   dev panel - touch panel
 *              char initialText[] - initial text string for the keypad
 *
 * Description: Pop up the keypad icon and initialize the text string to that
 *              specified.
 */
define_function moderoEnableKeypad (dev panel, char initialText[])
{
	sendCommand (panel, "MODERO_COMMAND_KEYPAD")
}

/*
 * Function:    moderoEnableKeypadWithPrompt
 *
 * Arguments:   dev panel - touch panel
 *              char initialText[] - initial text string for the keypad
 *              char prompt[] - prompt text
 *
 * Description: Pop up the keypad icon and initialize the text string to that
 *              specified.
 */
define_function moderoEnableKeypadWithPrompt (dev panel, char initialText[], char prompt[])
{
	sendCommand (panel, "MODERO_COMMAND_KEYPAD_WITH_PROMPT,initialText,';',prompt")
}

/*
 * Function:    moderoDisableKeypad
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Remove keypad that is currently displayed.
 */
define_function moderoDisableKeypad (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_REMOVE_KEYBOARD_OR_KEYPAD")
}

/*
 * Function:    moderoDisableKeyboard
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Remove keyboard that is currently displayed.
 */
define_function moderoDisableKeyboard (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_REMOVE_KEYBOARD_OR_KEYPAD")
}

/*
 * Function:    moderoSetBrightness
 *
 * Arguments:   dev panel - touch panel
 *              integer brightness - brightness level (0 - 100)
 *
 * Description: Set the panel brightness.
 */
define_function moderoSetBrightness (dev panel, integer brightness)
{
	sendCommand (panel, "MODERO_COMMAND_BRIGHTNESS,itoa(brightness)")
}

/*
 * Function:    moderoEnableKeypadExtended
 *
 * Arguments:   dev panel - touch panel
 *              char initialText[] - initial text string for the keypad
 *              char prompt[] - prompt text
 *
 * Description: Extend the Keypad.Pops up the keypad icon and initializes the
 *              text string to that specified. The Prompt Text is optional.
 */
define_function moderoEnableKeypadExtended (dev panel, char initialText[], char prompt[])
{
	sendCommand (panel, "MODERO_COMMAND_KEYPAD_EXTENDED,initialText,';',prompt")
}

/*
 * Function:    moderoEnableKeypadPrivate
 *
 * Arguments:   dev panel - touch panel
 *              char initialText[] - initial text string for the keypad
 *              char prompt[] - prompt text
 *
 * Description: Extend the Keypad.Pops up the keypad icon and initializes the
 *              text string to that specified. The Prompt Text is optional.
 */
define_function moderoEnableKeypadPrivate (dev panel, char initialText[], char prompt[])
{
	sendCommand (panel, "MODERO_COMMAND_KEYPAD_PRIVATE,initialText,';',prompt")
}

/*
 * Function:    moderoEnableSetup
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Send panel to SETUP page.
 */
define_function moderoEnableSetup (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_SETUP")
}

/*
 * Function:    moderoEnableShutdown
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Shut down the batteries providing power to the panel. This
 *              function saves the battery from discharging.
 */
define_function moderoEnableShutdown (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_SHUTDOWN")
}

/*
 * Function:    moderoPlaySoundFile
 *
 * Arguments:   dev panel - touch panel
 *              char soundFilename[] - sound file name (filename.mp3 | filename.wav)
 *
 * Description: Play a sound file.
 */
define_function moderoPlaySoundFile(dev panel, char soundFilename[])
{
	if (moderoIsG5Panel(panel))
	{
		sendCommand (panel, "MODERO_COMMAND_PLAY_SOUND_FILE_G5,soundFilename")
	}
	else
	{
		sendCommand (panel, "MODERO_COMMAND_PLAY_SOUND_FILE,soundFilename")
	}
}

/*
 * Function:    moderoEnableKeypadTelephone
 *
 * Arguments:   dev panel - touch panel
 *              char initialText[] - initial text string for the keypad
 *              char prompt[] - prompt text
 *
 * Description: Present a telephone keypad. Pops up the keypad icon and
 *              initializes the text string to that specified. The Prompt Text is optional.
 */
define_function moderoEnableKeypadTelephone (dev panel, char initialText[], char prompt[])
{
	sendCommand (panel, "MODERO_COMMAND_KEYPAD_TELEPHONE,initialText,';',prompt")
}

/*
 * Function:    moderoEnablePageTracking
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Turn On page tracking.
 */
define_function moderoEnablePageTracking (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_PAGE_TRACKING_ON")
}

/*
 * Function:    moderoDisablePageTracking
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Turn On page tracking.
 */
define_function moderoDisablePageTracking (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_PAGE_TRACKING_OFF")
}

/*
 * Function:    moderoEnableKeyboardVirtual
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Popup the virtual keyboard.
 */
define_function moderoEnableKeyboardVirtual (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_KEYBOARD_VIRTUAL")
}


/*
 * --------------------
 * Panel setup functions
 * --------------------
 */

/*
 * Function:    moderoSetPageFlipPassword
 *
 * Arguments:   dev panel - touch panel
 *              char userLevel[] - user level
 *              char password[] - new password
 *
 * Description: Sets the page flip password.
 */
define_function moderoSetPageFlipPassword (dev panel, char userLevel[], char password[])
{
	sendCommand (panel, "MODERO_COMMAND_PAGE_FLIP_PASSWORD,userLevel,',',password")
}


/*
 * --------------------
 * Popup query functions
 * --------------------
 */

/*
 * Function:    moderoRequestPopupLocation
 *
 * Arguments:   dev panel - touch panel
 *              char popupName[] - popup page name
 *
 * Description: Request popup location.
 */
define_function moderoRequestPopupLocation (dev panel, char popupName[])
{
	sendCommand (panel, "MODERO_COMMAND_QUERY_POPUP_LOCATION,popupName")
}

/*
 * Function:    moderoRequestPopupSize
 *
 * Arguments:   dev panel - touch panel
 *              char popupName[] - popup page name
 *
 * Description: Request popup size.
 */
define_function moderoRequestPopupSize (dev panel, char popupName[])
{
	sendCommand (panel, "MODERO_COMMAND_QUERY_POPUP_SIZE,popupName")
}


/*
 * --------------------
 * Button query functions
 * --------------------
 */

/*
 * Function:    moderoRequestButtonBorderColour
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *
 * Description: Request the buttons' current border colour.
 */
define_function moderoRequestButtonBorderColour (dev panel, integer btnAdrCde, integer btnState)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_QUERY_BORDER_COLOR,itoa(btnAdrCde),',',itoa(btnState)")
}

/*
 * Function:    moderoRequestButtonFillColour
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *
 * Description: Request the buttons' current fill colour.
 */
define_function moderoRequestButtonFillColour (dev panel, integer btnAdrCde, integer btnState)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_QUERY_FILL_COLOUR,itoa(btnAdrCde),',',itoa(btnState)")
}

/*
 * Function:    moderoRequestButtonTextColour
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *
 * Description: Request the buttons' current text colour.
 */
define_function moderoRequestButtonTextColour (dev panel, integer btnAdrCde, integer btnState)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_QUERY_TEXT_COLOUR,itoa(btnAdrCde),',',itoa(btnState)")
}

/*
 * Function:    moderoRequestButtonBitmapName
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *
 * Description: Request the buttons' current bitmap name.
 */
define_function moderoRequestButtonBitmapName (dev panel, integer btnAdrCde, integer btnState)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_QUERY_BITMAP_NAME,itoa(btnAdrCde),',',itoa(btnState)")
}

/*
 * Function:    moderoRequestButtonOpacity
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *
 * Description: Request the buttons' current overall opacity.
 */
define_function moderoRequestButtonOpacity (dev panel, integer btnAdrCde, integer btnState)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_QUERY_OPACITY,itoa(btnAdrCde),',',itoa(btnState)")
}

/*
 * Function:    moderoRequestButtonBorderName
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *
 * Description: Request the buttons' current border name.
 */
define_function moderoRequestButtonBorderName (dev panel, integer btnAdrCde, integer btnState)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_QUERY_BORDER_NAME,itoa(btnAdrCde),',',itoa(btnState)")
}

/*
 * Function:    moderoRequestButtonWordWrapStatus
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *
 * Description: Request the buttons' current word wrap status.
 */
define_function moderoRequestButtonWordWrapStatus (dev panel, integer btnAdrCde, integer btnState)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_QUERY_WORD_WRAP,itoa(btnAdrCde),',',itoa(btnState)")
}

/*
 * Function:    moderoRequestButtonFontIndex
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *
 * Description: Request the buttons' current font index.
 */
define_function moderoRequestButtonFontIndex (dev panel, integer btnAdrCde, integer btnState)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_QUERY_FONT_INDEX,itoa(btnAdrCde),',',itoa(btnState)")
}

/*
 * Function:    moderoRequestButtonIconIndex
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *
 * Description: Request the buttons' current icon index.
 */
define_function moderoRequestButtonIconIndex (dev panel, integer btnAdrCde, integer btnState)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_QUERY_ICON_INDEX,itoa(btnAdrCde),',',itoa(btnState)")
}


/*
 * Function:    moderoRequestButtonBitmapJustification
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *
 * Description: Request the buttons' current bitmap justification.
 */
define_function moderoRequestButtonBitmapJustification (dev panel, integer btnAdrCde, integer btnState)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_QUERY_BITMAP_JUSTIFICATION,itoa(btnAdrCde),',',itoa(btnState)")
}

/*
 * Function:    moderoRequestButtonIconJustification
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *
 * Description: Request the buttons' current icon justification.
 */
define_function moderoRequestButtonIconJustification (dev panel, integer btnAdrCde, integer btnState)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_QUERY_ICON_JUSTIFICATION,itoa(btnAdrCde),',',itoa(btnState)")
}

/*
 * Function:    moderoRequestButtonTextJustification
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *
 * Description: Request the buttons' current text justification.
 */
define_function moderoRequestButtonTextJustification (dev panel, integer btnAdrCde, integer btnState)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_QUERY_TEXT_JUSTIFICATION,itoa(btnAdrCde),',',itoa(btnState)")
}

/*
 * Function:    moderoRequestButtonTextEffectColour
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *
 * Description: Request the buttons' current text effect colour.
 */
define_function moderoRequestButtonTextEffectColour (dev panel, integer btnAdrCde, integer btnState)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_QUERY_TEXT_EFFECT_COLOUR,itoa(btnAdrCde),',',itoa(btnState)")
}

/*
 * Function:    moderoRequestButtonTextEffectName
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *
 * Description: Request the buttons' current text effect name.
 */
define_function moderoRequestButtonTextEffectName (dev panel, integer btnAdrCde, integer btnState)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_QUERY_TEXT_EFFECT_NAME,itoa(btnAdrCde),',',itoa(btnState)")
}

/*
 * Function:    moderoRequestButtonText
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *
 * Description: Request the buttons' current text.
 */
define_function moderoRequestButtonText (dev panel, integer btnAdrCde, integer btnState)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_QUERY_TEXT,itoa(btnAdrCde),',',itoa(btnState)")
}


/*
 * --------------------
 * Gesture notification functions
 * --------------------
 */

/*
 * Function:    moderoEnableGestureNotifications
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Enable Gesture Notifications to the master via CUSTOM_EVENT.
 */
define_function moderoEnableGestureNotifications (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_GESTURE_NOTIFICATION,MODERO_GESTURE_NOTIFICATIONS_ENABLE")
}

/*
 * Function:    moderoDisableGestureNotifications
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Disable Gesture Notifications to the master via CUSTOM_EVENT.
 */
define_function moderoDisableGestureNotifications (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_GESTURE_NOTIFICATION,MODERO_GESTURE_NOTIFICATIONS_DISABLE")
}


/*
 * --------------------
 * Input functions
 * --------------------
 */

/*
 * Function:    moderoDisableKeyboardPassthru
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Disables the keyboard.
 */
define_function moderoDisableKeyboardPassthru (dev panel)
{
	// no parameter denotes disabling
	sendCommand (panel, "MODERO_COMMAND_KEYBOARD_PASSTHRU")
}

/*
 * Function:    moderoEnableKeyboardPassthruG4
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Sends keyboard strokes (either USB or virtual) to the G4
 *              application running on the Modero.
 *              Note: this is the default behaviour on a Modero panel.
 */
define_function moderoEnableKeyboardPassthruG4 (dev panel)
{
	// no parameter denotes disabling
	sendCommand (panel, "MODERO_COMMAND_KEYBOARD_PASSTHRU,MODERO_KEYBOARD_PASSTHRU_PASS_TO_G4")
}

/*
 * Function:    moderoEnableKeyboardPassthruMaster
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Sends keyboard strokes (either USB or virtual) to master via
 *              the send_string mechanism
 */
define_function moderoEnableKeyboardPassthruMaster (dev panel)
{
	// no parameter denotes disabling
	sendCommand (panel, "MODERO_COMMAND_KEYBOARD_PASSTHRU,MODERO_KEYBOARD_PASSTHRU_PASS_TO_MASTER")
}

/*
 * Function:    moderoSendVirtualKeystroke
 *
 * Arguments:   dev panel - touch panel
 *              char keystrokes[] - virtual keyboard strokes
 *
 * Description: Send one or more virtual key strokes to the G4 application. Key
 *              presses and key releases are not distinguished except in the case of
 *              CTRL, ALT, and SHIFT
 */
define_function moderoSendVirtualKeystroke (dev panel, char keystrokes[])
{
	sendCommand (panel, "MODERO_COMMAND_SEND_VIRTUAL_KEY_STROKES,keystrokes")
}


/*
 * --------------------
 * Intercom functions
 * --------------------
 */

/*
 * Function:    moderoIntercomRequestModel
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Request model name.
 */
define_function moderoIntercomRequestModel (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_INTERCOM_MODEL_NAME_QUERY")
}

/*
 * Function:    moderoIntercomStartCall
 *
 * Arguments:   dev panel - touch panel
 *              char dstIp[] - IP Address of panel to connect with on an Intercom call
 *              integer txUdpPort - UDP port to transmit to
 *              integer rxUdpPort - UDP port to receive from
 *              char initalMode[] - initial mode
 *                      Values:
 *                          MODERO_INTERCOM_MODE_LISTEN
 *                          MODERO_INTERCOM_MODE_TALK
 *                          MODERO_INTERCOM_MODE_HANDSFREE
 *
 * Description: Starts a call to the specified IP address and ports.
 */
define_function moderoIntercomStartCall (dev panel, char dstIp[], integer txUdpPort, integer rxUdpPort, char initalMode[])
{
	switch (initalMode)
	{
		case MODERO_INTERCOM_MODE_LISTEN:
		case MODERO_INTERCOM_MODE_TALK:
		case MODERO_INTERCOM_MODE_HANDSFREE:
		{
			sendCommand (panel, "MODERO_COMMAND_INTERCOM_START_CALL,dstIp,',',itoa(txUdpPort),',',itoa(rxUdpPort),',',initalMode")
		}
	}
}

/*
 * Function:    moderoIntercomEndCall
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Terminates an intercom call/connection.
 */
define_function moderoIntercomEndCall (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_INTERCOM_END_CALL")
}

/*
 * Function:    moderoIntercomListen
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: ?????.
 */
define_function moderoIntercomListen (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_INTERCOM_MODIFY,MODERO_INTERCOM_LISTEN")
}

/*
 * Function:    moderoIntercomTalk
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: ?????.
 */
#warn '@TODO - amx-modero-control - find out more about the Intercom Talk function - lacking documentation'
define_function moderoIntercomTalk (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_INTERCOM_MODIFY,MODERO_INTERCOM_TALK")
}

/*
 * Function:    moderoIntercomSetMicLevel
 *
 * Arguments:   dev panel - touch panel
 *              integer micLevel - microphone level (0 - 100)
 *
 * Description: Sets the microphone level during an intercom call.
 */
define_function moderoIntercomSetMicLevel (dev panel, integer micLevel)
{
	sendCommand (panel, "MODERO_COMMAND_INTERCOM_MODIFY,MODERO_INTERCOM_MIC_LEVEL,',',itoa(micLevel)")
}

/*
 * Function:    moderoIntercomEnableMute
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Sets the state of the microphone on muted.
 *              Note: At the start of each call, the microphone starts out unmuted.
 */
define_function moderoIntercomEnableMute (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_INTERCOM_MODIFY,MODERO_INTERCOM_MUTE_MIC,',',MODERO_INTERCOM_MUTE_ENABLE")
}

/*
 * Function:    moderoIntercomDisableMute
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Sets the state of the microphone on unmuted.
 *              Note: At the start of each call, the microphone starts out unmuted.
 */
define_function moderoIntercomDisableMute (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_INTERCOM_MODIFY,MODERO_INTERCOM_MUTE_MIC,',',MODERO_INTERCOM_MUTE_DISABLE")
}

/*
 * Function:    moderoIntercomSetSpeakerLevel
 *
 * Arguments:   dev panel - touch panel
 *              integer speakerLevel - speaker level (0 - 100)
 *
 * Description: Sets the speaker level during an intercom call.
 */
define_function moderoIntercomSetSpeakerLevel (dev panel, integer speakerLevel)
{
	sendCommand (panel, "MODERO_COMMAND_INTERCOM_MODIFY,MODERO_INTERCOM_SPEAKER_LEVEL,',',itoa(speakerLevel)")
}


/*
 * --------------------
 * SIP functions
 * --------------------
 */

/*
 * Function:    moderoSipEnableAutoAnswer
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Enables the auto-answer feature on the phone.
 */
define_function moderoSipEnableAutoAnswer (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_SIP,MODERO_SIP_AUTO_ANSWER,', ',MODERO_SIP_AUTO_ANSWER_ON")
}

/*
 * Function:    moderoSipDisableAutoAnswer
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Disables the auto-answer feature on the phone.
 */
define_function moderoSipDisableAutoAnswer (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_SIP,MODERO_SIP_AUTO_ANSWER,', ',MODERO_SIP_AUTO_ANSWER_OFF")
}

/*
 * Function:    moderoSipRequestAutoAnswerStatus
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Queries the state of the auto- answer feature.
 */
define_function moderoSipRequestAutoAnswerStatus (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_SIP_QUERY,MODERO_SIP_AUTO_ANSWER")
}

/*
 * Function:    moderoSipAnswerCall
 *
 * Arguments:   dev panel - touch panel
 *              char connectionId[] - connection id
 *
 * Description: Answers the call.
 */
define_function moderoSipAnswerCall (dev panel, char connectionId[])
{
	sendCommand (panel, "MODERO_COMMAND_SIP,MODERO_SIP_ANSWER,', ',connectionId")
}

/*
 * Function:    moderoSipCallNumber
 *
 * Arguments:   dev panel - touch panel
 *              char phoneNumber[] - phone number
 *
 * Description: Calls the provided number.
 */
define_function moderoSipCallNumber (dev panel, char phoneNumber[])
{
	sendCommand (panel, "MODERO_COMMAND_SIP,MODERO_SIP_CALL,', ',phoneNumber")
}

/*
 * Function:    moderoSipSendDtmfCode
 *
 * Arguments:   dev panel - touch panel
 *              char dtmfCode[] - DTMF codes
 *
 * Description: Sends DTMF codes.
 */
define_function moderoSipSendDtmfCode (dev panel, char dtmfCode[])
{
	sendCommand (panel, "MODERO_COMMAND_SIP,MODERO_SIP_DTMF,', ',dtmfCode")
}

/*
 * Function:    moderoSipHangupCall
 *
 * Arguments:   dev panel - touch panel
 *              char connectionId[] - connection id
 *
 * Description: Hangs up the call.
 */
define_function moderoSipHangupCall (dev panel, char connectionId[])
{
	sendCommand (panel, "MODERO_COMMAND_SIP,MODERO_SIP_HANGUP,', ',connectionId")
}

/*
 * Function:    moderoSipHoldCall
 *
 * Arguments:   dev panel - touch panel
 *              char connectionId[] - connection id
 *
 * Description: Places the call on hold.
 */
define_function moderoSipHoldCall (dev panel, char connectionId[])
{
	sendCommand (panel, "MODERO_COMMAND_SIP,MODERO_SIP_HOLD,', ',connectionId")
}

/*
 * Function:    moderoSipRequestLineState
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Queries the state of each of the connections used by the SIP device.
 */
define_function moderoSipRequestLineState (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_SIP_QUERY,MODERO_SIP_LINESTATE")
}

/*
 * Function:    moderSipoEnablePrivacyFeature
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Enables the privacy (do not disturb) feature on the phone.
 */
define_function moderSipoEnablePrivacyFeature (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_SIP,MODERO_SIP_PRIVACY,', ',MODERO_SIP_PRIVACY_ENABLE")
}

/*
 * Function:    moderoSipDisablePrivacyFeature
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Disables the privacy (do not disturb) feature on the phone.
 */
define_function moderoSipDisablePrivacyFeature (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_SIP,MODERO_SIP_PRIVACY,', ',MODERO_SIP_PRIVACY_DISABLE")
}

/*
 * Function:    moderoSipRequestPrivacyFeature
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Queries the state of the privacy feature.
 */
define_function moderoSipRequestPrivacyFeature (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_SIP_QUERY,MODERO_SIP_PRIVACY")
}

/*
 * Function:    moderoSipRedial
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Redials the last number.
 */
define_function moderoSipRedial (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_SIP,MODERO_SIP_REDIAL")
}

/*
 * Function:    moderoSipTransfer
 *
 * Arguments:   dev panel - touch panel
 *              char connectionId[] - connection id
 *              char phoneNumber[] - phone number
 *
 * Description: Transfers the call to the provided number.
 */
define_function moderoSipTransfer (dev panel, char connectionId[], char phoneNumber[])
{
	sendCommand (panel, "MODERO_COMMAND_SIP,MODERO_SIP_TRANSFER,' ',connectionId,', ',phoneNumber")
}


/*
 * --------------------
 * Audio functions
 * --------------------
 */

/*
 * Function:    moderoSetAudioDevice
 *
 * Arguments:   dev panel - touch panel
 *              char audioDevice[] - audio device
 *
 * Description: Selects the audio device to use.
 */
define_function moderoSetAudioDevice (dev panel, char audioDevice[])
{
	switch (audioDevice)
	{
		case MODERO_AUDIO_DEVICE_SPEAKERS:
		case MODERO_AUDIO_DEVICE_USB_HEADSET:
		case MODERO_AUDIO_DEVICE_BLUETOOTH_HEADSET:
		{
			sendCommand (panel, "MODERO_COMMAND_AUDIO_DEVICE_SELECT,audioDevice")
		}
	}
}

/*
 * Function:    moderoRequestAudioDevice
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Queries the currently selected audio device.
 */
define_function moderoRequestAudioDevice (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_AUDIO_DEVICE_QUERY")
}

/*
 * Function:    moderoSetMicLeveInCall
 *
 * Arguments:   dev panel - touch panel
 *              char audioDevice[] - audio device
 *              integer micLevel - microphone level (0 - 100)
 *
 * Description: Set the microphone level during an intercom call.
 */
define_function moderoSetMicLeveInCall (dev panel, char audioDevice[], integer micLevel)
{
	sendCommand (panel, "MODERO_COMMAND_AUDIO_SET_MIC_LEVEL_DURING_INTERCOM_CALL,itoa(micLevel),',',audioDevice")
}

/*
 * Function:    moderoSetSpeakerLevelInCall
 *
 * Arguments:   dev panel - touch panel
 *              char audioDevice[] - audio device
 *              integer speakerLevel - speaker level (0 - 100)
 *
 * Description: Set the speaker level during an intercom call.
 */
define_function moderoSetSpeakerLevelInCall (dev panel, char audioDevice[], integer speakerLevel)
{
	sendCommand (panel, "MODERO_COMMAND_AUDIO_SET_SPEAKER_LEVEL_DURING_INTERCOM_CALL,itoa(speakerLevel),',',audioDevice")
}

/*
 * Function:    moderoRequestMuteStatus
 *
 * Arguments:   dev panel - touch panel
 *              integer audioDevice - audio device
 *
 * Description: Query the panel mute status.
 */
define_function moderoRequestMuteStatus (dev panel, integer audioDevice)
{
	switch (audioDevice)
	{
		case MODERO_AUDIO_DEVICE_ACTIVE:
		case MODERO_AUDIO_DEVICE_SPEAKERS:
		case MODERO_AUDIO_DEVICE_USB_HEADSET:
		case MODERO_AUDIO_DEVICE_BLUETOOTH_HEADSET:
		{
			sendCommand (panel, "MODERO_COMMAND_AUDIO_MUTE_STATUS_QUERY,itoa(audioDevice)")
		}
	}
}

/*
 * Function:    moderoEnableMute
 *
 * Arguments:   dev panel - touch panel
 *              integer audioDevice - audio device
 *
 * Description: Mute the panel.
 */
define_function moderoEnableMute (dev panel, integer audioDevice)
{
	switch (audioDevice)
	{
		case MODERO_AUDIO_DEVICE_ACTIVE:
		case MODERO_AUDIO_DEVICE_SPEAKERS:
		case MODERO_AUDIO_DEVICE_USB_HEADSET:
		case MODERO_AUDIO_DEVICE_BLUETOOTH_HEADSET:
		{
			sendCommand (panel, "MODERO_COMMAND_AUDIO_MUTE,itoa(MODERO_MUTE_ENABLE),',',itoa(audioDevice)")
		}
	}
}

/*
 * Function:    moderoDisableMute
 *
 * Arguments:   dev panel - touch panel
 *              integer audioDevice - audio device
 *
 * Description: Unmute the panel.
 */
define_function moderoDisableMute (dev panel, integer audioDevice)
{
	switch (audioDevice)
	{
		case MODERO_AUDIO_DEVICE_ACTIVE:
		case MODERO_AUDIO_DEVICE_SPEAKERS:
		case MODERO_AUDIO_DEVICE_USB_HEADSET:
		case MODERO_AUDIO_DEVICE_BLUETOOTH_HEADSET:
		{
			sendCommand (panel, "MODERO_COMMAND_AUDIO_MUTE,itoa(MODERO_MUTE_DISABLE),',',itoa(audioDevice)")
		}
	}
}

/*
 * Function:    moderoRequestVolume
 *
 * Arguments:   dev panel - touch panel
 *              integer audioDevice - audio device
 *
 * Description: Queries the panel volume.
 */
define_function moderoRequestVolume (dev panel, integer audioDevice)
{
	switch (audioDevice)
	{
		case MODERO_AUDIO_DEVICE_ACTIVE:
		case MODERO_AUDIO_DEVICE_SPEAKERS:
		case MODERO_AUDIO_DEVICE_USB_HEADSET:
		case MODERO_AUDIO_DEVICE_BLUETOOTH_HEADSET:
		{
			sendCommand (panel, "MODERO_COMMAND_AUDIO_VOLUME_QUERY,itoa(audioDevice)")
		}
	}
}

/*
 * Function:    moderoSetVolume
 *
 * Arguments:   dev panel - touch panel
 *              integer audioDevice - audio device
 *              integer volume - volume (0 - 100)
 *
 * Description: Sets the panel volume.
 */
define_function moderoSetVolume (dev panel, integer audioDevice, integer volume)
{
	switch (audioDevice)
	{
		case MODERO_AUDIO_DEVICE_ACTIVE:
		case MODERO_AUDIO_DEVICE_SPEAKERS:
		case MODERO_AUDIO_DEVICE_USB_HEADSET:
		case MODERO_AUDIO_DEVICE_BLUETOOTH_HEADSET:
		{
			sendCommand (panel, "MODERO_COMMAND_AUDIO_VOLUME,itoa(volume),',',itoa(audioDevice)")
		}
	}
}


/*
 * --------------------
 * Panel-to-panel video communication functions
 * --------------------
 */

/*
 * Function:    moderoRequestCameraSupportAndStatus
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Queries the panel for camera support and status.
 */
define_function moderoRequestCameraSupportAndStatus (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_CAMERA_SUPPORT_AND_STATUS_QUERY")
}

/*
 * Function:    moderoDisableVideoCall
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Ends Videocom communication. Stop sending H.264/RTP data.
 */
define_function moderoDisableVideoCall (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_VIDEOCOM_END")
}

/*
 * Function:    moderoEnableVideoCall
 *
 * Arguments:   dev panel - touch panel
 *              char dstIp[] - destination IP address
 *              integer dstPort - destination port
 *
 * Description: Starts Videocom communication. Start sending h264/rtp data to
 *              dstIp:port
 */
define_function moderoEnableVideoCall (dev panel, char dstIp[], integer dstPort)
{
	sendCommand (panel, "MODERO_COMMAND_VIDEOCOM_START,dstIp,',',dstPort")
}


/*
 * --------------------
 * Streaming video, MXA-MP (Multi-Preview), and MXA-MPL (Multi-Preview Live) functions
 * --------------------
 */

/*
 * Function:    moderoRequestMultiPreviewInfo
 *
 * Arguments:   dev panel - touch panel
 *              char statusField[] - status field
 *              char id[] - id
 *
 * Description: Queries the multi-preview for info.
 */
define_function moderoRequestMultiPreviewInfo (dev panel, char statusField[], char id[])
{
	#warn '@TODO - amx-modero-control - find out more about the ?SLT command - documentation lacking!'
	sendCommand (panel, "MODERO_COMMAND_MULTI_PREVIEW_QUERY,'querystatus=',statusField,',',id")
	// '?SLT-1,querystatus=<statusField>,[id]'
	//		- response with custom_event ID: 770
}

/*
 * Function:    moderoSetStreamingAudioVideoMuteStatus
 *
 * Arguments:   dev panel - touch panel
 *              char audioMuteStatus[] - audio mute status
 *              char videoMuteStatus[] - video mute status
 *              char streamUrl[] - stream URL
 *
 * Description: Set the audio/video mute status for a given stream URL.
 */
define_function moderoSetStreamingAudioVideoMuteStatus (dev panel, char audioMuteStatus[], char videoMuteStatus[], char streamUrl[])
{
	sendCommand (panel, "MODERO_COMMAND_STREAMING_AUDIO_VIDEO_MUTE,audioMuteStatus,',',videoMuteStatus,',',streamUrl")
}

/*
 * Function:    moderoEnableStreamSession
 *
 * Arguments:   dev panel - touch panel
 *              char streamUrl[] - stream url
 *              integer streamPort - stream port
 *
 * Description: Start a streaming session.
 */
define_function moderoEnableStreamSession (dev panel, char streamUrl[], integer streamPort)
{
	sendCommand (panel, "MODERO_COMMAND_STREAMING_START_OR_STOP,'10,2,',streamUrl,':',itoa(streamPort)")
}

/*
 * Function:    moderoEnableStreamSessionCamera
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Start a streaming session from the built-in camera.
 */
define_function moderoEnableStreamSessionCamera (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_STREAMING_START_OR_STOP,'10,2,',MODERO_STREAMING_CAMERA_URL")
}

/*
 * Function:    moderoDisableStreamSession
 *
 * Arguments:   dev panel - touch panel
 *              char streamUrl[] - stream url
 *              integer streamPort - stream port
 *
 * Description: Stop a streaming session.
 */
define_function moderoDisableStreamSession (dev panel, char streamAdr[], integer streamPort)
{
	sendCommand (panel, "MODERO_COMMAND_STREAMING_START_OR_STOP,'10,1,',streamAdr,':',itoa(streamPort)")
}

/*
 * Function:    moderoDisableStreamSessionCurrent
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Stop the current streaming session.
 */
define_function moderoDisableStreamSessionCurrent (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_STREAMING_START_OR_STOP,'10,1,',MODERO_STREAMING_STOP")
}

/*
 * Function:    moderoDisableStreamSessionCamera
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Stop the current streaming session from the camera.
 */
define_function moderoDisableStreamSessionCamera (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_STREAMING_START_OR_STOP,'10,1,',MODERO_STREAMING_CAMERA_URL")
}

/*
 * Function:    moderoEnableMultiPreviewReboot
 *
 * Arguments:   dev panel - touch panel
 *              char rebootFirmwareMode[] - action to take regarding MP/MPL firmware after reboot
 *                      Values:
 *                          MODERO_MULTI_PREVIEW_REBOOT_FIRMWARE_CURRENT
 *                          MODERO_MULTI_PREVIEW_REBOOT_FIRMWARE_PREVIOUS
 *                          MODERO_MULTI_PREVIEW_REBOOT_FIRMWARE_FACTORY
 *
 * Description: Reboot the Multi-Preview.
 */
define_function moderoEnableMultiPreviewReboot (dev panel, char rebootFirmwareMode[])
{
	switch (rebootFirmwareMode)
	{
		case MODERO_MULTI_PREVIEW_REBOOT_FIRMWARE_CURRENT:
		case MODERO_MULTI_PREVIEW_REBOOT_FIRMWARE_PREVIOUS:
		case MODERO_MULTI_PREVIEW_REBOOT_FIRMWARE_FACTORY:
		{
			sendCommand (panel, "MODERO_COMMAND_MULTI_PREVIEW,'reboot=',rebootFirmwareMode")
		}
	}
}

/*
 * Function:    moderoEnableMultiPreviewStreamVideoOnly
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Enable video-only streaming from the multi-preview.
 */
define_function moderoEnableMultiPreviewStreamVideoOnly (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_MULTI_PREVIEW,MODERO_MULTI_PREVIEW_STREAM_VIDEO_ONLY")
}

/*
 * Function:    moderoEnableMultiPreviewStreamVideoAndAudio
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Enable video and audio streaming from the multi-preview.
 */
define_function moderoEnableMultiPreviewStreamVideoAndAudio (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_MULTI_PREVIEW,MODERO_MULTI_PREVIEW_STREAM_VIDEO_AND_AUDIO")
}

/*
 * Function:    moderoEnableMultiPreviewVideoInput
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Enable the video input port on the multi-preview.
 */
define_function moderoEnableMultiPreviewVideoInput (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_MULTI_PREVIEW,MODERO_MULTI_PREVIEW_VIDEO_INPUT_ENABLE")
}

/*
 * Function:    moderoDisableMultiPreviewVideoInput
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Disable the video input port on the multi-preview.
 */
define_function moderoDisableMultiPreviewVideoInput (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_MULTI_PREVIEW,MODERO_MULTI_PREVIEW_VIDEO_INPUT_DISABLE")
}

/*
 * Function:    moderoSetMultiPreviewInputFormatAndResolution
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Set the video format and expected resolution on the video
 *              input port of the multi-preview.
 */
define_function moderoSetMultiPreviewInputFormatAndResolution (dev panel, char inputFormat[], char inputResolution[])
{
	stack_var integer isValidFormatResolutionCombination

	isValidFormatResolutionCombination = FALSE

	switch (inputFormat)
	{
		case MODERO_MULTI_PREVIEW_INPUT_FORMAT_HDMI:
		{
			switch (inputResolution)
			{
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_HDMI_640x480p30HZ:
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_HDMI_800x600p30HZ:
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_HDMI_720x480i30HZ:
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_HDMI_720x480p30HZ:
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_HDMI_720x576i30HZ:
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_HDMI_720x576i50HZ:
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_HDMI_720x576p25HZ:
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_HDMI_720x576p50HZ:
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_HDMI_1024x768p30HZ:
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_HDMI_1280x720p30HZ:	isValidFormatResolutionCombination = TRUE
			}
		}
		case MODERO_MULTI_PREVIEW_INPUT_FORMAT_DVI:
		{
			switch (inputResolution)
			{
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_DVI_640x480p30HZ:
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_DVI_800x600p30HZ:
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_DVI_720x480i30HZ:
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_DVI_720x480p30HZ:
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_DVI_720x576i30HZ:
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_DVI_720x576i50HZ:
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_DVI_720x576p25HZ:
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_DVI_720x576p50HZ:
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_DVI_1024x768p30HZ:
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_DVI_1280x720p30HZ:	isValidFormatResolutionCombination = TRUE
			}
		}
		case MODERO_MULTI_PREVIEW_INPUT_FORMAT_VGA:
		{
			switch (inputResolution)
			{
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_VGA_640x480p30HZ:		isValidFormatResolutionCombination = TRUE
			}
		}
		case MODERO_MULTI_PREVIEW_INPUT_FORMAT_SVGA:
		{
			switch (inputResolution)
			{
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_SVGA_800x600p30HZ:		isValidFormatResolutionCombination = TRUE
			}
		}
		case MODERO_MULTI_PREVIEW_INPUT_FORMAT_XGA:
		{
			switch (inputResolution)
			{
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_XGA_1024x768p30HZ:		isValidFormatResolutionCombination = TRUE
			}
		}
		case MODERO_MULTI_PREVIEW_INPUT_FORMAT_WXGA:
		{
			switch (inputResolution)
			{
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_WXGA_1280x768p30HZ:		isValidFormatResolutionCombination = TRUE
			}
		}
		case MODERO_MULTI_PREVIEW_INPUT_FORMAT_COMPONENT:
		{
			switch (inputResolution)
			{
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_COMPONENT_720x480i30HZ:
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_COMPONENT_720x480p30HZ:
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_COMPONENT_720x576i30HZ:
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_COMPONENT_720x576p25HZ:		isValidFormatResolutionCombination = TRUE
			}
		}
		case MODERO_MULTI_PREVIEW_INPUT_FORMAT_COMPOSITE:
		{
			switch (inputResolution)
			{
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_COMPOSITE_NTSC:
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_COMPOSITE_PAL_M:
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_COMPOSITE_PAL_BHID:		isValidFormatResolutionCombination = TRUE
			}
		}
		case MODERO_MULTI_PREVIEW_INPUT_FORMAT_SVIDEO:
		{
			switch (inputResolution)
			{
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_SVIDEO_NTSC:
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_SVIDEO_PAL_M:
				case MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_SVIDEO_PAL_BHID:		isValidFormatResolutionCombination = TRUE
			}
		}
	}

	if (isValidFormatResolutionCombination)
		sendCommand (panel, "MODERO_COMMAND_MULTI_PREVIEW,MODERO_MULTI_PREVIEW_VIDEO_MODE,inputFormat,',',inputResolution")
}


/*
 * --------------------
 * Subpage functions
 * --------------------
 */

/*
 * Function:    moderoEnableSubpageExecutePushOnRelease
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *
 * Description: Enable execute push on release on subpage view. A push will not
 *              be sent to the master until a touch release is received. Any movement of
 *              the finger during the screen press will cause neither the press nor the
 *              release to be sent.
 */
define_function moderoEnableSubpageExecutePushOnRelease (dev panel, integer btnAdrCde)
{
	sendCommand (panel, "MODERO_COMMAND_SUBPAGE_EXECUTE_PUSH_ON_RELEASE,itoa(btnAdrCde),',',MODERO_SUBPAGE_EXECUTE_PUSH_ON_RELEASE_ENABLE")
}

/*
 * Function:    moderoDisableSubpageExecutePushOnRelease
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *
 * Description: Disable execute push on release on subpage view.
 */
define_function moderoDisableSubpageExecutePushOnRelease (dev panel, integer btnAdrCde)
{
	sendCommand (panel, "MODERO_COMMAND_SUBPAGE_EXECUTE_PUSH_ON_RELEASE,itoa(btnAdrCde),',',MODERO_SUBPAGE_EXECUTE_PUSH_ON_RELEASE_DISABLE")
}

/*
 * Function:    moderoEnableSubpageNotification
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *
 * Description: Enable custom events for subview button.
 */
define_function moderoEnableSubpageNotification (dev panel, integer btnAdrCde)
{
	sendCommand (panel, "MODERO_COMMAND_SUBPAGE_CONFIGURE_CUSTOM_EVENTS,itoa(btnAdrCde),
			',',itoa(MODERO_CUSTOM_EVENT_ID_SUBPAGE_ANCHOR_NOTIFICATION),
			',',itoa(MODERO_CUSTOM_EVENT_ID_SUBPAGE_ONSCREEN_NOTIFICATION),
			',',itoa(MODERO_CUSTOM_EVENT_ID_SUBPAGE_OFFSCREEN_NOTIFICATION),
			',',itoa(MODERO_CUSTOM_EVENT_ID_SUBPAGE_REORDER_NOTIFICATION)")
}

/*
 * Function:    moderoDisableSubpageNotification
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *
 * Description: Disable custom events for subview button.
 */
define_function moderoDisableSubpageNotification (dev panel, integer btnAdrCde)
{
	sendCommand (panel, "MODERO_COMMAND_SUBPAGE_CONFIGURE_CUSTOM_EVENTS,itoa(btnAdrCde),
			',',itoa(MODERO_CUSTOM_EVENT_ID_SUBPAGE_DISABLE),
			',',itoa(MODERO_CUSTOM_EVENT_ID_SUBPAGE_DISABLE),
			',',itoa(MODERO_CUSTOM_EVENT_ID_SUBPAGE_DISABLE),
			',',itoa(MODERO_CUSTOM_EVENT_ID_SUBPAGE_DISABLE)")
}

/*
 * Function:    moderoEnableSubpageDynamicReordering
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer holdTime - hold time (in tenths of seconds)
 *
 * Description: Enable dynamic reordering on a subpage. Hold time specifies
 *              the amount of time a user must press and hold a subpage
 *              with a single finger to trigger a dynamic reordering operation.
 */
define_function moderoEnableSubpageDynamicReordering (dev panel, integer btnAdrCde, integer holdTime)
{
	sendCommand (panel, "MODERO_COMMAND_SUBPAGE_DYNAMIC_REORDERING,itoa(btnAdrCde),',',MODERO_SUBPAGE_DYNAMIC_REORDERING_ENABLE,',',itoa(holdTime)")
}

/*
 * Function:    moderoDisableSubpageDynamicReordering
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *
 * Description: Disable dynamic reordering on a subpage.
 */
define_function moderoDisableSubpageDynamicReordering (dev panel, integer btnAdrCde)
{
	sendCommand (panel, "MODERO_COMMAND_SUBPAGE_DYNAMIC_REORDERING,itoa(btnAdrCde),',',MODERO_SUBPAGE_DYNAMIC_REORDERING_DISABLE")
}

/*
 * Function:    moderoHideSubpage
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char subpageName[] - subpage name
 *              integer position - position to add the subpage to the subpage view
 *              integer reorderTime - reorder time (0 - 30, in tenths of seconds)
 *
 * Description: Hide a subpage. The reorder time specifies the amount of
 *              time to move the subpages around when subpages are added/removed
 *              from a subpage view button.
 */
define_function moderoHideSubpage (dev panel, integer btnAdrCde, char subpageName[], integer reorderTime)
{
	sendCommand (panel, "MODERO_COMMAND_SUBPAGE_HIDE,itoa(btnAdrCde),',',subpageName,',',itoa(reorderTime)")
}

/*
 * Function:    moderoShowSubpage
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char subpageName[] - subpage name
 *              integer position - position to add the subpage to the subpage view
 *              integer reorderTime - reorder time (0 - 30, in tenths of seconds)
 *
 * Description: Show a subpage. The reorder time specifies the amount of
 *              time to move the subpages around when subpages are added/removed
 *              from a subpage view button.
 */
define_function moderoShowSubpage (dev panel, integer btnAdrCde, char subpageName[], integer position, integer reorderTime)
{
	sendCommand (panel, "MODERO_COMMAND_SUBPAGE_SHOW,itoa(btnAdrCde),',',subpageName,',',itoa(position),',',itoa(reorderTime)")
}

/*
 * Function:    moderoToggleSubpage
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char subpageName[] - subpage name
 *              integer position - position to add the subpage to the subpage view
 *              integer reorderTime - reorder time (0 - 30, in tenths of seconds)
 *
 * Description: Toggle's a subpage show/hide. The reorder time specifies the amount of
 *              time to move the subpages around when subpages are added/removed
 *              from a subpage view button.
 */
define_function moderoToggleSubpage (dev panel, integer btnAdrCde, char subpageName[], integer position, integer reorderTime)
{
	sendCommand (panel, "MODERO_COMMAND_SUBPAGE_TOGGLE,itoa(btnAdrCde),',',subpageName,',',itoa(position),',',itoa(reorderTime)")
}

/*
 * Function:    moderoHideAllSubpages
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *
 * Description: Hide all subpages.
 */
define_function moderoHideAllSubpages (dev panel, integer btnAdrCde)
{
	if (moderoIsG5Panel(panel))
	{
		sendCommand (panel, "MODERO_COMMAND_SUBPAGE_HIDE_ALL,itoa(btnAdrCde)")
	}
	else
	{
		moderoUnsupportedCommand(panel, 'moderoHideAllSubpages(..)');
	}
}


/*
 * --------------------
 * LED functions (MXD-430 Only)
 * --------------------
 */

/*
 * Function:    moderoEnableLeds
 *
 * Arguments:   dev panel - touch panel
 *              char ledColour[] - LED colour
 *                      Values:
 *                          MODERO_LED_COLOUR_RED
 *                          MODERO_LED_COLOUR_GREEN
 *
 * Description: Enable LED's on panel
 */
define_function moderoEnableLeds (dev panel, char ledColour[])
{
	sendCommand (panel, "MODERO_COMMAND_LED_CONTROL,ledColour,',',MODERO_LED_STATE_ON")
}

/*
 * Function:    moderoDisableLeds
 *
 * Arguments:   dev panel - touch panel
 *              char ledColour[] - LED colour
 *                      Values:
 *                          MODERO_LED_COLOUR_RED
 *                          MODERO_LED_COLOUR_GREEN
 *
 * Description: Enable LED's on panel
 */
define_function moderoDisableLeds (dev panel, char ledColour[])
{
	sendCommand (panel, "MODERO_COMMAND_LED_CONTROL,ledColour,',',MODERO_LED_STATE_OFF")
}


/*
 * --------------------
 * Touch tracking functions
 * --------------------
 */

/*
 * Function:    moderoEnableTouchCoordinateTrackingPressRelease
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Enables the reporting of (X,Y) touch coordinates from the panel
 *              for push and release.
 */
define_function moderoEnableTouchCoordinateTrackingPressRelease (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_TOUCH_INFO_SEND_TO_MASTER,MODERO_TOUCH_TRACKING_PRESS_RELEASE")
}

/*
 * Function:    moderoEnableTouchCoordinateTrackingMoveOnly
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Enables the reporting of (X,Y) touch coordinates from the panel
 *              for moves.
 */
define_function moderoEnableTouchCoordinateTrackingMoveOnly (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_TOUCH_INFO_SEND_TO_MASTER,MODERO_TOUCH_TRACKING_MOVE")
}

/*
 * Function:    moderoEnableTouchCoordinateTrackingPressReleaseMove
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Enables the reporting of (X,Y) touch coordinates from the panel
 *              for push, move, and release.
 */
define_function moderoEnableTouchCoordinateTrackingPressReleaseMove (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_TOUCH_INFO_SEND_TO_MASTER,MODERO_TOUCH_TRACKING_PRESS_MOVE_RELEASE")
}

/*
 * Function:    moderoDisableTouchCoordinateTracking
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Disables the reporting of (X,Y) touch coordinates from the panel
 *              for push and release.
 */
define_function moderoDisableTouchCoordinateTracking (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_TOUCH_INFO_SEND_TO_MASTER,MODERO_TOUCH_TRACKING_OFF")
}


/*
 * --------------------
 * Button configuration functions
 * --------------------
 */


#warn '@TODO - amx-modero-control - comment all button configuration functions'

/*
 * Function:    moderoEnableButtonAnimate
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer startState - animation start state
 *              integer endState - animation end state
 *              integer duration - animation duration, in tenths of seconds
 *
 * Description: Begin button animation from the specified start start to the
 *              specified end state over the specified duration.
 */
define_function moderoEnableButtonAnimate (dev panel, integer btnAdrCde, integer startState, integer endState, integer duration)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_ANIMATE,itoa(btnAdrCde),',',itoa(startState),',',itoa(endState),',',itoa(duration)")
}

/*
 * Function:    moderoEnableButtonAnimateFromCurrentState
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer endState - animation end state
 *              integer duration - animation duration, in tenths of seconds
 *
 * Description: Begin button animation from the current start to the
 *              specified end state over the specified duration.
 */
define_function moderoEnableButtonAnimateFromCurrentState (dev panel, integer btnAdrCde, integer endState, integer duration)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_ANIMATE,itoa(btnAdrCde),',',itoa(MODERO_BUTTON_ANIMATION_STATE_CURRENT),',',itoa(endState),',',itoa(duration)")
}

/*
 * Function:    moderoEnableButtonPageFlipActionStandard
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char pageName[] - page name
 *
 * Description: Add a standard page flip action to the button when pressed.
 */
define_function moderoEnableButtonPageFlipActionStandard (dev panel, integer btnAdrCde, char pageName[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_ADD_PAGE_FLIP_ACTION,itoa(btnAdrCde),',',MODERO_PAGE_FLIP_ACTION_STANDARD,',',pageName")
}

/*
 * Function:    moderoEnableButtonPageFlipActionAnimated
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char pageName[] - page name
 *              char pageFlipAnimation[] - page flip animation
 *              integer duration - animation duration, in tenths of seconds
 *
 * Description: Add an animated page flip action to the button when pressed.
 */
define_function moderoEnableButtonPageFlipActionAnimated (dev panel, integer btnAdrCde, char pageName[], char pageFlipAnimation[], integer duration)
{
	switch (pageFlipAnimation)
	{
		case MODERO_PAGE_FLIP_ANIMATION_SLIDE_LEFT:
		case MODERO_PAGE_FLIP_ANIMATION_SLIDE_RIGHT:
		case MODERO_PAGE_FLIP_ANIMATION_SLIDE_TOP:
		case MODERO_PAGE_FLIP_ANIMATION_SLIDE_BOTTOM:
		case MODERO_PAGE_FLIP_ANIMATION_SLIDE_BOUNCE_LEFT:
		case MODERO_PAGE_FLIP_ANIMATION_SLIDE_BOUNCE_RIGHT:
		case MODERO_PAGE_FLIP_ANIMATION_SLIDE_BOUNCE_TOP:
		case MODERO_PAGE_FLIP_ANIMATION_SLIDE_BOUNCE_BOTTOM:
		case MODERO_PAGE_FLIP_ANIMATION_CENTER_DOOR_FADE_LEFT:
		case MODERO_PAGE_FLIP_ANIMATION_CENTER_DOOR_FADE_RIGHT:
		case MODERO_PAGE_FLIP_ANIMATION_CENTER_DOOR_FADE_TOP:
		case MODERO_PAGE_FLIP_ANIMATION_CENTER_DOOR_FADE_BOTTOM:
		case MODERO_PAGE_FLIP_ANIMATION_DOOR_FADE_LEFT:
		case MODERO_PAGE_FLIP_ANIMATION_DOOR_FADE_RIGHT:
		case MODERO_PAGE_FLIP_ANIMATION_DOOR_FADE_TOP:
		case MODERO_PAGE_FLIP_ANIMATION_DOOR_FADE_BOTTOM:
		case MODERO_PAGE_FLIP_ANIMATION_BLACK_GLASS_LEFT:
		case MODERO_PAGE_FLIP_ANIMATION_BLACK_GLASS_RIGHT:
		case MODERO_PAGE_FLIP_ANIMATION_PAGE_CURL_LOWER_LEFT:
		case MODERO_PAGE_FLIP_ANIMATION_PAGE_CURL_LOWER_RIGHT:
		case MODERO_PAGE_FLIP_ANIMATION_PAGE_CURL_UPPER_LEFT:
		case MODERO_PAGE_FLIP_ANIMATION_PAGE_CURL_UPPER_RIGHT:
		case MODERO_PAGE_FLIP_ANIMATION_ZOOM_IN:
		case MODERO_PAGE_FLIP_ANIMATION_ZOOM_OUT:
		case MODERO_PAGE_FLIP_ANIMATION_IMPLODE:
		case MODERO_PAGE_FLIP_ANIMATION_EXPLODE:
		case MODERO_PAGE_FLIP_ANIMATION_SPIN_IN:
		case MODERO_PAGE_FLIP_ANIMATION_SPIN_OUT:
		case MODERO_PAGE_FLIP_ANIMATION_WAVES:
		case MODERO_PAGE_FLIP_ANIMATION_FLIP_CARD_LEFT:
		case MODERO_PAGE_FLIP_ANIMATION_FLIP_CARD_RIGHT:
		case MODERO_PAGE_FLIP_ANIMATION_FLIP_CARD_TOP:
		case MODERO_PAGE_FLIP_ANIMATION_FLIP_CARD_BOTTOM:
		case MODERO_PAGE_FLIP_ANIMATION_SLATS_LEFT:
		case MODERO_PAGE_FLIP_ANIMATION_SLATS_RIGHT:
		case MODERO_PAGE_FLIP_ANIMATION_SLATS_TOP:
		case MODERO_PAGE_FLIP_ANIMATION_SLATS_BOTTOM:
		case MODERO_PAGE_FLIP_ANIMATION_SQUISH_LEFT:
		case MODERO_PAGE_FLIP_ANIMATION_SQUISH_RIGHT:
		case MODERO_PAGE_FLIP_ANIMATION_SQUISH_TOP:
		case MODERO_PAGE_FLIP_ANIMATION_SQUISH_BOTTOM:
		case MODERO_PAGE_FLIP_ANIMATION_TUMBLE_LOWER_LEFT:
		case MODERO_PAGE_FLIP_ANIMATION_TUMBLE_LOWER_RIGHT:
		case MODERO_PAGE_FLIP_ANIMATION_TUMBLE_UPPER_LEFT:
		case MODERO_PAGE_FLIP_ANIMATION_TUMBLE_UPPER_RIGHT:
		case MODERO_PAGE_FLIP_ANIMATION_WIPE_LEFT:
		case MODERO_PAGE_FLIP_ANIMATION_WIPE_RIGHT:
		case MODERO_PAGE_FLIP_ANIMATION_WIPE_TOP:
		case MODERO_PAGE_FLIP_ANIMATION_WIPE_BOTTOM:
		{
			sendCommand (panel, "MODERO_COMMAND_BUTTON_ADD_PAGE_FLIP_ACTION,itoa(btnAdrCde),',',MODERO_PAGE_FLIP_ACTION_ANIMATED,',',pageName,',',pageFlipAnimation,',',itoa(duration)")
		}
	}
}

/*
 * Function:    moderoEnableButtonPageFlipActionShowPopup
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char popupName[] - popup name
 *
 * Description: Add a "show popup" page flip action to the button when pressed.
 */
define_function moderoEnableButtonPageFlipActionShowPopup (dev panel, integer btnAdrCde, char popupName[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_ADD_PAGE_FLIP_ACTION,itoa(btnAdrCde),',',MODERO_PAGE_FLIP_ACTION_SHOW_POPUP,',',popupName")
}

/*
 * Function:    moderoEnableButtonPageFlipActionHidePopup
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char popupName[] - popup name
 *
 * Description: Add a "hide popup" page flip action to the button when pressed.
 */
define_function moderoEnableButtonPageFlipActionHidePopup (dev panel, integer btnAdrCde, char popupName[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_ADD_PAGE_FLIP_ACTION,itoa(btnAdrCde),',',MODERO_PAGE_FLIP_ACTION_HIDE_POPUP,',',popupName")
}

/*
 * Function:    moderoEnableButtonPageFlipActionTogglePopup
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char popupName[] - popup name
 *
 * Description: Add a "toggle popup" page flip action to the button when pressed.
 */
define_function moderoEnableButtonPageFlipActionTogglePopup (dev panel, integer btnAdrCde, char popupName[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_ADD_PAGE_FLIP_ACTION,itoa(btnAdrCde),',',MODERO_PAGE_FLIP_ACTION_TOGGLE_POPUP,',',popupName")
}

/*
 * Function:    moderoEnableButtonPageFlipActionHidePopupGroupAllPages
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char popupGroupName[] - popup group name
 *
 * Description: Add a "hide popup group on all pages" page flip action to the
 *              button when pressed.
 */
define_function moderoEnableButtonPageFlipActionHidePopupGroupAllPages (dev panel, integer btnAdrCde, char popupGroupName[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_ADD_PAGE_FLIP_ACTION,itoa(btnAdrCde),',',MODERO_PAGE_FLIP_ACTION_CLEAR_POPUP_GROUP_FROM_ALL_PAGES,',',popupGroupName")
}

/*
 * Function:    moderoEnableButtonPageFlipActionHideAllPopupsOnPage
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char pageName[] - page name
 *
 * Description: Add a "hide all popups on page" page flip action to the button
 *              when pressed.
 */
define_function moderoEnableButtonPageFlipActionHideAllPopupsOnPage (dev panel, integer btnAdrCde, char pageName[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_ADD_PAGE_FLIP_ACTION,itoa(btnAdrCde),',',MODERO_PAGE_FLIP_ACTION_CLEAR_ALL_POPUPS_FROM_PAGE,',',pageName")
}

/*
 * Function:    moderoEnablebuttonPageFlipActionHideAllPopupsAllPages
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *
 * Description: Add a "hide all popups on all pages" page flip action to the
 *              button when pressed.
 */
define_function moderoEnablebuttonPageFlipActionHideAllPopupsAllPages (dev panel, integer btnAdrCde)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_ADD_PAGE_FLIP_ACTION,itoa(btnAdrCde),',',MODERO_PAGE_FLIP_ACTION_CLEAR_ALL_POPUPS_FROM_ALL_PAGES")
}

/*
 * Function:    moderoDisableButtonAllPageFlips
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *
 * Description: Clear all page flip actions from a button.
 */
define_function moderoDisableButtonAllPageFlips (dev panel, integer btnAdrCde)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_CLEAR_ALL_PAGE_FLIPS,itoa(btnAdrCde)")
}

/*
 * Function:    moderoDisableButtonPageFlipActionStandard
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char pageName[] - page name
 *
 * Description: Delete a standard page flip action to a specified page from a
 *              button.
 */
define_function moderoDisableButtonPageFlipActionStandard (dev panel, integer btnAdrCde, char pageName[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_DELETE_PAGE_FLIP_ACTION,itoa(btnAdrCde),',',MODERO_PAGE_FLIP_ACTION_STANDARD,',',pageName")
}

/*
 * Function:    moderoDisableButtonPageFlipActionAnimated
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char pageName[] - page name
 *              char pageFlipAnimation[] - page flip animation
 *
 * Description: Delete an animated page flip action to a specified page from a
 *              button.
 */
define_function moderoDisableButtonPageFlipActionAnimated (dev panel, integer btnAdrCde, char pageName[], char pageFlipAnimation[])
{
	switch (pageFlipAnimation)
	{
		case MODERO_PAGE_FLIP_ANIMATION_SLIDE_LEFT:
		case MODERO_PAGE_FLIP_ANIMATION_SLIDE_RIGHT:
		case MODERO_PAGE_FLIP_ANIMATION_SLIDE_TOP:
		case MODERO_PAGE_FLIP_ANIMATION_SLIDE_BOTTOM:
		case MODERO_PAGE_FLIP_ANIMATION_SLIDE_BOUNCE_LEFT:
		case MODERO_PAGE_FLIP_ANIMATION_SLIDE_BOUNCE_RIGHT:
		case MODERO_PAGE_FLIP_ANIMATION_SLIDE_BOUNCE_TOP:
		case MODERO_PAGE_FLIP_ANIMATION_SLIDE_BOUNCE_BOTTOM:
		case MODERO_PAGE_FLIP_ANIMATION_CENTER_DOOR_FADE_LEFT:
		case MODERO_PAGE_FLIP_ANIMATION_CENTER_DOOR_FADE_RIGHT:
		case MODERO_PAGE_FLIP_ANIMATION_CENTER_DOOR_FADE_TOP:
		case MODERO_PAGE_FLIP_ANIMATION_CENTER_DOOR_FADE_BOTTOM:
		case MODERO_PAGE_FLIP_ANIMATION_DOOR_FADE_LEFT:
		case MODERO_PAGE_FLIP_ANIMATION_DOOR_FADE_RIGHT:
		case MODERO_PAGE_FLIP_ANIMATION_DOOR_FADE_TOP:
		case MODERO_PAGE_FLIP_ANIMATION_DOOR_FADE_BOTTOM:
		case MODERO_PAGE_FLIP_ANIMATION_BLACK_GLASS_LEFT:
		case MODERO_PAGE_FLIP_ANIMATION_BLACK_GLASS_RIGHT:
		case MODERO_PAGE_FLIP_ANIMATION_PAGE_CURL_LOWER_LEFT:
		case MODERO_PAGE_FLIP_ANIMATION_PAGE_CURL_LOWER_RIGHT:
		case MODERO_PAGE_FLIP_ANIMATION_PAGE_CURL_UPPER_LEFT:
		case MODERO_PAGE_FLIP_ANIMATION_PAGE_CURL_UPPER_RIGHT:
		case MODERO_PAGE_FLIP_ANIMATION_ZOOM_IN:
		case MODERO_PAGE_FLIP_ANIMATION_ZOOM_OUT:
		case MODERO_PAGE_FLIP_ANIMATION_IMPLODE:
		case MODERO_PAGE_FLIP_ANIMATION_EXPLODE:
		case MODERO_PAGE_FLIP_ANIMATION_SPIN_IN:
		case MODERO_PAGE_FLIP_ANIMATION_SPIN_OUT:
		case MODERO_PAGE_FLIP_ANIMATION_WAVES:
		case MODERO_PAGE_FLIP_ANIMATION_FLIP_CARD_LEFT:
		case MODERO_PAGE_FLIP_ANIMATION_FLIP_CARD_RIGHT:
		case MODERO_PAGE_FLIP_ANIMATION_FLIP_CARD_TOP:
		case MODERO_PAGE_FLIP_ANIMATION_FLIP_CARD_BOTTOM:
		case MODERO_PAGE_FLIP_ANIMATION_SLATS_LEFT:
		case MODERO_PAGE_FLIP_ANIMATION_SLATS_RIGHT:
		case MODERO_PAGE_FLIP_ANIMATION_SLATS_TOP:
		case MODERO_PAGE_FLIP_ANIMATION_SLATS_BOTTOM:
		case MODERO_PAGE_FLIP_ANIMATION_SQUISH_LEFT:
		case MODERO_PAGE_FLIP_ANIMATION_SQUISH_RIGHT:
		case MODERO_PAGE_FLIP_ANIMATION_SQUISH_TOP:
		case MODERO_PAGE_FLIP_ANIMATION_SQUISH_BOTTOM:
		case MODERO_PAGE_FLIP_ANIMATION_TUMBLE_LOWER_LEFT:
		case MODERO_PAGE_FLIP_ANIMATION_TUMBLE_LOWER_RIGHT:
		case MODERO_PAGE_FLIP_ANIMATION_TUMBLE_UPPER_LEFT:
		case MODERO_PAGE_FLIP_ANIMATION_TUMBLE_UPPER_RIGHT:
		case MODERO_PAGE_FLIP_ANIMATION_WIPE_LEFT:
		case MODERO_PAGE_FLIP_ANIMATION_WIPE_RIGHT:
		case MODERO_PAGE_FLIP_ANIMATION_WIPE_TOP:
		case MODERO_PAGE_FLIP_ANIMATION_WIPE_BOTTOM:
		{
			sendCommand (panel, "MODERO_COMMAND_BUTTON_DELETE_PAGE_FLIP_ACTION,itoa(btnAdrCde),',',MODERO_PAGE_FLIP_ACTION_ANIMATED,',',pageName,',',pageFlipAnimation")
		}
	}
}

/*
 * Function:    moderoDisableButtonPageFlipActionShowPopup
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char popupName[] - popup name
 *
 * Description: Delete a "show popup" action from a button.
 */
define_function moderoDisableButtonPageFlipActionShowPopup (dev panel, integer btnAdrCde, char popupName[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_DELETE_PAGE_FLIP_ACTION,itoa(btnAdrCde),',',MODERO_PAGE_FLIP_ACTION_SHOW_POPUP,',',popupName")
}

/*
 * Function:    moderoDisableButtonPageFlipActionHidePopup
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char popupName[] - popup name
 *
 * Description: Delete a "hide popup" action from a button.
 */
define_function moderoDisableButtonPageFlipActionHidePopup (dev panel, integer btnAdrCde, char popupName[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_DELETE_PAGE_FLIP_ACTION,itoa(btnAdrCde),',',MODERO_PAGE_FLIP_ACTION_HIDE_POPUP,',',popupName")
}

/*
 * Function:    moderoDisableButtonPageFlipActionTogglePopup
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char popupName[] - popup name
 *
 * Description: Delete a "toggle popup" action from a button.
 */
define_function moderoDisableButtonPageFlipActionTogglePopup (dev panel, integer btnAdrCde, char popupName[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_DELETE_PAGE_FLIP_ACTION,itoa(btnAdrCde),',',MODERO_PAGE_FLIP_ACTION_TOGGLE_POPUP,',',popupName")
}

/*
 * Function:    moderoDisableButtonPageFlipActionHidePopupGroupAllPages
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char popupGroupName[] - popup group name
 *
 * Description: Delete a "hide popup group from all pages" action from a button.
 */
define_function moderoDisableButtonPageFlipActionHidePopupGroupAllPages (dev panel, integer btnAdrCde, char popupGroupName[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_DELETE_PAGE_FLIP_ACTION,itoa(btnAdrCde),',',MODERO_PAGE_FLIP_ACTION_CLEAR_POPUP_GROUP_FROM_ALL_PAGES,',',popupGroupName")
}

/*
 * Function:    moderoDisableButtonPageFlipActionHideAllPopupsOnPage
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char pageName[] - page name
 *
 * Description: Delete a "hide all popups from page" action from a button.
 */
define_function moderoDisableButtonPageFlipActionHideAllPopupsOnPage (dev panel, integer btnAdrCde, char pageName[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_DELETE_PAGE_FLIP_ACTION,itoa(btnAdrCde),',',MODERO_PAGE_FLIP_ACTION_CLEAR_ALL_POPUPS_FROM_PAGE,',',pageName")
}

/*
 * Function:    moderoDisablebuttonPageFlipActionHideAllPopupsAllPages
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *
 * Description: Delete a "hide all popups from all pages" action from a button.
 */
define_function moderoDisablebuttonPageFlipActionHideAllPopupsAllPages (dev panel, integer btnAdrCde)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_DELETE_PAGE_FLIP_ACTION,itoa(btnAdrCde),',',MODERO_PAGE_FLIP_ACTION_CLEAR_ALL_POPUPS_FROM_ALL_PAGES")
}

/*
 * Function:    moderoEnableButtonPageFlipPassword
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer userLevel - user level
 *
 * Description: Add a page flip password to a button.
 */
define_function moderoEnableButtonPageFlipPassword (dev panel, integer btnAdrCde, integer userLevel)
{
	switch (userLevel)
	{
		case MODERO_PASSWORD_LEVEL_USER_1:
		case MODERO_PASSWORD_LEVEL_USER_2:
		case MODERO_PASSWORD_LEVEL_USER_3:
		case MODERO_PASSWORD_LEVEL_USER_4:
		case MODERO_PASSWORD_LEVEL_PROTECTED:
		{
			sendCommand (panel, "MODERO_COMMAND_BUTTON_PROTECTED_PAGE_FLIP_FLAG,itoa(btnAdrCde),',',itoa(userLevel)")
		}
	}
}

/*
 * Function:    moderoDisableButtonPageFlipPassword
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer userLevel - user level
 *
 * Description: Delete a page flip password from a button.
 */
define_function moderoDisableButtonPageFlipPassword (dev panel, integer btnAdrCde, integer userLevel)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_PROTECTED_PAGE_FLIP_FLAG,itoa(btnAdrCde),',',itoa(MODERO_PASSWORD_LEVEL_DISABLE)")
}

/*
 * Function:    moderoSetButtonShow
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *
 * Description: Show a button.
 */
define_function moderoSetButtonShow (dev panel, integer btnAdrCde)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_SHOW_HIDE,itoa(btnAdrCde),',',MODERO_BUTTON_SHOW")
}

/*
 * Function:    moderoSetButtonHide
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *
 * Description: Hide a button.
 */
define_function moderoSetButtonHide (dev panel, integer btnAdrCde)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_SHOW_HIDE,itoa(btnAdrCde),',',MODERO_BUTTON_HIDE")
}

/*
 * Function:    moderoSetButtonText
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *              char nonUnicodeTextString[] - non-unicode text string
 *
 * Description: Set the text of a button to a non-unicode string.
 */
define_function moderoSetButtonText (dev panel, integer btnAdrCde, integer btnState, char nonUnicodeTextString[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_ASSIGN_TEXT,itoa(btnAdrCde),',',itoa(btnState),',',nonUnicodeTextString")
}

/*
 * Function:    moderoSetButtonTextAppend
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *              char nonUnicodeTextString[] - non-unicode text string
 *
 * Description: Append non-unicode text to the existing text of a button.
 */
define_function moderoSetButtonTextAppend (dev panel, integer btnAdrCde, integer btnState, char nonUnicodeTextString[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_APPEND_TEXT,itoa(btnAdrCde),',',itoa(btnState),',',nonUnicodeTextString")
}

/*
 * Function:    moderoSetButtonTextUnicode
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *              char unicodeTextString[] - unicode text string
 *
 * Description: Set the text of a button to a unicode string.
 */
define_function moderoSetButtonTextUnicode (dev panel, integer btnAdrCde, integer btnState, char unicodeTextString[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_ASSIGN_UNICODE_TEXT,itoa(btnAdrCde),',',itoa(btnState),',',unicodeTextString")
}

/*
 * Function:    moderoSetButtonTextUnicodeAppend
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *              char unicodeTextString[] - unicode text string
 *
 * Description: Append unicode text to the existing text of a button.
 */
define_function moderoSetButtonTextUnicodeAppend (dev panel, integer btnAdrCde, integer btnState, char unicodeTextString[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_APPEND_UNICODE_TEXT,itoa(btnAdrCde),',',itoa(btnState),',',unicodeTextString")
}

/*
 * Function:    moderoSetButtonOpacity
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *              integer opacityValue - opacity value (0 - 255)
 *
 * Description: Set button opacity.
 */
define_function moderoSetButtonOpacity (dev panel, integer btnAdrCde, integer btnState, integer opacityValue)
{
	if ( (opacityValue >= MODERO_OPACITY_INVISIBLE) and (opacityValue <= MODERO_OPACITY_OPAQUE) )
	{
		sendCommand (panel, "MODERO_COMMAND_BUTTON_OPACITY,itoa(btnAdrCde),',',itoa(btnState),',',itoa(opacityValue)")
	}
}

/*
 * Function:    moderoSetButtonsOpacity
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCdes[] - button address code array
 *              integer btnState - button state
 *              integer opacityValue - opacity value (0 - 255)
 *
 * Description: Set the opacity of multiple buttons simultaneously.
 */
define_function moderoSetButtonsOpacity (dev panel, integer btnAdrCdes[], integer btnState, integer opacityValue)
{
	if ( (opacityValue >= MODERO_OPACITY_INVISIBLE) and (opacityValue <= MODERO_OPACITY_OPAQUE) )
	{
		stack_var integer i

		for (i = 1; i <= length_array(btnAdrCdes); i++)
		{
			sendCommand (panel, "MODERO_COMMAND_BUTTON_OPACITY,itoa(btnAdrCdes[i]),',',itoa(btnState),',',itoa(opacityValue)")
		}
	}
}

/*
 * Function:    moderoDeleteButtonVideoSnapshot
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *
 * Description: Delete video snapshot from button.
 */
define_function moderoDeleteButtonVideoSnapshot (dev panel, integer btnAdrCde, integer btnState)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_DELETE_VIDEO_SNAPSHOT,itoa(btnAdrCde),',',itoa(btnState)")
}

/*
 * Function:    moderoSetButtonDrawOrder
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *              char layer1Bottom[] - layer at bottom of draw order
 *              char layer2[] - next layer on top
 *              char layer3[] - next layer on top
 *              char layer4[] - next layer on top
 *              char layer5Top[] - final and top-most layer
 *
 * Description: Set the draw order for each of the 5 layers (fill, image, icon,
*               text, & border).
 */
define_function moderoSetButtonDrawOrder (dev panel, integer btnAdrCde, integer btnState, char layer1Bottom[], char layer2[], char layer3[], char layer4[], char layer5Top[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_DRAW_ORDER,itoa(btnAdrCde),',',itoa(btnState),',',layer1Bottom,layer2,layer3,layer4,layer5Top")
}

/*
 * Function:    moderoSetButtonFeedbackType
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char feedbackType[] - feedback type
 *
 * Description: Set the button feedback type.
 */
define_function moderoSetButtonFeedbackType (dev panel, integer btnAdrCde, char feedbackType[])
{
	switch (feedbackType)
	{
		case MODERO_BUTTON_FEEDBACK_TYPE_NONE:
		case MODERO_BUTTON_FEEDBACK_TYPE_CHANNEL:
		case MODERO_BUTTON_FEEDBACK_TYPE_ON:
		case MODERO_BUTTON_FEEDBACK_TYPE_BLINK:
		case MODERO_BUTTON_FEEDBACK_TYPE_INVERT:
		case MODERO_BUTTON_FEEDBACK_TYPE_MOMENTARY:
		{
			sendCommand (panel, "MODERO_COMMAND_BUTTON_FEEDBACK_TYPE,itoa(btnAdrCde),',',feedbackType")
		}
	}
}

/*
 * Function:    moderoSetButtonInputMaskTextArea
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char inputMask[] - text input mask
 *
 * Description: Set the input mask for the text area button.
 */
#warn '@TODO - amx-modero-control - put more info in commenting for moderoSetButtonInputMaskTextArea function'
define_function moderoSetButtonInputMaskTextArea (dev panel, integer btnAdrCde, char inputMask[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_INPUT_MASK,itoa(btnAdrCde),',',inputMask")
}

/*
 * Function:    moderoSetButtonMaskImage
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char maskImage[] - mask image file name
 *
 * Description: Set the mask image for the text area button.
 */
define_function moderoSetButtonMaskImage (dev panel, integer btnAdrCde, integer btnState, char maskImage[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_MASK_IMAGE,itoa(btnAdrCde),',',itoa(btnState),',',maskImage")
}

/*
 * Function:    moderoSetButtonCompositeVideoLinesToRemove
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *              integer lineCount - line count
 *
 * Description: Set the number of lines to remove equally from the top and bottom
 *              of a composite video signal. A line count of zero (0) will display the
 *              incoming video signal unaffected. Use this function to scale non 4x3
 *              video images into non 4x4 video buttons.
 */
define_function moderoSetButtonCompositeVideoLinesToRemove (dev panel, integer btnAdrCde, integer btnState, integer lineCount)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_INPUT_MASK,itoa(btnAdrCde),',',itoa(btnState),',',itoa(lineCount)")
}

/*
 * Function:    moderoSetButtonMaximumLengthTextArea
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer textLength - text length
 *
 * Description: Set the maximum length of the text area button.
 */
define_function moderoSetButtonMaximumLengthTextArea (dev panel, integer btnAdrCde, integer textLength)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_MAX_LENGTH_TEXT_AREA,itoa(btnAdrCde),',',itoa(textLength)")
}

/*
 * Function:    moderoClearButtonTakenoteAnnotations
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *
 * Description: Clear current TakeNote annotations.
 */
define_function moderoClearButtonTakenoteAnnotations (dev panel, integer btnAdrCde)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_CLEAR_TAKENOTE_ANNOTATIONS,itoa(btnAdrCde),',',itoa(MODERO_TAKENOTE_CLEAR)")
}

/*
 * Function:    moderoClearButtonTakenoteAnnotationsAll
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *
 * Description: Clear all TakeNote annotations.
 */
define_function moderoClearButtonTakenoteAnnotationsAll (dev panel, integer btnAdrCde)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_CLEAR_TAKENOTE_ANNOTATIONS,itoa(btnAdrCde),',',itoa(MODERO_TAKENOTE_CLEAR_ALL)")
}

/*
 * Function:    moderoSetButtonTakenoteNetworkName
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char ipOrHostname[] - ip address or hostname
 *
 * Description: Set the TakeNote network name for a button.
 */
define_function moderoSetButtonTakenoteNetworkName (dev panel, integer btnAdrCde, char ipOrHostname[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_TAKENOTE_NETWORK_NAME,itoa(btnAdrCde),',',ipOrHostname")
}

/*
 * Function:    moderoSetButtonTakenoteNetworkPort
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer port - network port (1 - 65535)
 *
 * Description: Set the TakeNote network port for a button.
 */
define_function moderoSetButtonTakenoteNetworkPort (dev panel, integer btnAdrCde, integer port)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_TAKENOTE_NETWORK_NAME,itoa(btnAdrCde),',',itoa(port)")
}

/*
 * Function:    moderoSetButtonBorderStyleNameAllStates
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char borderStyleName[] - border style name
 *
 * Description: Set the button border style (note: applies to all states).
 */
define_function moderoSetButtonBorderStyleNameAllStates (dev panel, integer btnAdrCde, char borderStyleName[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_BORDER_STYLE,itoa(btnAdrCde),',',borderStyleName")
}

/*
 * Function:    moderoSetButtonBorderStyleName
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *              char borderStyleName[] - border style name
 *
 * Description: Set the button border style.
 */
define_function moderoSetButtonBorderStyleName (dev panel, integer btnAdrCde, integer btnState, char borderStyleName[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_BORDER_STYLE,itoa(btnAdrCde),',',itoa(btnState),',',borderStyleName")
}

/*
 * Function:    moderoSetButtonDisplayVideoWindow
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *
 * Description: Set the button to display a video window.
 */
define_function moderoSetButtonDisplayVideoWindow (dev panel, integer btnAdrCde, integer btnState)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_VIDEO_WINDOW,itoa(btnAdrCde),',',itoa(btnState),',',itoa(MODERO_VIDEO_WINDOW_ON)")
}

/*
 * Function:    moderoSetButtonDisplayNonVideoWindow
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *
 * Description: Set the button to display a non-video window.
 */
define_function moderoSetButtonDisplayNonVideoWindow (dev panel, integer btnAdrCde, integer btnState)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_VIDEO_WINDOW,itoa(btnAdrCde),',',itoa(btnState),',',itoa(MODERO_VIDEO_WINDOW_OFF)")
}

/*
 * Function:    moderoEnableButtonFocusTextArea
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *
 * Description: Enable focus to a text area button.
 */
define_function moderoEnableButtonFocusTextArea (dev panel, integer btnAdrCde)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_FOCUS_TEXT_AREA,itoa(btnAdrCde),',',itoa(MODERO_TEXT_AREA_SELECT)")
}

/*
 * Function:    moderoDisableButtonFocusTextArea
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *
 * Description: Disable focus to a text area button.
 */
define_function moderoDisableButtonFocusTextArea (dev panel, integer btnAdrCde)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_FOCUS_TEXT_AREA,itoa(btnAdrCde),',',itoa(MODERO_TEXT_AREA_UNSELECT)")
}

/*
 * Function:    moderoButtonTextAreaSubmitTextToMaster
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *
 * Description: Submit text for text area buttons. This causes the text areas
 *              to send their text as strings to the NetLinx Master.
 */
define_function moderoButtonTextAreaSubmitTextToMaster (dev panel, integer btnAdrCde)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_SUBMIT_TEXT,itoa(btnAdrCde)")
}

/*
 * Function:    moderoEnableButtonSoundWhenPressed
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char soundFileName[] - sound file name
 *
 * Description: Set the sound played when a button is pressed.
 */
define_function moderoEnableButtonSoundWhenPressed (dev panel, integer btnAdrCde, char soundFileName[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_SUBMIT_TEXT,itoa(btnAdrCde),',',soundFileName")
}

/*
 * Function:    moderoDisableButtonSoundWhenPressed
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *
 * Description: Clear the sound played when a button is pressed.
 */
define_function moderoDisableButtonSoundWhenPressed (dev panel, integer btnAdrCde)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_SOUND_FOR_BUTTON_HIT,itoa(btnAdrCde),','")
}

/*
 * Function:    moderoSetButtonSizeAndPosition
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer xCoordLeftEdge - x coordinate for the left edge
 *              integer yCoordTopEdge - y coordinate for the top edge
 *              integer xCoordRightEdge - x coordinate for the right edge
 *              integer yCoordBottomEdge - y coordinate for the bottom edge
 *
 * Description: Set the button size and its position on the page.
 */
define_function moderoSetButtonSizeAndPosition (dev panel, integer btnAdrCde, integer xCoordLeftEdge, integer yCoordTopEdge, integer xCoordRightEdge, integer yCoordBottomEdge)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_SIZE_AND_POSITION,itoa(btnAdrCde),',',itoa(xCoordLeftEdge),',',itoa(yCoordTopEdge),',',itoa(xCoordRightEdge),',',itoa(yCoordBottomEdge)")
}

/*
 * Function:    moderoButtonLogOnComputerControl
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *
 * Description: Log-On to the buttons' computer control connection.
 */
define_function moderoButtonLogOnComputerControl (dev panel, integer btnAdrCde)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_LOG_ON_OFF_COMPUTER_CONTROL_CONNECTION,itoa(btnAdrCde),',',itoa(MODERO_COMPUTER_CONTROL_LOG_IN)")
}

/*
 * Function:    moderoButtonLogOffComputerControl
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *
 * Description: Log-Off from the buttons' computer control connection.
 */
define_function moderoButtonLogOffComputerControl (dev panel, integer btnAdrCde)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_LOG_ON_OFF_COMPUTER_CONTROL_CONNECTION,itoa(btnAdrCde),',',itoa(MODERO_COMPUTER_CONTROL_LOG_OFF)")
}

/*
 * Function:    moderoSetButtonComputerControlRemoteHost
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char remoteHost[] - remote host
 *
 * Description: Set the computer control remote host for the specified computer
 *              control button.
 */
define_function moderoSetButtonComputerControlRemoteHost (dev panel, integer btnAdrCde, char remoteHost[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_COMPUTER_CONTROL_REMOTE_HOST,itoa(btnAdrCde),',',remoteHost")
}

/*
 * Function:    moderoSetButtonComputerControlNetworkPassword
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char password[] - network password
 *
 * Description: Set the network password for the specified computer control button.
 */
define_function moderoSetButtonComputerControlNetworkPassword (dev panel, integer btnAdrCde, char password[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_COMPUTER_CONTROL_NETWORK_PASSWORD,itoa(btnAdrCde),',',password")
}

/*
 * Function:    moderoSetButtonComputerControlNetworkPort
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer port - network port
 *
 * Description: Set the network port for the specified computer control button.
 */
define_function moderoSetButtonComputerControlNetworkPort (dev panel, integer btnAdrCde, integer port)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_COMPUTER_CONTROL_NETWORK_PORT,itoa(btnAdrCde),',',itoa(port)")
}

/*
 * Function:    moderoEnableButtonWordWrap
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *
 * Description: Enable the buttons' word wrap feature.
 */
define_function moderoEnableButtonWordWrap (dev panel, integer btnAdrCde, integer btnState)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_WORD_WRAP,itoa(btnAdrCde),',',itoa(btnState),',',itoa(MODERO_WORD_WRAP_ENABLE)")
}

/*
 * Function:    moderoDisableButtonWordWrap
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *
 * Description: Disable the buttons' word wrap feature.
 */
define_function moderoDisableButtonWordWrap (dev panel, integer btnAdrCde, integer btnState)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_WORD_WRAP,itoa(btnAdrCde),',',itoa(btnState),',',itoa(MODERO_WORD_WRAP_DISABLE)")
}

/*
 * Function:    moderoEnableButtonPushes
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *
 * Description: Enable pushes on a button.
 */
define_function moderoEnableButtonPushes (dev panel, integer btnAdrCde)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_ENABLE_OR_DISABLE,itoa(btnAdrCde),',',itoa(MODERO_BUTTON_ENABLE)")
}

/*
 * Function:    moderoDisableButtonPushes
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *
 * Description: Disable pushes on a button.
 */
define_function moderoDisableButtonPushes (dev panel, integer btnAdrCde)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_ENABLE_OR_DISABLE,itoa(btnAdrCde),',',itoa(MODERO_BUTTON_DISABLE)")
}

/*
 * Function:    moderoSetButtonFontId
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *              integer fontId - font id
 *
 * Description: Set a buttons' font to a specific Font ID value.
 */
define_function moderoSetButtonFontId (dev panel, integer btnAdrCde, integer btnState, integer fontId)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_FONT_ID,itoa(btnAdrCde),',',itoa(btnState),',',itoa(fontId)")
}

/*
 * Function:    moderoSetButtonBargraphDragIncrement
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer dragIncrement - drag increment
 *
 * Description: Change a button bargraphs drag increment.
 */
define_function moderoSetButtonBargraphDragIncrement (dev panel, integer btnAdrCde, integer dragIncrement)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_BARGRAPH_DRAG_INCREMENT,itoa(btnAdrCde),',',itoa(dragIncrement)")
}

/*
 * Function:    moderoEnableButtonInvertJoystickAxis
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer joystickAxisToInvert - joystick axis to invert
 *
 * Description: Invert the joystick buttons' axis to move the origin to another
 *              corner.
 */
define_function moderoEnableButtonInvertJoystickAxis (dev panel, integer btnAdrCde, integer joystickAxisToInvert)
{
	switch (joystickAxisToInvert)
	{
		case MODERO_JOYSTICK_INVERT_HORIZONTAL_AXIS:
		case MODERO_JOYSTICK_INVERT_VERTICAL_AXIS:
		case MODERO_JOYSTICK_INVERT_BOTH_AXIS:
		{
			sendCommand (panel, "MODERO_COMMAND_BUTTON_INVERT_JOYSTICK_AXIS_OR_BARGRAPH,itoa(btnAdrCde),',',itoa(joystickAxisToInvert)")
		}
	}
}

/*
 * Function:    moderoDisableButtonInvertJoystickAxis
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *
 * Description: Disable invert on joystick button.
 */
define_function moderoDisableButtonInvertJoystickAxis (dev panel, integer btnAdrCde)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_INVERT_JOYSTICK_AXIS_OR_BARGRAPH,itoa(btnAdrCde),',',itoa(MODERO_JOYSTICK_INVERT_NO)")
}

/*
 * Function:    moderoEnableButtonInvertBargraph
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *
 * Description: Enable invert on bargraph button.
 */
define_function moderoEnableButtonInvertBargraph (dev panel, integer btnAdrCde)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_INVERT_JOYSTICK_AXIS_OR_BARGRAPH,itoa(btnAdrCde),',',itoa(MODERO_BARGRAPH_INVERT_YES)")
}

/*
 * Function:    moderoDisableButtonInvertBargraph
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *
 * Description: Disable invert on bargraph button.
 */
define_function moderoDisableButtonInvertBargraph (dev panel, integer btnAdrCde)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_INVERT_JOYSTICK_AXIS_OR_BARGRAPH,itoa(btnAdrCde),',',itoa(MODERO_BARGRAPH_INVERT_NO)")
}

/*
 * Function:    moderoSetButtonTextEffectColour
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *              char colourName[] - colour name
 *
 * Description: Set the text effect color for the buttons' specified addresses
 *              and state to the specified color.
 */
define_function moderoSetButtonTextEffectColour (dev panel, integer btnAdrCde, integer btnState, char colourName[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_TEXT_EFFECT_COLOUR,itoa(btnAdrCde),',',itoa(btnState),',',colourName")
}

/*
 * Function:    moderoSetButtonTextEffect
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *              char textEffect[] - text effect
 *
 * Description: Set the button text effect.
 */
define_function moderoSetButtonTextEffect (dev panel, integer btnAdrCde, integer btnState, char textEffect[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_TEXT_EFFECT,itoa(btnAdrCde),',',itoa(btnState),',',textEffect")
}

/*
 * Function:    moderoSetButtonBoderColour
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *              char colourName[] - colour name
 *
 * Description: Set the border color for the buttons' specified addresses and
 *              state to the specified color.
 */
define_function moderoSetButtonBoderColour (dev panel, integer btnAdrCde, integer btnState, char colourName[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_BORDER_COLOUR,itoa(btnAdrCde),',',itoa(btnState),',',colourName")
}

/*
 * Function:    moderoSetButtonFillColour
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *              char colourName[] - colour name
 *
 * Description: Set the fill color for the buttons' specified addresses and
 *              state to the specified color.
 */
define_function moderoSetButtonFillColour (dev panel, integer btnAdrCde, integer btnState, char colourName[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_FILL_COLOUR,itoa(btnAdrCde),',',itoa(btnState),',',colourName")
}

/*
 * Function:    moderoSetButtonTextColour
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *              char colourName[] - colour name
 *
 * Description: Set the text color for the buttons' specified addresses and
 *              state to the specified color.
 */
define_function moderoSetButtonTextColour (dev panel, integer btnAdrCde, integer btnState, char colourName[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_TEXT_COLOUR,itoa(btnAdrCde),',',itoa(btnState),',',colourName")
}

/*
 * Function:    moderoSetButtonBitmap
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *              char imageFileName[] - image file name
 *
 * Description: Set button picture.
 */
define_function moderoSetButtonBitmap (dev panel, integer btnAdrCde, integer btnState, char imageFileName[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_BITMAP,itoa(btnAdrCde),',',itoa(btnState),',',imageFileName")
}

/*
 * Function:    moderoSetButtonBitmapResource
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *              char resourceName[] - resource name
 *
 * Description: Set button picture to use a dynamic image resource.
 */
define_function moderoSetButtonBitmapResource (dev panel, integer btnAdrCde, integer btnState, char resourceName[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_SET_DYNAMIC_IMAGE,itoa(btnAdrCde),',',itoa(btnState),',',resourceName")
}

/*
 * Function:    moderoSetButtonBitmapAlignmentAbsolute
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *              integer xCoordLeft - x coordinate for left
 *              integer yCoordTop - y coordinate for top
 *
 * Description: Set button bitmap/picture alignment to absolute x/y values.
 */
define_function moderoSetButtonBitmapAlignmentAbsolute (dev panel, integer btnAdrCde, integer btnState, integer xCoordLeft, integer yCoordTop)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_PICTURE_ALIGNMENT,itoa(btnAdrCde),',',itoa(btnState),',',itoa(MODERO_ALIGNMENT_OPTION_ABSOLUTE),',',itoa(xCoordLeft),',',itoa(yCoordTop)")
}

/*
 * Function:    moderoSetButtonBitmapAlignmentJustified
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *              integer alignmentOption - alignment option
 *
 * Description: Set button bitmap/picture alignment to justified.
 */
define_function moderoSetButtonBitmapAlignmentJustified (dev panel, integer btnAdrCde, integer btnState, integer alignmentOption)
{
	switch (alignmentOption)
	{
		case MODERO_ALIGNMENT_OPTION_TOP_LEFT:
		case MODERO_ALIGNMENT_OPTION_TOP_MIDDLE:
		case MODERO_ALIGNMENT_OPTION_TOP_RIGHT:
		case MODERO_ALIGNMENT_OPTION_CENTER_LEFT:
		case MODERO_ALIGNMENT_OPTION_CENTER_MIDDLE:
		case MODERO_ALIGNMENT_OPTION_CENTER_RIGHT:
		case MODERO_ALIGNMENT_OPTION_BOTTOM_LEFT:
		case MODERO_ALIGNMENT_OPTION_BOTTOM_MIDDLE:
		case MODERO_ALIGNMENT_OPTION_BOTTOM_RIGHT:
		{
			sendCommand (panel, "MODERO_COMMAND_BUTTON_PICTURE_ALIGNMENT,itoa(btnAdrCde),',',itoa(btnState),',',itoa(alignmentOption)")
		}
	}
}

/*
 * Function:    moderoSetButtonIconAlignmentAbsolute
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *              integer xCoordLeft - x coordinate for left
 *              integer yCoordTop - y coordinate for top
 *
 * Description: Set button icon alignment to absolute x/y values.
 */
define_function moderoSetButtonIconAlignmentAbsolute (dev panel, integer btnAdrCde, integer btnState, integer left, integer top)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_ICON_ALIGNMENT,itoa(btnAdrCde),',',itoa(btnState),',',itoa(MODERO_ALIGNMENT_OPTION_ABSOLUTE),',',itoa(left),',',itoa(top)")
}

/*
 * Function:    moderoSetButtonIconAlignmentJustified
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *              integer alignmentOption - alignment option
 *
 * Description: Set button icon alignment to justified.
 */
define_function moderoSetButtonIconAlignmentJustified (dev panel, integer btnAdrCde, integer btnState, integer alignmentOption)
{
	switch (alignmentOption)
	{
		case MODERO_ALIGNMENT_OPTION_TOP_LEFT:
		case MODERO_ALIGNMENT_OPTION_TOP_MIDDLE:
		case MODERO_ALIGNMENT_OPTION_TOP_RIGHT:
		case MODERO_ALIGNMENT_OPTION_CENTER_LEFT:
		case MODERO_ALIGNMENT_OPTION_CENTER_MIDDLE:
		case MODERO_ALIGNMENT_OPTION_CENTER_RIGHT:
		case MODERO_ALIGNMENT_OPTION_BOTTOM_LEFT:
		case MODERO_ALIGNMENT_OPTION_BOTTOM_MIDDLE:
		case MODERO_ALIGNMENT_OPTION_BOTTOM_RIGHT:
		{
			sendCommand (panel, "MODERO_COMMAND_BUTTON_ICON_ALIGNMENT,itoa(btnAdrCde),',',itoa(btnState),',',itoa(alignmentOption)")
		}
	}
}

/*
 * Function:    moderoSetButtonTextAlignmentAbsolute
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *              integer xCoordLeft - x coordinate for left
 *              integer yCoordTop - y coordinate for top
 *
 * Description: Set button text alignment to absolute x/y values.
 */
define_function moderoSetButtonTextAlignmentAbsolute (dev panel, integer btnAdrCde, integer btnState, integer left, integer top)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_TEXT_ALIGNMENT,itoa(btnAdrCde),',',itoa(btnState),',',itoa(MODERO_ALIGNMENT_OPTION_ABSOLUTE),',',itoa(left),',',itoa(top)")
}

/*
 * Function:    moderoSetButtonTextAlignmentJustified
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *              integer alignmentOption - alignment option
 *
 * Description: Set button text alignment to justified.
 */
define_function moderoSetButtonTextAlignmentJustified (dev panel, integer btnAdrCde, integer btnState, integer alignmentOption)
{
	switch (alignmentOption)
	{
		case MODERO_ALIGNMENT_OPTION_TOP_LEFT:
		case MODERO_ALIGNMENT_OPTION_TOP_MIDDLE:
		case MODERO_ALIGNMENT_OPTION_TOP_RIGHT:
		case MODERO_ALIGNMENT_OPTION_CENTER_LEFT:
		case MODERO_ALIGNMENT_OPTION_CENTER_MIDDLE:
		case MODERO_ALIGNMENT_OPTION_CENTER_RIGHT:
		case MODERO_ALIGNMENT_OPTION_BOTTOM_LEFT:
		case MODERO_ALIGNMENT_OPTION_BOTTOM_MIDDLE:
		case MODERO_ALIGNMENT_OPTION_BOTTOM_RIGHT:
		{
			sendCommand (panel, "MODERO_COMMAND_BUTTON_TEXT_ALIGNMENT,itoa(btnAdrCde),',',itoa(btnState),',',itoa(alignmentOption)")
		}
	}
}

/*
 * Function:    moderoButtonCopyAttribute
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrPortSource - address port of button to copy from
 *              integer btnAdrCdeSource - address code of button to copy from
 *              integer btnStateSource - state of button to copy from
 *              integer btnAdrCdeDest - address code of button to copy to
 *              integer btnStateDest - state of button to copy to
 *              char attribute[] - attribute to copy
 *
 * Description: Copy attribute of the source button to the destination button.
 */
define_function moderoButtonCopyAttribute (dev panel, integer btnAdrPortSource, integer btnAdrCdeSource, integer btnStateSource, integer btnAdrCdeDest, integer btnStateDest, char attribute[])
{
	switch (attribute)
	{
		case MODERO_BUTTON_ATTRIBUTE_BITMAP:
		case MODERO_BUTTON_ATTRIBUTE_BORDER:
		case MODERO_BUTTON_ATTRIBUTE_BORDER_COLOR:
		case MODERO_BUTTON_ATTRIBUTE_FILL_COLOR:
		case MODERO_BUTTON_ATTRIBUTE_TEXT_COLOR:
		case MODERO_BUTTON_ATTRIBUTE_TEXT_EFFECT_COLOR:
		case MODERO_BUTTON_ATTRIBUTE_TEXT_EFFECT:
		case MODERO_BUTTON_ATTRIBUTE_FONT:
		case MODERO_BUTTON_ATTRIBUTE_ICON:
		case MODERO_BUTTON_ATTRIBUTE_BITMAP_ALIGNMENT:
		case MODERO_BUTTON_ATTRIBUTE_ICON_ALIGNMENT:
		case MODERO_BUTTON_ATTRIBUTE_TEXT_ALIGNMENT:
		case MODERO_BUTTON_ATTRIBUTE_LINES_OF_VIDEO_REMOVED:
		case MODERO_BUTTON_ATTRIBUTE_OPACITY:
		case MODERO_BUTTON_ATTRIBUTE_BUTTON_SOUND:
		case MODERO_BUTTON_ATTRIBUTE_TEXT:
		case MODERO_BUTTON_ATTRIBUTE_VIDEO_SLOT_ID:
		case MODERO_BUTTON_ATTRIBUTE_WORD_WRAP:
		{
			sendCommand (panel, "MODERO_COMMAND_BUTTON_COPY_ATTRIBUTES,itoa(btnAdrCdeDest),',',itoa(btnStateDest),',',itoa(btnAdrPortSource),',',itoa(btnAdrCdeSource),',',itoa(btnStateSource),',%',attribute")
		}
	}
}

/*
 * Function:    moderoSetVirtualPcMouseMode
 *
 * Arguments:   dev panel - touch panel
 *              integer mouseMode - mouse mode
 *
 * Description: Set the mouse button mode for the virtual PC.
 */
define_function moderoSetVirtualPcMouseMode (dev panel, integer mouseMode)
{
	switch (mouseMode)
	{
		case MODERO_VIRTUAL_PC_MOUSE_MODE_NONE:
		case MODERO_VIRTUAL_PC_MOUSE_MODE_LEFT_CLICK:
		case MODERO_VIRTUAL_PC_MOUSE_MODE_RIGHT_CLICK:
		case MODERO_VIRTUAL_PC_MOUSE_MODE_MIDDLE_CLICK:
		{
			sendCommand (panel, "MODERO_COMMAND_MOUSE_BUTTON_MODE_FOR_VIRTUAL_PC,itoa(mouseMode)")
		}
	}
}

/*
 * Function:    moderoEnableVirtualPcMouseDoubleClick
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Turn on the ’mouse double-click’ feature for the virtual PC.
 */
define_function moderoEnableVirtualPcMouseDoubleClick (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_MOUSE_DOUBLE_CLICK_FOR_VIRTUAL_PC")
}

/*
 * Function:    moderoEnableButtonScaleToFit
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *
 * Description: Enable button image scale-to-fit feature (only for dynamic images).
 */
define_function moderoEnableButtonScaleToFit (dev panel, integer btnAdrCde, integer btnState)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_SCALE_TO_FIT,itoa(btnAdrCde),',',itoa(btnState),',',MODERO_SCALE_TO_FIT_ENABLE")
}

/*
 * Function:    moderoDisableButtonScaleToFit
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *
 * Description: Disable button image scale-to-fit feature.
 */
define_function moderoDisableButtonScaleToFit (dev panel, integer btnAdrCde, integer btnState)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_SCALE_TO_FIT,itoa(btnAdrCde),',',itoa(btnState),',',MODERO_SCALE_TO_FIT_DISABLE")
}

/*
 * Function:    moderoSetButtonBargraphUpperLimit
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer upperLimit - upperLimit
 *
 * Description: Set bargraph button upper limit.
 */
define_function moderoSetButtonBargraphUpperLimit (dev panel, integer btnAdrCde, /*integer btnState,*/ integer upperLimit)
{
	//sendCommand (panel, "MODERO_COMMAND_BUTTON_PARAMETER,itoa(btnAdrCde),',',itoa(btnState),',',MODERO_EMBEDDED_CODE_BARGRAPH_UPPER_LIMIT,itoa(upperLimit)")
	sendCommand (panel, "MODERO_COMMAND_BUTTON_BARGRAPH_UPPER_LIMIT,itoa(btnAdrCde),',',itoa(upperLimit)")
}

/*
 * Function:    moderoSetButtonBargraphLowerLimit
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer lowerLimit - lowerLimit
 *
 * Description: Set bargraph button lower limit.
 */
define_function moderoSetButtonBargraphLowerLimit (dev panel, integer btnAdrCde, /*integer btnState,*/ integer lowerLimit)
{
	//sendCommand (panel, "MODERO_COMMAND_BUTTON_PARAMETER,itoa(btnAdrCde),',',itoa(btnState),',',MODERO_EMBEDDED_CODE_BARGRAPH_LOWER_LIMIT,itoa(lowerLimit)")
	sendCommand (panel, "MODERO_COMMAND_BUTTON_BARGRAPH_LOWER_LIMIT,itoa(btnAdrCde),',',itoa(lowerLimit)")
}

/*
 * Function:    moderoSetButtonBargraphRampDownTime
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer rampDownTime - rampd down time, in tenths (1/10ths) of seconds
 *
 * Description: Set the button bargraph ramp-down time in 1/10th of a second.
 */
define_function moderoSetButtonBargraphRampDownTime (dev panel, integer btnAdrCde, integer rampDownTime)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_BARGRAPH_RAMP_DOWN_TIME,itoa(btnAdrCde),',',rampDownTime")
}

/*
 * Function:    moderoSetButtonBargraphRampUpTime
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer rampUpTime - rampd up time, in tenths (1/10ths) of seconds
 *
 * Description: Set the button bargraph ramp-up time in 1/10th of a second.
 */
define_function moderoSetButtonBargraphRampUpTime (dev panel, integer btnAdrCde, integer rampUpTime)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_BARGRAPH_RAMP_UP_TIME,itoa(btnAdrCde),',',rampUpTime")
}

/*
 * Function:    moderoSetButtonBargraphSliderColourIndex
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer colourIndex - colour index
 *
 * Description: Set the button bargraph slider color.
 */
define_function moderoSetButtonBargraphSliderColourIndex (dev panel, integer btnAdrCde, integer colourIndex)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_BARGRAPH_SLIDER_JOYSTICK_CURSOR_COLOUR,itoa(btnAdrCde),',',itoa(colourIndex)")
}

/*
 * Function:    moderoSetButtonBargraphSliderColourName
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char colourName[] - colour name
 *
 * Description: Set the button bargraph slider color.
 */
define_function moderoSetButtonBargraphSliderColourName (dev panel, integer btnAdrCde, char colourName[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_BARGRAPH_SLIDER_JOYSTICK_CURSOR_COLOUR,itoa(btnAdrCde),',',colourName")
}

/*
 * Function:    moderoSetButtonJoystickCursorColourIndex
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer colourIndex - colour index
 *
 * Description: Set the button joystick cursor color.
 */
define_function moderoSetButtonJoystickCursorColourIndex (dev panel, integer btnAdrCde, integer colourIndex)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_BARGRAPH_SLIDER_JOYSTICK_CURSOR_COLOUR,itoa(btnAdrCde),',',itoa(colourIndex)")
}

#warn '@TODO - amx-modero-control - create colour name, index, and hex value functions for font, text, border, fill, slider, joystick'

/*
 * Function:    moderoSetButtonJoystickCursorColourName
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char colourName[] - colour name
 *
 * Description: Set the button joystick cursor color.
 */
define_function moderoSetButtonJoystickCursorColourName (dev panel, integer btnAdrCde, char colourName[])
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_BARGRAPH_SLIDER_JOYSTICK_CURSOR_COLOUR,itoa(btnAdrCde),',',colourName")
}

/*
 * Function:    moderoSetButtonBargraphSliderName
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char sliderName[] - slider name
 *
 * Description: Set the button bargraph slider name.
 */
define_function moderoSetButtonBargraphSliderName (dev panel, integer btnAdrCde, char sliderName[])
{
	switch (sliderName)
	{
		case MODERO_BARGRAPH_SLIDER_NAME_NONE:
		case MODERO_BARGRAPH_SLIDER_NAME_BALL:
		case MODERO_BARGRAPH_SLIDER_NAME_CIRCLE_LARGE:
		case MODERO_BARGRAPH_SLIDER_NAME_CIRCLE_MEDIUM:
		case MODERO_BARGRAPH_SLIDER_NAME_CIRCLE_SMALL:
		case MODERO_BARGRAPH_SLIDER_NAME_PRECISION:
		case MODERO_BARGRAPH_SLIDER_NAME_RECTANGLE_LARGE:
		case MODERO_BARGRAPH_SLIDER_NAME_RECTANGLE_MEDIUM:
		case MODERO_BARGRAPH_SLIDER_NAME_RECTANGLE_SMALL:
		case MODERO_BARGRAPH_SLIDER_NAME_WINDOWS:
		case MODERO_BARGRAPH_SLIDER_NAME_WINDOWS_ACTIVE:
		{
			sendCommand (panel, "MODERO_COMMAND_BUTTON_BARGRAPH_SLIDER_JOYSTICK_CURSOR_NAME,itoa(btnAdrCde),',',sliderName")
		}
	}
}

/*
 * Function:    moderoSetButtonJoystickCursorName
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              char cursorName[] - cursor name
 *
 * Description: Set the button joystick cursor name.
 */
define_function moderoSetButtonJoystickCursorName (dev panel, integer btnAdrCde, char cursorName[])
{
	switch (cursorName)
	{
		case MODERO_JOYSTICK_CURSOR_NAME_NONE:
		case MODERO_JOYSTICK_CURSOR_NAME_ARROW:
		case MODERO_JOYSTICK_CURSOR_NAME_BALL:
		case MODERO_JOYSTICK_CURSOR_NAME_CIRCLE:
		case MODERO_JOYSTICK_CURSOR_NAME_CROSSHAIRS:
		case MODERO_JOYSTICK_CURSOR_NAME_GUNSIGHT:
		case MODERO_JOYSTICK_CURSOR_NAME_HAND:
		case MODERO_JOYSTICK_CURSOR_NAME_METAL:
		case MODERO_JOYSTICK_CURSOR_NAME_SPIRAL:
		case MODERO_JOYSTICK_CURSOR_NAME_TARGET:
		case MODERO_JOYSTICK_CURSOR_NAME_VIEW_FINDER:
		{
			sendCommand (panel, "MODERO_COMMAND_BUTTON_BARGRAPH_SLIDER_JOYSTICK_CURSOR_NAME,itoa(btnAdrCde),',',cursorName")
		}
	}
}

/*
 * Function:    moderoSetButtonIconIndex
 *
 * Arguments:   dev panel - touch panel
 *              integer btnAdrCde - button address code
 *              integer btnState - button state
 *              integer iconIndex - icon index
 *
 * Description: Set the button icon index.
 */
define_function moderoSetButtonIconIndex (dev panel, integer btnAdrCde, integer btnState, integer iconIndex)
{
	sendCommand (panel, "MODERO_COMMAND_BUTTON_ICON,itoa(btnAdrCde),',',itoa(btnState),',',itoa(iconIndex)")
}

/*
 * Function:    moderoSetIrChannelPulse
 *
 * Arguments:   dev panel - touch panel
 *              integer irPort - port that ir file is stored in
 *              integer irChannel - ir channel
 *              integer onTime - pulse on time, in tenths (1/10ths) of seconds
 *              integer offTime - pulse off time, in tenths (1/10ths) of seconds
 *
 * Description: Pulse the given IR channel for onTime in tenths of seconds.
 */
define_function moderoSetIrChannelPulse (dev panel, integer irPort, integer irChannel, integer onTime, integer offTime)
{
	sendCommand (panel, "MODERO_COMMAND_IR_CHANNEL_PULSE,itoa(irPort),',',itoa(irChannel),',',itoa(onTime),',',itoa(offTime)")
}

/*
 * Function:    moderoEnablePictureViewStartOnUsbInsert
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Enable picture view startup on USB insert.
 */
define_function moderoEnablePictureViewStartOnUsbInsert (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_PICTURE_VIEW,itoa(MODERO_PICTURE_VIEW_ENABLE_START_ON_USB_INSERT)")
}

/*
 * Function:    moderoDisablePictureViewStartOnUsbInsert
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Disable picture view startup on USB insert.
 */
define_function moderoDisablePictureViewStartOnUsbInsert (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_PICTURE_VIEW,itoa(MODERO_PICTURE_VIEW_DISABLE_START_ON_USB_INSERT)")
}

/*
 * Function:    moderoEnablePictureViewInPreviewMode
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Start picture view in preview mode.
 */
define_function moderoEnablePictureViewInPreviewMode (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_PICTURE_VIEW,MODERO_PICTURE_VIEW_START_IN_PREVIEW_MODE")
}

/*
 * Function:    moderoEnablePictureViewInNormalMode
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Start picture view in normal mode.
 */
define_function moderoEnablePictureViewInNormalMode (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_PICTURE_VIEW,MODERO_PICTURE_VIEW_START_IN_NORMAL_MODE")
}

/*
 * Function:    moderoDisablePictureView
 *
 * Arguments:   dev panel - touch panel
 *
 * Description: Stop running picture view.
 */
define_function moderoDisablePictureView (dev panel)
{
	sendCommand (panel, "MODERO_COMMAND_PICTURE_VIEW,MODERO_PICTURE_VIEW_STOP")
}


/*
 * --------------------
 * Dynamic image functions
 * --------------------
 */

/*
 * Function:    moderoResourceForceRefresh
 *
 * Arguments:   dev panel - touch panel
 *              char resourceName[] - resource name
 *              char notificationType[] - notification type
 *                      Values:
 *                          MODERO_RESOURCE_NOTIFICATION_ON
 *                          MODERO_RESOURCE_NOTIFICATION_OFF
 *                          MODERO_RESOURCE_NOTIFICATION_ONCE
 *
 * Description: Force a refresh for a given resource, if the resource is
 *              visible onscreen. If it is not onscreen, it will be deferred until it
 *              is visible to do the refresh.
 */
define_function moderoResourceForceRefresh (dev panel, char resourceName[], char notificationType[])
{
	sendCommand (panel, "MODERO_COMMAND_DYNAMIC_IMAGE_FORCE_REFRESH_IF_VISIBLE,resourceName,',',notificationType")
}

/*
 * Function:    moderoResourceForceRefreshPrefetchFromCache
 *
 * Arguments:   dev panel - touch panel
 *              char resourceName[] - resource name
 *              char notificationType[] - notification type
 *                      Values:
 *                          MODERO_RESOURCE_NOTIFICATION_ON
 *                          MODERO_RESOURCE_NOTIFICATION_OFF
 *                          MODERO_RESOURCE_NOTIFICATION_ONCE
 *
 * Description: Force a refresh of the given resource, prefetching the resource.
 *              The resource will be pre-fetched from the cache even if it is not
 *              currently visible.
 */
define_function moderoResourceForceRefreshPrefetchFromCache (dev panel, char resourceName[], char notificationType[])
{
	sendCommand (panel, "MODERO_COMMAND_DYNAMIC_IMAGE_FORCE_REFRESH_PREFETCH,resourceName,',',notificationType")
}

/*
 * Function:    moderoSetResourceParameter
 *
 * Arguments:   dev panel - touch panel
 *              char resourceName[] - resource name
 *              char embeddedCode[] - embedded code
 *              char value[] - data value
 *
 * Description: Sets a resource parameter value.
 */
define_function moderoSetResourceParameter (dev panel, char resourceName[], char embeddedCode[], char value[])
{
	sendCommand (panel, "MODERO_COMMAND_DYNAMIC_IMAGE_ADD_PARAMETER,resourceName,',',embeddedCode,value")
}

/*
 * Function:    moderoSetResourceHostName
 *
 * Arguments:   dev panel - touch panel
 *              char resourceName[] - resource name
 *              char hostName[] - host name
 *
 * Description: Change the host name property for a given resource.
 */
define_function moderoSetResourceHostName (dev panel, char resourceName[], char hostName[])
{
	sendCommand (panel, "MODERO_COMMAND_DYNAMIC_IMAGE_MODIFY_PARAMETER,resourceName,',',MODERO_EMBEDDED_CODE_RESOURCE_PARAMETER_HOST,hostName")
}

/*
 * Function:    moderoSetResourceFilePath
 *
 * Arguments:   dev panel - touch panel
 *              char resourceName[] - resource name
 *              char filePath[] - file path
 *
 * Description: Change the file path property for a given resource.
 */
define_function moderoSetResourceFilePath (dev panel, char resourceName[], char filePath[])
{
	sendCommand (panel, "MODERO_COMMAND_DYNAMIC_IMAGE_MODIFY_PARAMETER,resourceName,',',MODERO_EMBEDDED_CODE_RESOURCE_PARAMETER_PATH,filePath")
}

/*
 * Function:    moderoSetResourceFileName
 *
 * Arguments:   dev panel - touch panel
 *              char resourceName[] - resource name
 *              char fileName[] - file name
 *
 * Description: Change the file name property for a given resource.
 */
define_function moderoSetResourceFileName (dev panel, char resourceName[], char fileName[])
{
	sendCommand (panel, "MODERO_COMMAND_DYNAMIC_IMAGE_MODIFY_PARAMETER,resourceName,',',MODERO_EMBEDDED_CODE_RESOURCE_PARAMETER_FILE,fileName")
}

/*
 * Function:    moderoEnableResourceReloadOnView
 *
 * Arguments:   dev panel - touch panel
 *              char resourceName[] - resource name
 *
 * Description: Configure the resource so that it is reloaded each time it comes
 *              into view.
 */
define_function moderoEnableResourceReloadOnView (dev panel, char resourceName[])
{
	sendCommand (panel, "MODERO_COMMAND_DYNAMIC_IMAGE_MODIFY_PARAMETER,resourceName,',',MODERO_EMBEDDED_CODE_RESOURCE_PARAMETER_PRESERVE,MODERO_RESOURCE_PARAMETER_VALUE_PRESERVE_RELOAD_ON_VIEW")
}

/*
 * Function:    moderoDisableResourceReloadOnView
 *
 * Arguments:   dev panel - touch panel
 *              char resourceName[] - resource name
 *
 * Description: Configure the resource so that it is preserved in cache after
 *              the first time it is loaded, and not reloaded each time it comes
 *              into view.
 */
define_function moderoDisableResourceReloadOnView (dev panel, char resourceName[])
{
	sendCommand (panel, "MODERO_COMMAND_DYNAMIC_IMAGE_MODIFY_PARAMETER,resourceName,',',MODERO_EMBEDDED_CODE_RESOURCE_PARAMETER_PRESERVE,MODERO_RESOURCE_PARAMETER_VALUE_PRESERVE_CACHE")
}

/*
 * Function:    moderoSetResourceRefreshRate
 *
 * Arguments:   dev panel - touch panel
 *              char resourceName[] - resource name
 *              integer seconds - refresh rate in seconds
 *
 * Description: Change the refresh rate for a given resource.
 */
define_function moderoSetResourceRefreshRate (dev panel, char resourceName[], integer seconds)
{
	sendCommand (panel, "MODERO_COMMAND_DYNAMIC_IMAGE_CHANGE_REFRESH_RATE,resourceName,',',itoa(seconds)")
}



/*
 * --------------------
 * Utility functions
 * --------------------
 */

define_function char moderoIsG5Panel(dev panel)
{
	stack_var integer deviceId;
	stack_var integer i;

	deviceId = device_id(panel);

	for (i = max_length_array(MODERO_G5_DEVICE_IDS); i; i--)
	{
		if (deviceId == MODERO_G5_DEVICE_IDS[i])
		{
			return true;
		}
	}

	return false;
}

define_function moderoUnsupportedCommand(dev panel, char functionName[])
{
	stack_var char message[256];

	if (moderoIsG5Panel(panel))
	{
		message = "functionName, ' is not supported in G5 panels'";
	}
	else
	{
		message = "functionName, ' is only supported in G5 panels'";
	}

	amx_log(AMX_ERROR, message);
}


#end_if