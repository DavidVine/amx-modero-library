PROGRAM_NAME='amx-modero-listener'

#if_not_defined __AMX_MODERO_LISTENER__
#define __AMX_MODERO_LISTENER__

/*
 * --------------------
 * amx-modero-listener
 *
 * For usage, check out the readme for the amx-modero-library.
 * --------------------
 */

define_constant

char VERSION_AMX_MODERO_LISTENER[] = 'v0.9.0'

include 'amx-modero-api'
include 'amx-device-control'


/*
 * --------------------
 * Device arrays
 *
 * Any components that are to be monitored should have the appropriate
 * device array copied into the main program DEFINE_VARIABLE section and the 
 * associated #DEFINE compiler directives should be copied to the top of the 
 * main program, above the line of code that this include file is included 
 * into the main program.
 * --------------------
 */

define_variable

/*
#if_not_defined dvPanelsMain
#DEFINE INCLUDE_MODERO_MONITOR_MAIN
dev dvPanelsMain[] = { 10001:1:0 }
#end_if

#if_not_defined dvPanelsCoordinateTracking
#DEFINE INCLUDE_MODERO_MONITOR_COORDINATE_TRACKING
dev dvPanelsCoordinateTracking[] = { 10001:1:0 }
#end_if

#if_not_defined dvPanelsNfc
#DEFINE INCLUDE_MODERO_MONITOR_NFC
dev dvPanelsNfc[] = { 10001:1:0 }
#end_if

#if_not_defined dvPanelsUserTextInput
#DEFINE INCLUDE_MODERO_MONITOR_USER_TEXT_INPUT
dev dvPanelsUserTextInput[] = { 10001:1:0 }
#end_if

#if_not_defined dvPanelsStreaming
#DEFINE INCLUDE_MODERO_MONITOR_STREAMING
dev dvPanelsStreaming[] = { 10001:1:0 }
#end_if

#if_not_defined dvPanelsFeedback
#DEFINE INCLUDE_MODERO_MONITOR_FEEDBACK
dev dvPanelsFeedback[] = { 10001:1:0 }
#end_if

#if_not_defined dvPanelsBargraphs
#DEFINE INCLUDE_MODERO_MONITOR_BARGRAPHS
dev dvPanelsBargraphs[] = { 10001:1:0 }
#end_if

#if_not_defined dvPanelsButtons
#DEFINE INCLUDE_MODERO_MONITOR_BUTTONS
dev dvPanelsButtons[] = { 10001:1:0 }
#end_if
*/




/*
 * --------------------
 * Callback functions
 * --------------------
 */


/*
 * --------------------
 * Touch coordinate callback functions
 * --------------------
 */

/*
#define INCLUDE_MODERO_NOTIFY_TOUCH_COORDINATES_PRESS
// Note: This will get triggered BEFORE a push event handler in a button_event
// Note: If push/release coordinate reporting is enabled a push anywhere on the panel will trigger this function
define_function moderoNotifyTouchCoordinatesPress (dev panel, integer nX, integer nY)
{
	// panel is the touch panel
	// nX is the X coordinate
	// nY is the Y Coordinate
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_TOUCH_COORDINATES_MOVE
// Note: This will get triggered BEFORE a push event handler in a button_event
// Note: If push/release coordinate reporting is enabled a movement in user touch anywhere on the panel will trigger this function
define_function moderoNotifyTouchCoordinatesMove (dev panel, integer nX, integer nY)
{
	// panel is the touch panel
	// nX is the X coordinate
	// nY is the Y Coordinate
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_TOUCH_COORDINATES_RELEASE
// Note: This will get triggered AFTER a release event handler in a button_event
// Note: If push/release coordinate reporting is enabled a release anywhere on the panel will trigger this function
define_function moderoNotifyTouchCoordinatesRelease (dev panel, integer nX, integer nY)
{
	// panel is the touch panel
	// nX is the X coordinate
	// nY is the Y Coordinate
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_KEYBOARD_ENTRY
define_function moderoNotifyKeyboardEntry (dev panel, char text[])
{
	// panel is the touch panel
	// text is the text entry string entered into the keyboard
}
*/


