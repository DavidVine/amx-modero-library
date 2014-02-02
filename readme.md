amx-modero-library
===============


Files
-----
+ amx-modero-api.axi
+ amx-modero-control.axi
+ amx-modero-listener.axi


Overview
--------
The **amx-modero-library** NetLinx library is intended as a tool to make things easier for anyone tasked with programming an AMX system containing an AMX Modero Touch Panel:

+ NXD-1700VG
+ NXD-1500VG
+ NXD-1200VG     | NXT-1200VG
+ NXD-1200V      | NXT-1200V
+ NXD-CV17       | NXT-CV17
+ NXD-CV15       | NXT-CV15        | NXD-CA15   | NXT-CA15
+ NXD-CV12       | NXT-CV12        | NXD-CA12   | NXT-CA12
+ NXD-CV10       | NXT-CV10
+ NXD-1000Vi
+ MVP-7500
+ NXD-CV7        | NXT-CV7         | NXT-CA7
+ NXD-700i       | NXD-700Vi
+ NXD-CV5
+ NXD-500i       | NXD-500iW
+ NXD-430        | NXD-435         | NXD-435P
+ MVP-9000i
+ MVP-8400       | MVP-8400i
+ MVP-5100       | MVP-5150        | MVP-5200i
+ MSD-1001       | MST-1001
+ MSD-701        | MST-701
+ MSD-431        | MST-431
+ MXD-2000XL-PAN | MXT-2000XL-PAN
+ MXD-1900L-PAN  | MXT-1900L-PAN
+ MXD-1000       | MXT-1000
+ MXD-700        | MXT-700
+ MXD-430
+ MXD-2001-PAN   | MXT-2001-PAN
+ MXD-1901-PAN   | MXT-1901-PAN
+ MXD-1001       | MXT-1001
+ MXD-701        | MXT-701

The built-in structures, constants, control functions, callback functions, and events assist you by simplifying control and feedback.

Everything is a function!

Consistent, descriptive control function names within **amx-modero-control** make it easy for you to control the different aspects of the Modero (volume, SIP, button properties, popups, pages, etc...) and request information. E.g:

	/*
	 * Function:	moderoSetButtonText
	 * 
	 * Arguments:	dev panel - touch panel
	 *				integer btnAdrCde - button address code
	 *				integer btnState - button state
	 *				char nonUnicodeTextString[] - non-unicode text string
	 * 
	 * Description:	Set the text of a button to a non-unicode string.
	 */
	define_function moderoSetButtonText (dev panel, integer btnAdrCde, integer btnState, char nonUnicodeTextString[])
	{
	    sendCommand (panel, "MODERO_COMMAND_BUTTON_ASSIGN_TEXT,itoa(btnAdrCde),',',itoa(btnState),',',nonUnicodeTextString")
	}

No longer are you required to refer to the Modero manual to work out what command headers are required or how to build a control string containing all the required values. This process was time consuming and often involved converting numeric data to string form and building string expressions which were long and complex.

With the control functions defined within **amx-modero-control** values for Modero commands are simply passed through as arguments in the appropriate data types (constants defined within **amx-modero-api** can be used where required) and the control functions do the hard work.

Similarly, you no longer have to build events (data/channel/level, etc...) to capture returning information from the Modero and parse the incoming string/command (coverting data types where required) to obtain the required information in the correct format. **amx-modero-listener**, listens for all types of responses from the Modero and triggers pre-written callback functions which you can copy to the main program, uncomment and fill in. E.g:

	#define INCLUDE_MODERO_NOTIFY_KEYBOARD_ENTRY
	define_function moderoNotifyKeyboardEntry (dev panel, char text[])
	{
	}

Functions also assist to neaten up the programming and provide added readability to the code and the auto-prompter within the NetLinx Studio editor makes it easy to find the function you're looking for.

Extremely flexible!

All control and callback functions have a DEV parameter. This makes **amx-modero-library** extremely flexible as you can use the same control/callback functions for multiple Modero's. For the control functions you simply pass through the dev for the Modero device you want to control and the dev parameter of the callback functions allows you to check to see which device triggered the notification.


amx-modero-api
-----------
#####Dependencies:
+ none

#####Description:
Contains structure definitions which you can use to store information about an AMX Modero Touch Panel.

Contains constants for Modero NetLinx command headers and parameter values. These are used extensively by the accompanying library files **amx-modero-control** and **amx-modero-listener**. The constants defined within **amx-modero-api** can also be referenced when passing values to control functions (where function parameters have a limited allowable set of values for one or more parameters) or checking to see the values of the callback function parameters.

#####Usage:
Include **amx-modero-api** into the main program using the `#include` compiler directive. E.g:

	#include 'amx-modero-api'

NOTE: If the main program file includes **amx-modero-control** and/or **amx-modero-listener** it is not neccessary to include **amx-modero-api** in the main program file as well as each of them already includes **amx-modero-api** but doing so will not cause any issues.