/*
#define INCLUDE_MODERO_NOTIFY_KEYBOARD_ABORT
define_function moderoNotifyKeyboardAbort (dev panel)
{
	// panel is the touch panel
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_KEYPAD_ENTRY
define_function moderoNotifyKeypadEntry (dev panel, char text[])
{
	// panel is the touch panel
	// text is the text entry string entered into the keypad
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_KEYPAD_ABORT
define_function moderoNotifyKeypadAbort (dev panel)
{
	// panel is the touch panel
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_BUTTON_TEXT
define_function moderoNotifyButtonText (dev panel, integer btnAdrCde, integer nbtnState, char text[])
{
	// panel is the touch panel
	// btnAdrCde is the button address code
	// btnState is the button state
	// text is the button text
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_BUTTON_BITMAP_NAME
define_function moderoNotifyButtonBitmapName (dev panel, integer btnAdrCde, integer nbtnState, char bitmapName[])
{
	// panel is the touch panel
	// btnAdrCde is the button address code
	// btnState is the button state
	// bitmapName is the name of the image assigned to the button
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_BUTTON_ICON_INDEX
define_function moderoNotifyButtonIconIndex (dev panel, integer btnAdrCde, integer nbtnState, integer iconIndex)
{
	// panel is the touch panel
	// btnAdrCde is the button address code
	// btnState is the button state
	// iconIndex is the index of the icon assigned to the button
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_BUTTON_TEXT_JUSTIFICATION
define_function moderoNotifyButtonTextJustification (dev panel, integer btnAdrCde, integer nbtnState, integer justification)
{
	// panel is the touch panel
	// btnAdrCde is the button address code
	// btnState is the button state
	// justification is the buttons' text justification setting (MODERO_JUSTIFICATION_ABSOLUTE | MODERO_JUSTIFICATION_TOP_LEFT | MODERO_JUSTIFICATION_TOP_MIDDLE | MODERO_JUSTIFICATION_TOP_RIGHT | MODERO_JUSTIFICATION_CENTER_LEFT | MODERO_JUSTIFICATION_CENTER_MIDDLE | MODERO_JUSTIFICATION_CENTER_RIGHT | MODERO_JUSTIFICATION_BOTTOM_LEFT | MODERO_JUSTIFICATION_BOTTOM_MIDDLE | MODERO_JUSTIFICATION_BOTTOM_RIGHT)
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_BUTTON_BITMAP_JUSTIFICATION
define_function moderoNotifyButtonBitmapJustification (dev panel, integer btnAdrCde, integer nbtnState, integer justification)
{
	// panel is the touch panel
	// btnAdrCde is the button address code
	// btnState is the button state
	// justification is the buttons' bitmap justification setting (MODERO_JUSTIFICATION_ABSOLUTE | MODERO_JUSTIFICATION_TOP_LEFT | MODERO_JUSTIFICATION_TOP_MIDDLE | MODERO_JUSTIFICATION_TOP_RIGHT | MODERO_JUSTIFICATION_CENTER_LEFT | MODERO_JUSTIFICATION_CENTER_MIDDLE | MODERO_JUSTIFICATION_CENTER_RIGHT | MODERO_JUSTIFICATION_BOTTOM_LEFT | MODERO_JUSTIFICATION_BOTTOM_MIDDLE | MODERO_JUSTIFICATION_BOTTOM_RIGHT)
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_BUTTON_ICON_JUSTIFICATION
define_function moderoNotifyButtonIconJustification (dev panel, integer btnAdrCde, integer nbtnState, integer justification)
{
	// panel is the touch panel
	// btnAdrCde is the button address code
	// btnState is the button state
	// justification is the buttons' icon justification setting (MODERO_JUSTIFICATION_ABSOLUTE | MODERO_JUSTIFICATION_TOP_LEFT | MODERO_JUSTIFICATION_TOP_MIDDLE | MODERO_JUSTIFICATION_TOP_RIGHT | MODERO_JUSTIFICATION_CENTER_LEFT | MODERO_JUSTIFICATION_CENTER_MIDDLE | MODERO_JUSTIFICATION_CENTER_RIGHT | MODERO_JUSTIFICATION_BOTTOM_LEFT | MODERO_JUSTIFICATION_BOTTOM_MIDDLE | MODERO_JUSTIFICATION_BOTTOM_RIGHT)
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_BUTTON_FONT_INDEX
define_function moderoNotifyButtonFontIndex (dev panel, integer btnAdrCde, integer nbtnState, integer index)
{
	// panel is the touch panel
	// btnAdrCde is the button address code
	// btnState is the button state
	// index is the font index used by the button
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_BUTTON_TEXT_EFFECT_NAME
define_function moderoNotifyButtonTextEffectName (dev panel, integer btnAdrCde, integer nbtnState, char name[])
{
	// panel is the touch panel
	// btnAdrCde is the button address code
	// btnState is the button state
	// name is the name of the text effect used by the button
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_BUTTON_TEXT_EFFECT_COLOUR
define_function moderoNotifyButtonTextEffectColour (dev panel, integer btnAdrCde, integer nbtnState, char colour[])
{
	// panel is the touch panel
	// btnAdrCde is the button address code
	// btnState is the button state
	// colour is in hex string format (e.g., #5088f2AE)
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_BUTTON_WORD_WRAP_STATUS
define_function moderoNotifyButtonWordWrapStatus (dev panel, integer btnAdrCde, integer nbtnState, integer status)
{
	// panel is the touch panel
	// btnAdrCde is the button address code
	// btnState is the button state
	// status is the word wrap status (MODERO_WORD_WRAP_ENABLE | MODERO_WORD_WRAP_DISABLE)
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_BUTTON_BORDER_COLOUR
define_function moderoNotifyButtonBorderColour (dev panel, integer btnAdrCde, integer nbtnState, char colour[])
{
	// panel is the touch panel
	// btnAdrCde is the button address code
	// btnState is the button state
	// colour is in hex string format (e.g., #5088f2AE)
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_BUTTON_FILL_COLOUR
define_function moderoNotifyButtonFillColour (dev panel, integer btnAdrCde, integer nbtnState, char colour[])
{
	// panel is the touch panel
	// btnAdrCde is the button address code
	// btnState is the button state
	// colour is in hex string format (e.g., #5088f2AE)
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_BUTTON_TEXT_COLOUR
define_function moderoNotifyButtonTextColour (dev panel, integer btnAdrCde, integer nbtnState, char colour[])
{
	// panel is the touch panel
	// btnAdrCde is the button address code
	// btnState is the button state
	// colour is in hex string format (e.g., #5088f2AE)
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_BUTTON_BORDER_NAME
define_function moderoNotifyButtonBorderName (dev panel, integer btnAdrCde, integer nbtnState, char name[])
{
	// panel is the touch panel
	// btnAdrCde is the button address code
	// btnState is the button state
	// name is the border name
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_BUTTON_OPACITY
define_function moderoNotifyButtonOpacity (dev panel, integer btnAdrCde, integer nbtnState, integer opacity)
{
	// panel is the touch panel
	// btnAdrCde is the button address code
	// btnState is the button state
	// opacity is the buttons' opacity value (0 .. 255)
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_NFC_TAG_READ
define_function moderoNotifyNfcTagRead (dev panel, char nfcUid[])
{
	// panel is the touch panel
	// nfcUid is the UID of the NFC tag
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_STREAM_START
define_function moderoNotifyStreamStart (dev panel, integer btnAdrCde, integer btnAdrPort, char streamUrl[], integer numOfStreamStarts)
{
	// panel is the touch panel
	// btnAdrCde is the button address code
	// btnAdrPort is the button address port
	// streamUrl is the URL of the stream
	// numOfStreamStarts contains the number of times the stream has started
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_STREAM_STOP
define_function moderoNotifyStreamStop (dev panel, integer btnAdrCde, integer btnAdrPort, char streamUrl[], integer numOfStreamStops)
{
	// panel is the touch panel
	// btnAdrCde is the button address code
	// btnAdrPort is the button address port
	// streamUrl is the URL of the stream
	// numOfStreamStops contains the number of times the stream has stopped
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_STREAM_ERROR
define_function moderoNotifyStreamError (dev panel, integer btnAdrCde, integer btnAdrPort, char streamUrl[], integer numOfStreamErrors)
{
	// panel is the touch panel
	// btnAdrCde is the button address code
	// btnAdrPort is the button address port
	// streamUrl is the URL of the stream
	// numOfStreamErrors contains the number of times the stream has errored
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_RESOURCE_LOAD
define_function moderoNotifyResourceLoad (dev panel, char resourceName[])
{
	// panel is the touch panel
	// resourceName is the name of the dynamic resource that has loaded
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_BLUETOOTH_HANDSET
define_function moderoNotifyBluetoothHandset (dev panel, integer status)
{
	// panel is the touch panel
	// status is the staus indicator for the blutooth handset (MODERO_BLUETOOTH_ANSWER | MODERO_BLUETOOTH_REJECT_HANGUP | MODERO_BLUETOOTH_REDIAL)
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_AUDIO_DEVICE
define_function moderoNotifyAudioDevice (dev panel, integer audioDevice)
{
	// panel is the touch panel
	// audioDevice is the audio device (MODERO_AUDIO_DEVICE_SPEAKERS | MODERO_AUDIO_DEVICE_USB_HEADSET | MODERO_AUDIO_DEVICE_BLUETOOTH_HEADSET)
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_AUDIO_MUTE_STATUS
define_function moderoNotifyAudioMuteStatus (dev panel, integer muteStatus)
{
	// panel is the touch panel
	// muteStatus is the mute status (MODERO_MUTE_ENABLE | MODERO_MUTE_DISABLE)
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_VOLUME
define_function moderoNotifyVolume (dev panel, integer volume)
{
	// panel is the touch panel
	// volume is the volume level
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_GESTURE
define_function moderoNotifyGesture (dev panel, integer gestureType, integer gestureVelocitySimple, slong gestureVelocityPrecise)
{
	// panel is the touch panel
	// gestureType is the gesture type (MODERO_GESTURE_TYPE_SWIPE_UP | MODERO_GESTURE_TYPE_SWIPE_DOWN | MODERO_GESTURE_TYPE_SWIPE_RIGHT | MODERO_GESTURE_TYPE_SWIPE_LEFT | MODERO_GESTURE_TYPE_CLOCKWISE_CIRCLE | MODERO_GESTURE_TYPE_COUNTER_CLOCKWISE_CIRCLE | MODERO_GESTURE_TYPE_DOUBLE_TAP | MODERO_GESTURE_TYPE_2_FINGER_SWIPE_UP | MODERO_GESTURE_TYPE_2_FINGER_SWIPE_DOWN | MODERO_GESTURE_TYPE_2_FINGER_SWIPE_RIGHT | MODERO_GESTURE_TYPE_2_FINGER_SWIPE_LEFT)
	// gestureVelocitySimple is a simple indicator of gesture velocity (MODERO_GESTURE_VELOCITY_FAST | MODERO_GESTURE_VELOCITY_NORMAL | MODERO_GESTURE_VELOCITY_SLOW)
	// gestureVelocityPrecise is a precise indicator of gesture velocity (pixels per second for slides and circles | double tap, total time in milliseconds from first press to the second release)
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_SMART_CARD_REMOVE
define_function moderoNotifySmartCardRemove (dev panel)
{
	// panel is the touch panel
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_SMART_CARD_INSERT
define_function moderoNotifySmartCardInsert (dev panel, char chuid[])
{
	// panel is the touch panel
	// chuid is the CHUID of the smart card
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_SMART_CARD_READER_REMOVE
define_function moderoNotifySmartCardReaderRemove (dev panel)
{
	// panel is the touch panel
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_SMART_CARD_READER_INSERT
define_function moderoNotifySmartCardReaderInsert (dev panel, char readerName[])
{
	// panel is the touch panel
	// readerName is the name of the smart card reader
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_POPUP_LOCATION
define_function moderoNotifyPopupLocation (dev panel, char popupName[], integer popupLocationNotificationType, sinteger xCoord, sinteger yCoord, integer isPopupAttachedToCurrentPage)
{
	// panel is the touch panel
	// popupName is the name of the popup page
	// popupLocationNotificationType is the location notification type (MODERO_POPUP_NOTIFICATION_FLAG_QUERY_RESPONSE | MODERO_POPUP_NOTIFICATION_FLAG_ATTACH | MODERO_POPUP_NOTIFICATION_FLAG_DRAG | MODERO_POPUP_NOTIFICATION_FLAG_DETACH)
	// xCoord is the X coordinate of the popup
	// yCoord is the Y coordinate of the popup
	// isPopupAttachedToCurrentPage is a flag indicating if the popup is attached to the current page (TRUE | FALSE)
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_POPUP_SIZE
define_function moderoNotifyPopupSize (dev panel, char popupName[], integer width, integer height, integer isPopupAttachedToCurrentPage)
{
	// panel is the touch panel
	// popupName is the name of the popup page
	// width is the width of the popup
	// height is the height of the popup
	// isPopupAttachedToCurrentPage is a flag indicating if the popup is attached to the current page (TRUE | FALSE)
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_BUTTON_PUSH
define_function moderoNotifyButtonPush (dev panel, integer btnChanCde)
{
	// panel is the touch panel
	// btnChanCde is the button channel code
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_BUTTON_RELEASE
define_function moderoNotifyButtonRelease (dev panel, integer btnChanCde)
{
	// panel is the touch panel
	// btnChanCde is the button channel code
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_BUTTON_HOLD
define_function moderoNotifyButtonHold (dev panel, integer btnChanCde, integer holdTime)
{
	// panel is the touch panel
	// btnChanCde is the button channel code
	// holdTime is the button hold time
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_LEVEL_CHANGE
define_function moderoNotifyLevelChange (dev panel, integer btnLvlCde, integer lvlValue)
{
	// panel is the touch panel
	// btnLvlCde is the button level code
	// lvlValue is the level value
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_BUTTON_FEEDBACK_OFF
define_function moderoNotifyButtonFeedbackOff (dev panel, integer btnChanCde)
{
	// panel is the touch panel
	// btnChanCde is the button channel code
}
*/