amx-modero-control
---------------
#####Dependencies:
+ amx-modero-api
+ amx-device-control (*see readme for amx-device-library for info*)

#####Description: 
Contains functions for controlling the various components of an AMX Modero touch panel and requesting information from the Modero.

Some functions defined within **amx-modero-control** have an limited allowable set of values for one or more parameters. In these instances the allowable values will be printed within the accompanying commenting as constants defined within **amx-modero-api**.

#####Usage:
Include **amx-modero-control** into the main program using the `#include` compiler directive. E.g:

	#include 'amx-modero-control'

and call the function(s) defined within **amx-modero-control** from the main program file,. E.g:

	button_event [dvTp,btnShutdown]
	{
		push:
		{
			moderoSetPage (dvTp, 'Splash Screen')
			moderoDisableAllPopups (dvTp)
			moderoPlaySoundFile (dvTp, 'shutdown.mp3')
		}
	}


amx-modero-listener
----------------
#####Dependencies:
+ amx-modero-api

#####Description:
Contains dev arrays for listening to traffic returned from the AMX Modero touch panel.

You should copy the required dev arrays to their main program and instantiate them with dev values corresponding to the Modero you wish to listen to.

Contains commented out callback functions and events required to capture information from the AMX Modero touch panel. The events (data_events, channel_events, & level_events) will parse the information returned from the Modero and call the associated callback functions passing the information through as arguments to the call back functions' parameter list.

Callback functions may be triggered from both unprompted data and responses to requests for information.

#####Usage:
Include **amx-modero-listener** into the main program using the `#include` compiler directive. E.g:

	#include 'amx-modero-listener'

Copy the required DEV arrays from **amx-modero-listener**:

	define_variable

	#if_not_defined dvPanelsUserTextInput
	dev dvPanelsUserTextInput[]	= { 10001:1:0 }
	#end_if

to the main program file and populate the contents of the DEV arrays with only the ports of the Modero that you want to listen to. E.g:

	define_device

	dvTpTextEntryReturnPort = 10001:1:0

	define_variable

	// DEV array for Modero keyboard/text entry return port copied from amx-modero-listener
	dev dvPanelsUserTextInput[]	= { dvTpTextEntryReturnPort }

NOTE: The order of the devices within the DEV arrays does not matter. You can also have device ports from multiple Moderos's within the same DEV array. You can have as few (1) or as many devices defined within the DEV array as you want to listen to.

Copy whichever callback functions you would like to use to monitor changes on the Modero or capture responses to requests for information in your main program file. The callback function should then be uncommented and the contents of the statement block filled in appropriately. The callback functions should not be uncommented within **amx-modero-listener**. E.g:

Copy an empty, commented out callback function from **amx-modero-listener** and the associated `#define` statement:

	/*
	#define INCLUDE_MODERO_NOTIFY_KEYBOARD_ENTRY
	define_function moderoNotifyKeyboardEntry (dev panel, char text[])
	{
	}
	*/

paste the callback function and `#define` statement into the main program file, uncomment, and add any code statements you want:

	#define INCLUDE_MODERO_NOTIFY_KEYBOARD_ENTRY
	define_function moderoNotifyKeyboardEntry (dev panel, char text[])
	{
		if (panel == dvTpKitchenTextEntryReturnPort)
		{
			// do something with the text the user has just entered
		}
	}

The callback function will be automatically triggered whenever a change occurs on the Modero (that initiates an unsolicted feedback response) or a response to a request for information is received.

###IMPORTANT!
1. The `#define` compiler directive found directly above the callback function within **amx-modero-listener** must also be copied to the main program and uncommented along with the callback function itself.

2. Due to the way the NetLinx compiler scans the program for `#define` staments **amx-modero-listener** must be included in the main program file underneath any callback functions and associated `#define` statements or the callback functions will not trigger.

E.g:

		#program_name='main program'
			
		dvTpMainTextEntryReturnPort = 10001:1:0
		dvTpWelcomePanelNfc	        = 10002:1:0
			
		define_variable
			
		// DEV arrays for amx-modero-listener to use
		dev dvPanelsUserTextInput[]	= { dvTpMainTextEntryReturnPort }
		dev dvPanelsNfc[]	= { dvTpWelcomePanelNfc }
			
		#define INCLUDE_MODERO_NOTIFY_KEYBOARD_ENTRY
		define_function moderoNotifyKeyboardEntry (dev panel, char text[])
		{
		}
		
		#define INCLUDE_MODERO_NOTIFY_NFC_TAG_READ
		define_function moderoNotifyNfcTagRead (dev panel, char nfcUid[])
		{
		}
		
		#include 'amx-modero-listener'

---------------------------------------------------------------

Author: David Vine - AMX Australia  
Readme formatted with markdown  
Any questions, email <support@amxaustralia.com.au> or phone +61 (7) 5531 3103.