/*
#define INCLUDE_MODERO_NOTIFY_BUTTON_FEEDBACK_ON
define_function moderoNotifyButtonFeedbackOn (dev panel, integer btnChanCde)
{
	// panel is the touch panel
	// btnChanCde is the button channel code
}
*/



/*
 * --------------------
 * Events to capture responses from the Modero or update notifications
 * --------------------
 */

define_event


/*
 * --------------------
 * Data events
 * --------------------
 */

#if_defined INCLUDE_MODERO_MONITOR_COORDINATE_TRACKING
data_event[dvPanelsCoordinateTracking]
{
	string:
	{
		if (find_string(data.text, 'Press,' ,1) == 1)    // Starts with 'Press,'
		{
			// String is in format 'Press,X,Y' where X and Y are the (X,Y) coordinates of the touch

			stack_var integer coordX
			stack_var integer coordY

			remove_string (data.text, 'Press,', 1)
			coordX = atoi (data.text)
			remove_string (data.text, "','", 1)
			coordY = atoi (data.text)

			#if_defined INCLUDE_MODERO_NOTIFY_TOUCH_COORDINATES_PRESS
			moderoNotifyTouchCoordinatesPress (data.device, coordX, coordY)
			#end_if

		}

		if (find_string(data.text, 'Move,' ,1) == 1)    // Starts with 'Move,'
		{
			// String is in format 'Press,X,Y' where X and Y are the (X,Y) coordinates of the touch

			stack_var integer coordX
			stack_var integer coordY

			remove_string (data.text, 'Move,', 1)
			coordX = atoi (data.text)
			remove_string (data.text, "','", 1)
			coordY = atoi (data.text)

			#if_defined INCLUDE_MODERO_NOTIFY_TOUCH_COORDINATES_MOVE
			moderoNotifyTouchCoordinatesMove (data.device, coordX, coordY)
			#end_if
		}

		else if (find_string(data.text, 'Release,' ,1) == 1)    // Starts with 'Release,'
		{
			// String is in format 'Press,X,Y' where X and Y are the (X,Y) coordinates of the release

			stack_var integer coordX
			stack_var integer coordY

			remove_string (data.text, 'Release,', 1)
			coordX = atoi (data.text)
			remove_string (data.text, "','", 1)
			coordY = atoi (data.text)

			#if_defined INCLUDE_MODERO_NOTIFY_TOUCH_COORDINATES_RELEASE
			moderoNotifyTouchCoordinatesRelease (data.device, coordX, coordY)
			#end_if
		}
	}
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_USER_TEXT_INPUT
data_event[dvPanelsUserTextInput]
{
	string:
	{
		select
		{
			active (find_string(data.text,"MODERO_STRING_KEYBOARD",1) == 1):
			{
				remove_string (data.text, "MODERO_STRING_KEYBOARD", 1)

				if (data.text == MODERO_KEYBOARD_ABORT)
				{
					#if_defined INCLUDE_MODERO_NOTIFY_KEYBOARD_ABORT
					moderoNotifyKeyboardAbort (data.device)
					#end_if
				}
				else
				{
					#if_defined INCLUDE_MODERO_NOTIFY_KEYBOARD_ENTRY
					moderoNotifyKeyboardEntry (data.device, data.text)
					#end_if
				}
			}

			active (find_string(data.text,"MODERO_STRING_KEYPAD",1) == 1):
			{
				remove_string (data.text, "MODERO_STRING_KEYPAD", 1)

				if (data.text != MODERO_KEYPAD_ABORT)
				{
					#if_defined INCLUDE_MODERO_NOTIFY_KEYPAD_ABORT
					moderoNotifyKeypadAbort (data.device)
					#end_if
				}
				else
				{
					#if_defined INCLUDE_MODERO_NOTIFY_KEYPAD_ENTRY
					moderoNotifyKeypadEntry (data.device, data.text)
					#end_if
				}
			}
		}
	}
}
#end_if



/*
 * --------------------
 * Button events
 * --------------------
 */

#if_defined INCLUDE_MODERO_MONITOR_BUTTONS
#if_defined INCLUDE_MODERO_NOTIFY_BUTTON_PUSH
button_event [dvPanelsButtons, CHANNEL_CODE_WILDCARD]
{
	push:
	{
		moderoNotifyButtonPush (button.input.device, button.input.channel)
	}
}
#end_if
#end_if

#if_defined INCLUDE_MODERO_MONITOR_BUTTONS
#if_defined INCLUDE_MODERO_NOTIFY_BUTTON_RELEASE
button_event [dvPanelsButtons, CHANNEL_CODE_WILDCARD]
{
	release:
	{
		moderoNotifyButtonRelease (button.input.device, button.input.channel)
	}
}
#end_if
#end_if

#if_defined INCLUDE_MODERO_MONITOR_BUTTONS
#if_defined INCLUDE_MODERO_NOTIFY_BUTTON_HOLD
button_event [dvPanelsButtons, CHANNEL_CODE_WILDCARD]
{
	hold[1,repeat]:
	{
		moderoNotifyButtonHold (button.input.device, button.input.channel, button.holdtime)
	}
}
#end_if
#end_if

/*
 * --------------------
 * Channel events
 * --------------------
 */

#if_defined INCLUDE_MODERO_MONITOR_BUTTONS
#if_defined INCLUDE_MODERO_NOTIFY_BUTTON_FEEDBACK_ON
channel_event [dvPanelsFeedback, CHANNEL_CODE_WILDCARD]
{
	on:
	{
		moderoNotifyButtonFeedbackOn (channel.device, channel.channel)
	}
}
#end_if
#end_if

#if_defined INCLUDE_MODERO_MONITOR_BUTTONS
#if_defined INCLUDE_MODERO_NOTIFY_BUTTON_FEEDBACK_OFF
channel_event [dvPanelsFeedback, CHANNEL_CODE_WILDCARD]
{
	off:
	{
		moderoNotifyButtonFeedbackOff (channel.device, channel.channel)
	}
}
#end_if
#end_if


/*
 * --------------------
 * Level events
 * --------------------
 */

#if_defined INCLUDE_MODERO_MONITOR_BARGRAPHS
#if_defined INCLUDE_MODERO_NOTIFY_LEVEL_CHANGE
level_event [dvPanelsBargraphs, WILDCARD_LEVEL_CODE]
{
	moderoNotifyLevelChange (level.input.device, level.input.level, level.value)
}
#end_if
#end_if

/*
 * --------------------
 * Custom events
 * --------------------
 */


#if_defined INCLUDE_MODERO_MONITOR_BUTTONS
custom_event [dvPanelsButtons, ADDRESS_CODE_WILDCARD, MODERO_CUSTOM_EVENT_ID_BUTTON_TEXT]
{
	// custom.id (INTEGER) - button address code
	// custom.type (INTEGER) - custom_event, event id
	// custom.flag (INTEGER) - 0 means a standard string, 1 means Unicode encoded string
	// custom.value1 (SLONG) - button state number
	// custom.value2 (SLONG) - actual length of string (this is not encoded size)
	// custom.value3 (SLONG) - index of first character (usually 1 or same as optional index)
	// custom.text (CHAR []) - the text from the button

	#if_defined INCLUDE_MODERO_NOTIFY_BUTTON_TEXT
	moderoNotifyButtonText (custom.device, custom.id, type_cast(custom.value1), custom.text)
	#end_if
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_BUTTONS
custom_event [dvPanelsButtons, ADDRESS_CODE_WILDCARD, MODERO_CUSTOM_EVENT_ID_BUTTON_BITMAP_NAME]
{
	// custom.id (INTEGER) - button address code
	// custom.type (INTEGER) - custom_event, event id
	// custom.flag (INTEGER) - 0 means a standard string, 1 means Unicode encoded string
	// custom.value1 (SLONG) - button state number
	// custom.value2 (SLONG) - actual length of string (this is not encoded size)
	// custom.value3 (SLONG) - zero
	// custom.text (CHAR []) - string that represents the bitmap name

	#if_defined INCLUDE_MODERO_NOTIFY_BUTTON_BITMAP_NAME
	moderoNotifyButtonBitmapName (custom.device, custom.id, type_cast(custom.value1), custom.text)
	#end_if
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_BUTTONS
custom_event [dvPanelsButtons, ADDRESS_CODE_WILDCARD, MODERO_CUSTOM_EVENT_ID_BUTTON_ICON_INDEX]
{
	// custom.id (INTEGER) - button address code
	// custom.type (INTEGER) - custom_event, event id
	// custom.flag (INTEGER) - 0 means a standard string, 1 means Unicode encoded string
	// custom.value1 (SLONG) - button state number
	// custom.value2 (SLONG) - icon index
	// custom.value3 (SLONG) - zero
	// custom.text (CHAR []) - blank

	#if_defined INCLUDE_MODERO_NOTIFY_BUTTON_ICON_INDEX
	moderoNotifyButtonIconIndex (custom.device, custom.id, type_cast(custom.value1), type_cast(custom.value2))
	#end_if
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_BUTTONS
custom_event [dvPanelsButtons, ADDRESS_CODE_WILDCARD, MODERO_CUSTOM_EVENT_ID_BUTTON_TEXT_JUSTIFICATION]
{
	// custom.id (INTEGER) - button address code
	// custom.type (INTEGER) - custom_event, event id
	// custom.flag (INTEGER) - 0 means a standard string, 1 means Unicode encoded string
	// custom.value1 (SLONG) - button state number
	// custom.value2 (SLONG) - 1 - 9 justify
	// custom.value3 (SLONG) - zero
	// custom.text (CHAR []) - blank

	#if_defined INCLUDE_MODERO_NOTIFY_BUTTON_TEXT_JUSTIFICATION
	moderoNotifyButtonTextJustification (custom.device, custom.id, type_cast(custom.value1), type_cast(custom.value2))
	#end_if
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_BUTTONS
custom_event [dvPanelsButtons, ADDRESS_CODE_WILDCARD, MODERO_CUSTOM_EVENT_ID_BUTTON_BITMAP_JUSTIFICATION]
{
	// custom.id (INTEGER) - button address code
	// custom.type (INTEGER) - custom_event, event id
	// custom.flag (INTEGER) - 0 means a standard string, 1 means Unicode encoded string
	// custom.value1 (SLONG) - button state number
	// custom.value2 (SLONG) - 1 - 9 justify
	// custom.value3 (SLONG) - zero
	// custom.text (CHAR []) - blank

	#if_defined INCLUDE_MODERO_NOTIFY_BUTTON_BITMAP_JUSTIFICATION
	moderoNotifyButtonBitmapJustification (custom.device, custom.id, type_cast(custom.value1), type_cast(custom.value2))
	#end_if
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_BUTTONS
custom_event [dvPanelsButtons, ADDRESS_CODE_WILDCARD, MODERO_CUSTOM_EVENT_ID_BUTTON_ICON_JUSTIFICATION]
{
	// custom.id (INTEGER) - button address code
	// custom.type (INTEGER) - custom_event, event id
	// custom.flag (INTEGER) - 0 means a standard string, 1 means Unicode encoded string
	// custom.value1 (SLONG) - button state number
	// custom.value2 (SLONG) - 1 - 9 justify
	// custom.value3 (SLONG) - zero
	// custom.text (CHAR []) - blank

	#if_defined INCLUDE_MODERO_NOTIFY_BUTTON_ICON_JUSTIFICATION
	moderoNotifyButtonIconJustification (custom.device, custom.id, type_cast(custom.value1), type_cast(custom.value2))
	#end_if
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_BUTTONS
custom_event [dvPanelsButtons, ADDRESS_CODE_WILDCARD, MODERO_CUSTOM_EVENT_ID_BUTTON_FONT_INDEX]
{
	// custom.id (INTEGER) - button address code
	// custom.type (INTEGER) - custom_event, event id
	// custom.flag (INTEGER) - 0 means a standard string, 1 means Unicode encoded string
	// custom.value1 (SLONG) - button state number
	// custom.value2 (SLONG) - font index
	// custom.value3 (SLONG) - zero
	// custom.text (CHAR []) - blank

	#if_defined INCLUDE_MODERO_NOTIFY_BUTTON_FONT_INDEX
	moderoNotifyButtonFontIndex (custom.device, custom.id, type_cast(custom.value1), type_cast(custom.value2))
	#end_if
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_BUTTONS
custom_event [dvPanelsButtons, ADDRESS_CODE_WILDCARD, MODERO_CUSTOM_EVENT_ID_BUTTON_TEXT_EFFECT_NAME]
{
	// custom.id (INTEGER) - button address code
	// custom.type (INTEGER) - custom_event, event id
	// custom.flag (INTEGER) - 0 means a standard string, 1 means Unicode encoded string
	// custom.value1 (SLONG) - button state number
	// custom.value2 (SLONG) - actual length of string
	// custom.value3 (SLONG) - zero
	// custom.text (CHAR []) - string that represents the text effect name

	#if_defined INCLUDE_MODERO_NOTIFY_BUTTON_TEXT_EFFECT_NAME
	moderoNotifyButtonTextEffectName (custom.device, custom.id, type_cast(custom.value1), custom.text)
	#end_if
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_BUTTONS
custom_event [dvPanelsButtons, ADDRESS_CODE_WILDCARD, MODERO_CUSTOM_EVENT_ID_BUTTON_TEXT_EFFECT_COLOUR]
{
	// custom.id - button address code
	// custom.type (INTEGER) - custom_event, event id
	// custom.flag (INTEGER) - 0 means a standard string, 1 means Unicode encoded string
	// custom.value1 (SLONG) - button state number
	// custom.value2 (SLONG) - actual length of string
	// custom.value3 (SLONG) - zero
	// custom.text (CHAR []) - hex encoded colour value (ex: #000000FF)

	#if_defined INCLUDE_MODERO_NOTIFY_BUTTON_TEXT_EFFECT_COLOUR
	moderoNotifyButtonTextEffectColour (custom.device, custom.id, type_cast(custom.value1), custom.text)
	#end_if
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_BUTTONS
custom_event [dvPanelsButtons, ADDRESS_CODE_WILDCARD, MODERO_CUSTOM_EVENT_ID_BUTTON_WORD_WRAP]
{
	// custom.id (INTEGER) - button address code
	// custom.type (INTEGER) - custom_event, event id
	// custom.flag (INTEGER) - 0 means a standard string, 1 means Unicode encoded string
	// custom.value1 (SLONG) - button state number
	// custom.value2 (SLONG) - 0 = no wrap, 1 = word wrap
	// custom.value3 (SLONG) - zero
	// custom.text (CHAR []) - blank

	#if_defined INCLUDE_MODERO_NOTIFY_BUTTON_WORD_WRAP_STATUS
	moderoNotifyButtonWordWrapStatus (custom.device, custom.id, type_cast(custom.value1), type_cast(custom.value2))
	#end_if
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_BUTTONS
custom_event [dvPanelsButtons, ADDRESS_CODE_WILDCARD, MODERO_CUSTOM_EVENT_ID_BUTTON_BORDER_COLOUR]
{
	// custom.id (INTEGER) - button address code
	// custom.type (INTEGER) - custom_event, event id
	// custom.flag (INTEGER) - 0 means a standard string, 1 means Unicode encoded string
	// custom.value1 (SLONG) - button state number
	// custom.value2 (SLONG) - actual length of string
	// custom.value3 (SLONG) - zero
	// custom.text (CHAR []) - hex encoded colour value (ex: #000000FF)

	#if_defined INCLUDE_MODERO_NOTIFY_BUTTON_BORDER_COLOUR
	moderoNotifyButtonBorderColour (custom.device, custom.id, type_cast(custom.value1), custom.text)
	#end_if
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_BUTTONS
custom_event [dvPanelsButtons, ADDRESS_CODE_WILDCARD, MODERO_CUSTOM_EVENT_ID_BUTTON_FILL_COLOUR]
{
	// custom.id (INTEGER) - button address code
	// custom.type (INTEGER) - custom_event, event id
	// custom.flag (INTEGER) - 0 means a standard string, 1 means Unicode encoded string
	// custom.value1 (SLONG) - button state number
	// custom.value2 (SLONG) - actual length of string
	// custom.value3 (SLONG) - zero
	// custom.text (CHAR []) - hex encoded colour value (ex: #000000FF)

	#if_defined INCLUDE_MODERO_NOTIFY_BUTTON_FILL_COLOUR
	moderoNotifyButtonFillColour (custom.device, custom.id, type_cast(custom.value1), custom.text)
	#end_if
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_BUTTONS
custom_event [dvPanelsButtons, ADDRESS_CODE_WILDCARD, MODERO_CUSTOM_EVENT_ID_BUTTON_TEXT_COLOUR]
{
	// custom.id (INTEGER) - button address code
	// custom.type (INTEGER) - custom_event, event id
	// custom.flag (INTEGER) - 0 means a standard string, 1 means Unicode encoded string
	// custom.value1 (SLONG) - button state number
	// custom.value2 (SLONG) - actual length of string
	// custom.value3 (SLONG) - zero
	// custom.text (CHAR []) - hex encoded colour value (ex: #000000FF)

	#if_defined INCLUDE_MODERO_NOTIFY_BUTTON_TEXT_COLOUR
	moderoNotifyButtonTextColour (custom.device, custom.id, type_cast(custom.value1), custom.text)
	#end_if
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_BUTTONS
custom_event [dvPanelsButtons, ADDRESS_CODE_WILDCARD, MODERO_CUSTOM_EVENT_ID_BUTTON_BORDER_NAME]
{
	// custom.id (INTEGER) - button address code
	// custom.type (INTEGER) - custom_event, event id
	// custom.flag (INTEGER) - 0 means a standard string, 1 means Unicode encoded string
	// custom.value1 (SLONG) - button state number
	// custom.value2 (SLONG) - actual length of string
	// custom.value3 (SLONG) - zero
	// custom.text (CHAR []) - string that represents border name

	#if_defined INCLUDE_MODERO_NOTIFY_BUTTON_BORDER_NAME
	moderoNotifyButtonBorderName (custom.device, custom.id, type_cast(custom.value1), custom.text)
	#end_if
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_BUTTONS
custom_event [dvPanelsButtons, ADDRESS_CODE_WILDCARD, MODERO_CUSTOM_EVENT_ID_BUTTON_OPACITY]
{
	// custom.id (INTEGER) - button address code
	// custom.type (INTEGER) - custom_event, event id
	// custom.flag (INTEGER) - 0 means a standard string, 1 means Unicode encoded string
	// custom.value1 (SLONG) - button state number
	// custom.value2 (SLONG) - opacity
	// custom.value3 (SLONG) - zero
	// custom.text (CHAR []) - blank

	#if_defined INCLUDE_MODERO_NOTIFY_BUTTON_OPACITY
	moderoNotifyButtonOpacity (custom.device, custom.id, type_cast(custom.value1), type_cast(custom.value2))
	#end_if
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_NFC
custom_event [dvPanelsNfc, 1, MODERO_CUSTOM_EVENT_ID_NFC_READ_TAG]
{
	#if_defined INCLUDE_MODERO_NOTIFY_NFC_TAG_READ
	moderoNotifyNfcTagRead (custom.device, custom.text)
	#end_if
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_STREAMING
custom_event [dvPanelsStreaming, 0, MODERO_CUSTOM_EVENT_ID_STREAMING_VIDEO]
{
	switch (custom.flag)
	{
		#if_defined INCLUDE_MODERO_NOTIFY_STREAM_START
		case MODERO_STREAMING_NOTIFY_FLAG_START:    // start
		{
			//moderoNotifyStreamStart (custom.device, type_cast(custom.value2), type_cast(custom.value3), custom.text, type_cast(custom.value1))
		}
		#end_if

		#if_defined INCLUDE_MODERO_NOTIFY_STREAM_STOP
		case MODERO_STREAMING_NOTIFY_FLAG_STOP:    // stop
		{
			moderoNotifyStreamStop (custom.device, type_cast(custom.value2), type_cast(custom.value3), custom.text, type_cast(custom.value1))
		}
		#end_if

		#if_defined INCLUDE_MODERO_NOTIFY_STREAM_ERROR
		case MODERO_STREAMING_NOTIFY_FLAG_ERROR:
		{
			moderoNotifyStreamError (custom.device, type_cast(custom.value2), type_cast(custom.value3), custom.text, type_cast(custom.value1))
		}
		#end_if

		default:
		{
		}
	}
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_MAIN
custom_event [dvPanelsMain, 0, MODERO_CUSTOM_EVENT_ID_POPUP_LOCATION]
{
	// custom.flag (INTEGER) - operation (0=location query, 10=attach, 20=drag, 30=detach)
	// custom.value1 (SLONG) - x coordinate of popup
	// custom.value2 (SLONG) - y coordinate of popup
	// custom.value3 (SLONG) - 1 if popup is attached to current page, 0 if not attached to current page
	// custom.text (CHAR []) - popup name
	#if_defined INCLUDE_MODERO_NOTIFY_POPUP_LOCATION
	moderoNotifyPopupLocation (custom.device, custom.text, custom.flag, type_cast(custom.value1), type_cast(custom.value2), type_cast(custom.value3))
	#end_if
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_MAIN
custom_event [dvPanelsMain, 0, MODERO_CUSTOM_EVENT_ID_POPUP_SIZE]
{
	// custom.device
	// custom.value1 (SLONG) - is the width of the popup
	// custom.value2 (SLONG) - is the height of the popup
	// custom.value3 (SLONG) - 1 if popup is attached to current page, 0 if not attached to current page
	// custom.text (CHAR []) - popup name
	#if_defined INCLUDE_MODERO_NOTIFY_POPUP_SIZE
	moderoNotifyPopupSize (custom.device, custom.text, type_cast(custom.value1), type_cast(custom.value2), type_cast(custom.value3))
	#end_if
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_MAIN
custom_event [dvPanelsMain, 0, MODERO_CUSTOM_EVENT_ID_RESOURCE_LOAD_NOTIFICATION]
{
	// custom.text (CHAR []) - string containing the resource name
	#if_defined INCLUDE_MODERO_NOTIFY_RESOURCE_LOAD
	moderoNotifyResourceLoad (custom.device, custom.text)
	#end_if
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_MAIN
custom_event [dvPanelsMain, 0, MODERO_CUSTOM_EVENT_ID_BLUETOOTH_HANDSET]
{
	// // custom.flag (INTEGER) - Accept (1), Reject/Hangup (2), Redial (4)
	#if_defined INCLUDE_MODERO_NOTIFY_BLUETOOTH_HANDSET
	moderoNotifyBluetoothHandset (custom.device, custom.flag)
	#end_if
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_MAIN
custom_event [dvPanelsMain, 0, MODERO_CUSTOM_EVENT_ID_AUDIO_DEVICE]
{
	// custom.value1 (SLONG) - Device type (1=built-in speaker, 2=usb headset, 3=bluetooth headset)
	#if_defined INCLUDE_MODERO_NOTIFY_AUDIO_DEVICE
	moderoNotifyAudioDevice (custom.device, type_cast(custom.value1))
	#end_if
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_MAIN
custom_event [dvPanelsMain, 0, MODERO_CUSTOM_EVENT_ID_AUDIO_MUTE_STATUS]
{
	// custom.value1 (SLONG) - 0 (unmuted) / 1 (muted)
	#if_defined INCLUDE_MODERO_NOTIFY_AUDIO_MUTE_STATUS
	moderoNotifyAudioMuteStatus (custom.device, type_cast(custom.value1))
	#end_if
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_MAIN
custom_event [dvPanelsMain, 0, MODERO_CUSTOM_EVENT_ID_AUDIO_VOLUME]
{
	// custom.value1 (SLONG) - master volume value
	#if_defined INCLUDE_MODERO_NOTIFY_VOLUME
	moderoNotifyVolume (custom.device, type_cast(custom.value1))
	#end_if
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_MAIN
custom_event [dvPanelsMain, 0, MODERO_CUSTOM_EVENT_ID_GESTURE]
{
	// custom.value1 (SLONG) - gesture number
	// custom.value2 (SLONG) - simplified gesture velocity
	// custom.value3 (SLONG) - precise gesture velocity
	//                             - for swipes and circles, this represents pixels per second
	//                             - for double-taps, this is the time in milliseconds from the first press to the second release)
	#if_defined INCLUDE_MODERO_NOTIFY_GESTURE
	moderoNotifyGesture (custom.device, type_cast(custom.value1), type_cast(custom.value2), custom.value3)
	#end_if
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_MAIN
custom_event [dvPanelsMain, ADDRESS_CODE_WILDCARD, MODERO_CUSTOM_EVENT_ID_MULTI_PREVIEW_QUERY_RESPONSE]
{
	// custom.value1 (SLONG) - message id (echoed 'id' value from query)
	// custom.text (CHAR []) - value of the status field specified by 'statusField' in the query
	// Query command is of the form ?SLT-1,querystatus=<statusField>,[id]
	#warn '@TODO: amx-modero-listener - need to find out more about multi-preview query, not documented very well!'
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_MAIN
custom_event [dvPanelsMain, 0, MODERO_CUSTOM_EVENT_ID_SMART_CARD_INSERT_REMOVE]
{
	// custom.flag (INTEGER) - 0: remove card event, 1: insert card event
	// custom.value1 (SLONG) - chunk counter of custom.text
	// custom.value2 (SLONG) - total number of chunks for custom.text
	// custom.value3 (SLONG) - string length of custom.text
	// custom.text (CHAR []) - string representing the CHUID of the card (only used for 'insert' event)
	switch (custom.flag)
	{
		#if_defined INCLUDE_MODERO_NOTIFY_SMART_CARD_REMOVE
		case MODERO_SMART_CARD_REMOVE:
		{
			moderoNotifySmartCardRemove (custom.device)
		}
		#end_if

		#if_defined INCLUDE_MODERO_NOTIFY_SMART_CARD_INSERT
		case MODERO_SMART_CARD_INSERT:
		{
			moderoNotifySmartCardInsert (custom.device, custom.text)
		}
		#end_if

		default:  // unhandled, ignore
		{
		}
	}
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_MAIN
custom_event [dvPanelsMain, 0, MODERO_CUSTOM_EVENT_ID_SMART_CARD_READER_INSERT_REMOVE]
{
	// custom.flag (INTEGER) - 0: remove reader event, 1: insert reader event
	// custom.value1 (SLONG) - chunk counter of custom.text
	// custom.value2 (SLONG) - total number of chunks for custom.text
	// custom.value3 (SLONG) - string length of custom.text
	// custom.text (CHAR []) - string representing the readers name (only used for 'insert' event)
	switch (custom.flag)
	{
		#if_defined INCLUDE_MODERO_NOTIFY_SMART_CARD_READER_REMOVE
		case MODERO_SMART_CARD_READER_REMOVE:
		{
			moderoNotifySmartCardReaderRemove (custom.device)
		}
		#end_if

		#if_defined INCLUDE_MODERO_NOTIFY_SMART_CARD_READER_INSERT
		case MODERO_SMART_CARD_READER_INSERT:
		{
			moderoNotifySmartCardReaderInsert (custom.device, custom.text)
		}
		#end_if

		default:  // unhandled, ignore
		{
		}
	}
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_MAIN
custom_event [dvPanelsMain, 0, MODERO_CUSTOM_EVENT_ID_SUBPAGE_ANCHOR_NOTIFICATION]
{
	// custom.id (INTEGER) - the address of the subpage view button which generated the event
	// custom.value1 (SLONG) - which one of possible multiple events this is (1 based)
	// custom.value2 (SLONG) - total number of events needed to send the entire string
	// custom.value3 (SLONG) - the total size of the original string in bytes
	// custom.text (CHAR []) - pipe character seperated list of subpage names
	#warn '@TODO: amx-modero-listener - custom_event for subpage anchor notification, could come in over multiple custom_events'
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_MAIN
custom_event [dvPanelsMain, 0, MODERO_CUSTOM_EVENT_ID_SUBPAGE_ONSCREEN_NOTIFICATION]
{
	// custom.id (INTEGER) - the address of the subpage view button which generated the event
	// custom.value1 (SLONG) - which one of possible multiple events this is (1 based)
	// custom.value2 (SLONG) - total number of events needed to send the entire string
	// custom.value3 (SLONG) - the total size of the original string in bytes
	// custom.text (CHAR []) - pipe character seperated list of subpage names
	#warn '@TODO: amx-modero-listener - custom_event for subpage onscreen notification, could come in over multiple custom_events'
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_MAIN
custom_event [dvPanelsMain, 0, MODERO_CUSTOM_EVENT_ID_SUBPAGE_OFFSCREEN_NOTIFICATION]
{
	// custom.id (INTEGER) - the address of the subpage view button which generated the event
	// custom.value1 (SLONG) - which one of possible multiple events this is (1 based)
	// custom.value2 (SLONG) - total number of events needed to send the entire string
	// custom.value3 (SLONG) - the total size of the original string in bytes
	// custom.text (CHAR []) - pipe character seperated list of subpage names
	#warn '@TODO: amx-modero-listener - custom_event for subpage offscreen notification, could come in over multiple custom_events'
}
#end_if

#if_defined INCLUDE_MODERO_MONITOR_MAIN
custom_event [dvPanelsMain, 0, MODERO_CUSTOM_EVENT_ID_SUBPAGE_REORDER_NOTIFICATION]
{
	// custom.id (INTEGER) - the address of the subpage view button which generated the event
	// custom.value1 (SLONG) - which one of possible multiple events this is (1 based)
	// custom.value2 (SLONG) - total number of events needed to send the entire string
	// custom.value3 (SLONG) - the total size of the original string in bytes
	// custom.text (CHAR []) - pipe character seperated list of subpage names
	#warn '@TODO: amx-modero-listener - custom_event for subpage reorder notification, could come in over multiple custom_events'
}
#end_if

#end_if