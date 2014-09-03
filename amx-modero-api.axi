PROGRAM_NAME='amx-modero-api'

#if_not_defined __AMX_MODERO_API__
#define __AMX_MODERO_API__

/*
 * --------------------
 * amx-modero-api
 *
 * For usage, check out the readme for the amx-modero-library.
 * --------------------
 */

define_constant

char VERSION_AMX_MODERO_API[] = 'v0.9.0'


/*
 * --------------------
 * Modero constants
 * --------------------
 */

define_constant


/*
 * --------------------
 * Modero command headers
 * --------------------
 */

// Popop and Page commands
char MODERO_COMMAND_POPUP_ADD_TO_GROUP[]            = '@APG-'
char MODERO_COMMAND_POPUP_GROUP_CLEAR[]             = '@CPG-'
char MODERO_COMMAND_POPUP_DELETE_FROM_GROUP[]       = '@DPG-'
char MODERO_COMMAND_POPUP_LOCATION_RESET_FLAG[]     = '@PDR-'
char MODERO_COMMAND_POPUP_HIDE_EFFECT[]             = '@PHE-'
char MODERO_COMMAND_POPUP_HIDE_EFFECT_POSITION[]    = '@PHP-'
char MODERO_COMMAND_POPUP_HIDE_EFFECT_TIME[]        = '@PHT-'
char MODERO_COMMAND_POPUP_CLOSE_ALL_ON_PAGE[]       = '@PPA-'
//char MODERO_COMMAND_POPUP_DEACTIVATE_ON_PAGE[]    = '@PPF-'    // same functionallity as 'PPOF'
//char MODERO_COMMAND_POPUP_TOGGLE_ON_PAGE[]        = '@PPG-'    // same functionallity as 'PPOG'
char MODERO_COMMAND_POPUP_KILL_FROM_ALL_PAGES[]     = '@PPK-'
char MODERO_COMMAND_POPUP_MODAL[]                   = '@PPM-'
//char MODERO_COMMAND_POPUP_LAUNCH[]                = '@PPN-'  // same functionallity as 'PPON'
char MODERO_COMMAND_POPUP_TIMEOUT[]                 = '@PPT-'
char MODERO_COMMAND_POPUP_CLOSE_ALL[]               = '@PPX'
char MODERO_COMMAND_POPUP_SHOW_EFFECT[]             = '@PSE-'
char MODERO_COMMAND_POPUP_SHOW_EFFECT_POSITION[]    = '@PSP-'
char MODERO_COMMAND_POPUP_SHOW_EFFECT_TIME[]        = '@PST-'
char MODERO_COMMAND_PAGE_FLIP[]                     = 'PAGE-'
char MODERO_COMMAND_PAGE_FLIP_G5[]                  = '^PGE-'
char MODERO_COMMAND_POPUP_HIDE[]                    = 'PPOF-'
char MODERO_COMMAND_POPUP_HIDE_G5[]					= '^PPF-'
char MODERO_COMMAND_POPUP_TOGGLE[]                  = 'PPOG-'
char MODERO_COMMAND_POPUP_SHOW[]                    = 'PPON-'
char MODERO_COMMAND_POPUP_SHOW_G5[]                 = '^PPN-'
char MODERO_COMMAND_PAGE_FLIP_ANIMATED[]			= '^AFP-'

// Button commands
char MODERO_COMMAND_BUTTON_ANIMATE[]                                = '^ANI-'
char MODERO_COMMAND_BUTTON_ADD_PAGE_FLIP_ACTION[]                   = '^APF-'
char MODERO_COMMAND_BUTTON_APPEND_TEXT[]                            = '^BAT-'
char MODERO_COMMAND_BUTTON_APPEND_UNICODE_TEXT[]                    = '^BAU-'
char MODERO_COMMAND_BUTTON_BORDER_COLOUR[]                          = '^BCB-'
char MODERO_COMMAND_BUTTON_FILL_COLOUR[]                            = '^BCF-'
char MODERO_COMMAND_BUTTON_TEXT_COLOUR[]                            = '^BCT-'
char MODERO_COMMAND_BUTTON_DRAW_ORDER[]                             = '^BDO-'
char MODERO_COMMAND_BUTTON_FEEDBACK_TYPE[]                          = '^BFB-'
char MODERO_COMMAND_BUTTON_INPUT_MASK[]                             = '^BIM-'
char MODERO_COMMAND_BUTTON_REMOVE_COMPOSITE_VIDEO_LINES[]           = '^BLN-'
char MODERO_COMMAND_BUTTON_COPY_ATTRIBUTES[]                        = '^BMC-'
char MODERO_COMMAND_BUTTON_PARAMETER[]                              = '^BMF-'
char MODERO_COMMAND_BUTTON_MASK_IMAGE[]                             = '^BMI-'
char MODERO_COMMAND_BUTTON_MAX_LENGTH_TEXT_AREA[]                   = '^BML-'
char MODERO_COMMAND_BUTTON_BITMAP[]                                 = '^BMP-'
char MODERO_COMMAND_BUTTON_CLEAR_TAKENOTE_ANNOTATIONS[]             = '^BNC-'
char MODERO_COMMAND_BUTTON_TAKENOTE_NETWORK_NAME[]                  = '^BNN-'
char MODERO_COMMAND_BUTTON_TAKENOTE_NETWORK_PORT[]                  = '^BNT-'
char MODERO_COMMAND_BUTTON_OPACITY[]                                = '^BOP-'
char MODERO_COMMAND_BUTTON_BORDER_STYLE[]                           = '^BOR-'   // '^BOR-' sets the border style for the entire button (i.e., all states)
char MODERO_COMMAND_BUTTON_VIDEO_WINDOW[]                           = '^BOS-'
char MODERO_COMMAND_BUTTON_PROTECTED_PAGE_FLIP_FLAG[]               = '^BPP-'
char MODERO_COMMAND_BUTTON_BORDER[]                                 = '^BRD-'   // '^BRD-' sets the border style for one, some, or all states of a button
char MODERO_COMMAND_BUTTON_FOCUS_TEXT_AREA[]                        = '^BSF-'
char MODERO_COMMAND_BUTTON_SUBMIT_TEXT[]                            = '^BSM-'
char MODERO_COMMAND_BUTTON_SOUND_FOR_BUTTON_HIT[]                   = '^BSO-'
char MODERO_COMMAND_BUTTON_SIZE_AND_POSITION[]                      = '^BSP-'
char MODERO_COMMAND_BUTTON_LOG_ON_OFF_COMPUTER_CONTROL_CONNECTION[] = '^BVL-'
char MODERO_COMMAND_BUTTON_COMPUTER_CONTROL_REMOTE_HOST[]           = '^BVN-'
char MODERO_COMMAND_BUTTON_COMPUTER_CONTROL_NETWORK_PASSWORD[]      = '^BVP-'
char MODERO_COMMAND_BUTTON_COMPUTER_CONTROL_NETWORK_PORT[]          = '^BVT-'
char MODERO_COMMAND_BUTTON_WORD_WRAP[]                              = '^BWW-'
char MODERO_COMMAND_BUTTON_CLEAR_ALL_PAGE_FLIPS[]                   = '^CPF-'
char MODERO_COMMAND_BUTTON_DELETE_PAGE_FLIP_ACTION[]                = '^DPF-'
char MODERO_COMMAND_BUTTON_DELETE_VIDEO_SNAPSHOT[]                  = '^DVS-'
char MODERO_COMMAND_BUTTON_ENABLE_OR_DISABLE[]                      = '^ENA-'
char MODERO_COMMAND_BUTTON_FONT_ID[]                                = '^FON-'
char MODERO_COMMAND_BUTTON_BARGRAPH_DRAG_INCREMENT[]                = '^GDI-'
char MODERO_COMMAND_BUTTON_INVERT_JOYSTICK_AXIS_OR_BARGRAPH[]       = '^GIV-'
char MODERO_COMMAND_BUTTON_BARGRAPH_UPPER_LIMIT[]                   = '^GLH-'
char MODERO_COMMAND_BUTTON_BARGRAPH_LOWER_LIMIT[]                   = '^GLL-'
char MODERO_COMMAND_BUTTON_BARGRAPH_RAMP_DOWN_TIME[]                = '^GRD-'
char MODERO_COMMAND_BUTTON_BARGRAPH_RAMP_UP_TIME[]                  = '^GRU-'
char MODERO_COMMAND_BUTTON_BARGRAPH_SLIDER_JOYSTICK_CURSOR_COLOUR[] = '^GSC-'
char MODERO_COMMAND_BUTTON_BARGRAPH_SLIDER_JOYSTICK_CURSOR_NAME[]   = '^GSN-'
char MODERO_COMMAND_BUTTON_ICON[]                                   = '^ICO-'
char MODERO_COMMAND_IR_CHANNEL_PULSE[]                              = '^IRM-'
char MODERO_COMMAND_BUTTON_PICTURE_ALIGNMENT[]                      = '^JSB-'
char MODERO_COMMAND_BUTTON_ICON_ALIGNMENT[]                         = '^JSI-'
char MODERO_COMMAND_BUTTON_TEXT_ALIGNMENT[]                         = '^JST-'
char MODERO_COMMAND_MOUSE_BUTTON_MODE_FOR_VIRTUAL_PC[]              = '^MBT-'
char MODERO_COMMAND_MOUSE_DOUBLE_CLICK_FOR_VIRTUAL_PC[]             = '^MDC-'
char MODERO_COMMAND_PICTURE_VIEW[]                                  = '^PIC-'
char MODERO_COMMAND_BUTTON_SCALE_TO_FIT[]                           = '^STF-'
char MODERO_COMMAND_BUTTON_SHOW_HIDE[]                              = '^SHO-'
char MODERO_COMMAND_BUTTON_TOUCH_INFO_SEND_TO_SOCKET[]              = '^SKT-'
char MODERO_COMMAND_BUTTON_TEXT_EFFECT_COLOUR[]                     = '^TEC-'
char MODERO_COMMAND_BUTTON_TEXT_EFFECT[]                            = '^TEF-'
char MODERO_COMMAND_BUTTON_TOUCH_INFO_SEND_TO_MASTER[]              = '^TOP-'
char MODERO_COMMAND_BUTTON_ASSIGN_TEXT[]                            = '^TXT-'
char MODERO_COMMAND_BUTTON_ASSIGN_UNICODE_TEXT[]                    = '^UNI-'

// Button Query Commands
char MODERO_COMMAND_BUTTON_QUERY_BORDER_COLOR[]         = '?BCB-'
char MODERO_COMMAND_BUTTON_QUERY_FILL_COLOUR[]          = '?BCF-'
char MODERO_COMMAND_BUTTON_QUERY_TEXT_COLOUR[]          = '?BCT-'
char MODERO_COMMAND_BUTTON_QUERY_BITMAP_NAME[]          = '?BMP-'
char MODERO_COMMAND_BUTTON_QUERY_OPACITY[]              = '?BOP-'
char MODERO_COMMAND_BUTTON_QUERY_BORDER_NAME[]          = '?BRD-'
char MODERO_COMMAND_BUTTON_QUERY_WORD_WRAP[]            = '?BWW-'
char MODERO_COMMAND_BUTTON_QUERY_FONT_INDEX[]           = '?FON-'
char MODERO_COMMAND_BUTTON_QUERY_ICON_INDEX[]           = '?ICO-'
char MODERO_COMMAND_BUTTON_QUERY_BITMAP_JUSTIFICATION[] = '?JSB-'
char MODERO_COMMAND_BUTTON_QUERY_ICON_JUSTIFICATION[]   = '?JSI-'
char MODERO_COMMAND_BUTTON_QUERY_TEXT_JUSTIFICATION[]   = '?JST-'
char MODERO_COMMAND_BUTTON_QUERY_TEXT_EFFECT_COLOUR[]   = '?TEC-'
char MODERO_COMMAND_BUTTON_QUERY_TEXT_EFFECT_NAME[]     = '?TEF-'
char MODERO_COMMAND_BUTTON_QUERY_TEXT[]                 = '?TXT-'

// Panel Runtime Commands
char MODERO_COMMAND_BEEP[]                          = 'ABEEP'
char MODERO_COMMAND_BEEP_DOUBLE[]                   = 'ADBEEP'
char MODERO_COMMAND_KEYBOARD_WITH_PROMPT[]          = '@AKB-'
char MODERO_COMMAND_KEYBOARD[]                      = 'AKEYB-'
char MODERO_COMMAND_KEYPAD[]                        = 'AKEYP-'
char MODERO_COMMAND_REMOVE_KEYBOARD_OR_KEYPAD[]     = 'AKEYR'
char MODERO_COMMAND_KEYPAD_WITH_PROMPT[]            = '@AKP-'
//char MODERO_COMMAND_REMOVE_KEYBOARD_OR_KEYPAD[]   = '@AKR'    // does same thing as 'AKEYR'
//char MODERO_COMMAND_BEEP[]                        = 'BEEP'    // does same thing as 'ABEEP'
char MODERO_COMMAND_BRIGHTNESS[]                    = 'BRIT-'
//char MODERO_COMMAND_BRIGHTNESS[]                  = '@BRT-'   // does same thing as 'BRIT-'
//char MODERO_COMMAND_BEEP_DOUBLE[]                 = 'DBEEP'   // does same thing as 'ADBEEP'
char MODERO_COMMAND_KEYPAD_EXTENDED[]               = '@EKP-'
char MODERO_COMMAND_KEYPAD_PRIVATE_NO_PROMPT[]      = 'PKEYP-'
char MODERO_COMMAND_KEYPAD_PRIVATE[]                = '@PKP-'
char MODERO_COMMAND_SETUP[]                         = 'SETUP'
char MODERO_COMMAND_SHUTDOWN[]                      = 'SHUTDOWN'
char MODERO_COMMAND_SLEEP[]                         = 'SLEEP'
char MODERO_COMMAND_PLAY_SOUND_FILE[]               = '@SOU-'
char MODERO_COMMAND_PLAY_SOUND_FILE_G5[]            = '^SOU-'
char MODERO_COMMAND_KEYPAD_TELEPHONE[]              = '@TKP-'
char MODERO_COMMAND_PAGE_TRACKING_ON[]              = 'TPAGEON'
char MODERO_COMMAND_PAGE_TRACKING_OFF[]             = 'TPAGEOFF'
char MODERO_COMMAND_KEYBOARD_VIRTUAL[]              = '@VKB'
char MODERO_COMMAND_WAKE[]                          = 'WAKE'

// Takenote clear parameters
integer MODERO_TAKENOTE_CLEAR       = 0
integer MODERO_TAKENOTE_CLEAR_ALL   = 1

// Panel Setup Commands
//char MODERO_COMMAND_PAGE_FLIP_PASSWORD[]  = '@PWD-'   // still works bt replaced by '^PWD' which works for levels 1-5,  not just level 1.
char MODERO_COMMAND_PAGE_FLIP_PASSWORD[]    = '^PWD-'

// Gesture commands
char MODERO_COMMAND_GESTURE_NOTIFICATION[]  = '^GCE'

// Input Commands
char MODERO_COMMAND_KEYBOARD_PASSTHRU[]         = '^KPS-'
char MODERO_COMMAND_SEND_VIRTUAL_KEY_STROKES[]  = '^VKS-'

// Dynamic Image Commands
char MODERO_COMMAND_BUTTON_SET_DYNAMIC_IMAGE[]                  = '^BBR-'
char MODERO_COMMAND_DYNAMIC_IMAGE_ADD_PARAMETER[]               = '^RAF-'
char MODERO_COMMAND_DYNAMIC_IMAGE_FORCE_REFRESH_IF_VISIBLE[]    = '^RFR-'
char MODERO_COMMAND_DYNAMIC_IMAGE_FORCE_REFRESH_PREFETCH[]      = '^RFRP-'
char MODERO_COMMAND_DYNAMIC_IMAGE_MODIFY_PARAMETER[]            = '^RMF-'
char MODERO_COMMAND_DYNAMIC_IMAGE_CHANGE_REFRESH_RATE[]         = '^RSR-'

// Intercom Commands
char MODERO_COMMAND_INTERCOM_MODEL_NAME_QUERY[]     = '^MODEL?'
char MODERO_COMMAND_INTERCOM_MODEL_NAME_RESPONSE[]  = '^MODEL-'
char MODERO_COMMAND_INTERCOM_START_CALL[]           = '^ICS-'
char MODERO_COMMAND_INTERCOM_END_CALL[]             = '^ICE'
char MODERO_COMMAND_INTERCOM_MODIFY[]               = '^ICM-'
char MODERO_COMMAND_INTERCOM_INCOMING_CALL[]        = '^IIC'
char MODERO_COMMAND_INTERCOM_OUTGOING_CALL[]        = '^IOC'

// SIP Commands
char MODERO_COMMAND_SIP[]               = '^PHN-'
char MODERO_COMMAND_SIP_RESPONSE[]      = '^PHN-'
char MODERO_COMMAND_SIP_QUERY[]         = '?PHN'
char MODERO_COMMAND_SIP_PHONE_SETUP[]   = '^PHN-SETUP-' // this could cause troubles, - need to search for return strings starting with '^PHN-SETUP-' before searching for return strings starting with '^PHN-'

// Audio Commands
char MODERO_COMMAND_AUDIO_DEVICE_SELECT[]                           = '^ADS-'
char MODERO_COMMAND_AUDIO_DEVICE_QUERY[]                            = '?ADS'
char MODERO_COMMAND_AUDIO_SET_MIC_LEVEL_DURING_INTERCOM_CALL[]      = '^ICM-MICLEVEL'
char MODERO_COMMAND_AUDIO_SET_SPEAKER_LEVEL_DURING_INTERCOM_CALL[]  = '^ICM-SPEAKERLEVEL'
char MODERO_COMMAND_AUDIO_MUTE_STATUS_QUERY[]                       = '?MUT'
char MODERO_COMMAND_AUDIO_MUTE[]                                    = '^MUT-'
char MODERO_COMMAND_AUDIO_VOLUME_QUERY[]                            = '?VOL-'
char MODERO_COMMAND_AUDIO_VOLUME[]                                  = '^VOL-'

// Panel-to-Panel Video Communication Commands
char MODERO_COMMAND_CAMERA_SUPPORT_AND_STATUS_QUERY[]       = '?CAM'
char MODERO_COMMAND_CAMERA_SUPPORT_AND_STATUS_RESPONSE[]    = 'CAM-'
char MODERO_COMMAND_VIDEOCOM_END[]                          = '^VCE'
char MODERO_COMMAND_VIDEOCOM_START[]                        = '^VCS-'

// Streaming Video, MXA-MP, and MXA-MPL Commands
char MODERO_COMMAND_STREAMING_AUDIO_VIDEO_MUTE[]    = '^DMM-'
char MODERO_COMMAND_STREAMING_START_OR_STOP[]       = '^SDM-'
char MODERO_COMMAND_MULTI_PREVIEW[]                 = '^SLT-1,'
char MODERO_COMMAND_MULTI_PREVIEW_QUERY[]           = '?SLT-1,'

// Subpages Commands
char MODERO_COMMAND_SUBPAGE_EXECUTE_PUSH_ON_RELEASE[]   = '^EPR-'
char MODERO_COMMAND_SUBPAGE_CONFIGURE_CUSTOM_EVENTS[]   = '^SCE-'
char MODERO_COMMAND_SUBPAGE_DYNAMIC_REORDERING[]        = '^SDR-'
char MODERO_COMMAND_SUBPAGE_HIDE[]                      = '^SHD-'
char MODERO_COMMAND_SUBPAGE_SHOW[]                      = '^SSH-'
char MODERO_COMMAND_SUBPAGE_TOGGLE[]                    = '^STG-'
char MODERO_COMMAND_SUBPAGE_HIDE_ALL[]					= '^SHA-'

// LED Commands (MXD-430 Only)
char MODERO_COMMAND_LED_CONTROL[]   = '^WLD-'

// Popup query commands
char MODERO_COMMAND_POPUP_CUSTOM_EVENT_NOTIFICATION[]   = '^PUN'
char MODERO_COMMAND_QUERY_POPUP_LOCATION[]              = '?PUL'
char MODERO_COMMAND_QUERY_POPUP_SIZE[]                  = '?PUS'

// Keyboard/keypad strings
char MODERO_STRING_KEYBOARD[]   = 'KEYB-'
char MODERO_STRING_KEYPAD[]     = 'KEYP'


/*
 * --------------------
 * Modero command parameter values
 * --------------------
 */


/*
 * --------------------
 * Modero command parameter values
 * --------------------
 */

// Button States
integer MODERO_BUTTON_STATE_ALL = 0
integer MODERO_BUTTON_STATE_OFF = 1
integer MODERO_BUTTON_STATE_ON  = 2

// keyboard responses
char MODERO_KEYBOARD_ABORT[]    = 'ABORT'
char MODERO_KEYPAD_ABORT[]      = 'ABORT'

// Popup modality
char MODERO_MODALITY_MODAL[]        = '0'
char MODERO_MODALITY_NON_MODAL[]    = '1'

// Popup notification flags
integer MODERO_POPUP_NOTIFICATION_FLAG_QUERY_RESPONSE   = 0
integer MODERO_POPUP_NOTIFICATION_FLAG_ATTACH           = 10
integer MODERO_POPUP_NOTIFICATION_FLAG_DRAG             = 20
integer MODERO_POPUP_NOTIFICATION_FLAG_DETACH           = 30

// popup notification
char MODERO_POPUP_NOTIFICATION_DISABLE[]            = '0'
char MODERO_POPUP_NOTIFICATION_USER_PAGES_ONLY[]    = '1'
char MODERO_POPUP_NOTIFICATION_ALL_PAGES[]          = '2'   // user and system

// Scale to fit options
char MODERO_SCALE_TO_FIT_ENABLE[]   = '1'
char MODERO_SCALE_TO_FIT_DISABLE[]  = '0'

// Keyboard passthru options
char MODERO_KEYBOARD_PASSTHRU_PASS_TO_G4[]      = '0'
char MODERO_KEYBOARD_PASSTHRU_PASS_TO_MASTER[]  = '5'

// Password Levels
integer MODERO_PASSWORD_LEVEL_DISABLE   = 0
integer MODERO_PASSWORD_LEVEL_USER_1    = 1
integer MODERO_PASSWORD_LEVEL_USER_2    = 2
integer MODERO_PASSWORD_LEVEL_USER_3    = 3
integer MODERO_PASSWORD_LEVEL_USER_4    = 4
integer MODERO_PASSWORD_LEVEL_PROTECTED = 5

// Audio devices
integer MODERO_AUDIO_DEVICE_ACTIVE              = 0
integer MODERO_AUDIO_DEVICE_SPEAKERS            = 1
integer MODERO_AUDIO_DEVICE_USB_HEADSET         = 2
integer MODERO_AUDIO_DEVICE_BLUETOOTH_HEADSET   = 3

// Show Effects
char MODERO_SHOW_EFFECT_NONE[]                      = 'None'
char MODERO_SHOW_EFFECT_FADE[]                      = 'Fade'
char MODERO_SHOW_EFFECT_SLIDE_FROM_LEFT[]           = 'Slide From Left'
char MODERO_SHOW_EFFECT_SLIDE_FROM_RIGHT[]          = 'Slide From Right'
char MODERO_SHOW_EFFECT_SLIDE_FROM_TOP[]            = 'Slide From Top'
char MODERO_SHOW_EFFECT_SLIDE_FROM_BOTTOM[]         = 'Slide From Bottom'
char MODERO_SHOW_EFFECT_SLIDE_FROM_LEFT_FADE[]      = 'Slide From Left Fade'
char MODERO_SHOW_EFFECT_SLIDE_FROM_RIGHT_FADE[]     = 'Slide From Right Fade'
char MODERO_SHOW_EFFECT_SLIDE_FROM_TOP_FADE[]       = 'Slide From Top Fade'
char MODERO_SHOW_EFFECT_SLIDE_FROM_BOTTOM_FADE[]    = 'Slide From Bottom Fade'

// Hide Effects
char MODERO_HIDE_EFFECT_NONE[]                  = 'None'
char MODERO_HIDE_EFFECT_FADE[]                  = 'Fade'
char MODERO_HIDE_EFFECT_SLIDE_TO_LEFT[]         = 'Slide To Left'
char MODERO_HIDE_EFFECT_SLIDE_TO_RIGHT[]        = 'Slide To Right'
char MODERO_HIDE_EFFECT_SLIDE_TO_TOP[]          = 'Slide To Top'
char MODERO_HIDE_EFFECT_SLIDE_TO_BOTTOM[]       = 'Slide To Bottom'
char MODERO_HIDE_EFFECT_SLIDE_TO_LEFT_FADE[]    = 'Slide To Left Fade'
char MODERO_HIDE_EFFECT_SLIDE_TO_RIGHT_FADE[]   = 'Slide To Right Fade'
char MODERO_HIDE_EFFECT_SLIDE_TO_TOP_FADE[]     = 'Slide To Top Fade'
char MODERO_HIDE_EFFECT_SLIDE_TO_BOTTOM_FADE[]  = 'Slide To Bottom Fade'

// Alignment Options
integer MODERO_ALIGNMENT_OPTION_ABSOLUTE        = 0
integer MODERO_ALIGNMENT_OPTION_TOP_LEFT        = 1
integer MODERO_ALIGNMENT_OPTION_TOP_MIDDLE      = 2
integer MODERO_ALIGNMENT_OPTION_TOP_RIGHT       = 3
integer MODERO_ALIGNMENT_OPTION_CENTER_LEFT     = 4
integer MODERO_ALIGNMENT_OPTION_CENTER_MIDDLE   = 5
integer MODERO_ALIGNMENT_OPTION_CENTER_RIGHT    = 6
integer MODERO_ALIGNMENT_OPTION_BOTTOM_LEFT     = 7
integer MODERO_ALIGNMENT_OPTION_BOTTOM_MIDDLE   = 8
integer MODERO_ALIGNMENT_OPTION_BOTTOM_RIGHT    = 9

// Picture view actions
integer MODERO_PICTURE_VIEW_STOP                        = 0
integer MODERO_PICTURE_VIEW_START_IN_PREVIEW_MODE       = 1
integer MODERO_PICTURE_VIEW_ENABLE_START_ON_USB_INSERT  = 2
integer MODERO_PICTURE_VIEW_DISABLE_START_ON_USB_INSERT = 3
integer MODERO_PICTURE_VIEW_START_IN_NORMAL_MODE        = 4

// video window
integer MODERO_VIDEO_WINDOW_OFF = 0
integer MODERO_VIDEO_WINDOW_ON  = 1

// Computer Control Login/Logoff
integer MODERO_COMPUTER_CONTROL_LOG_IN  = 1
integer MODERO_COMPUTER_CONTROL_LOG_OFF = 0

// button enable/disable
integer MODERO_BUTTON_ENABLE    = 1
integer MODERO_BUTTON_DISABLE   = 0

// Button Attributes
char MODERO_BUTTON_ATTRIBUTE_BITMAP[]                   = 'BM'
char MODERO_BUTTON_ATTRIBUTE_BORDER[]                   = 'BR'
char MODERO_BUTTON_ATTRIBUTE_BORDER_COLOR[]             = 'CB'
char MODERO_BUTTON_ATTRIBUTE_FILL_COLOR[]               = 'CF'
char MODERO_BUTTON_ATTRIBUTE_TEXT_COLOR[]               = 'CT'
char MODERO_BUTTON_ATTRIBUTE_TEXT_EFFECT_COLOR[]        = 'EC'
char MODERO_BUTTON_ATTRIBUTE_TEXT_EFFECT[]              = 'EF'
char MODERO_BUTTON_ATTRIBUTE_FONT[]                     = 'FT'
char MODERO_BUTTON_ATTRIBUTE_ICON[]                     = 'IC'
char MODERO_BUTTON_ATTRIBUTE_BITMAP_ALIGNMENT[]         = 'JB'
char MODERO_BUTTON_ATTRIBUTE_ICON_ALIGNMENT[]           = 'JI'
char MODERO_BUTTON_ATTRIBUTE_TEXT_ALIGNMENT[]           = 'JT'
char MODERO_BUTTON_ATTRIBUTE_LINES_OF_VIDEO_REMOVED[]   = 'LN'
char MODERO_BUTTON_ATTRIBUTE_OPACITY[]                  = 'OP'
char MODERO_BUTTON_ATTRIBUTE_BUTTON_SOUND[]             = 'SO'
char MODERO_BUTTON_ATTRIBUTE_TEXT[]                     = 'TX'
char MODERO_BUTTON_ATTRIBUTE_VIDEO_SLOT_ID[]            = 'VI'
char MODERO_BUTTON_ATTRIBUTE_WORD_WRAP[]                = 'WW'

// animation current state
integer MODERO_BUTTON_ANIMATION_STATE_CURRENT   = 0

// button feedback types
char MODERO_BUTTON_FEEDBACK_TYPE_NONE[]         = 'None'
char MODERO_BUTTON_FEEDBACK_TYPE_CHANNEL[]      = 'Channel'
char MODERO_BUTTON_FEEDBACK_TYPE_INVERT[]       = 'Invert'
char MODERO_BUTTON_FEEDBACK_TYPE_ON[]           = 'On'
char MODERO_BUTTON_FEEDBACK_TYPE_MOMENTARY[]    = 'Momentary'
char MODERO_BUTTON_FEEDBACK_TYPE_BLINK[]        = 'Blink'

// button layers
char MODERO_BUTTON_LAYER_FILL[]     = '1'
char MODERO_BUTTON_LAYER_IMAGE[]    = '2'
char MODERO_BUTTON_LAYER_ICON[]     = '3'
char MODERO_BUTTON_LAYER_TEXT[]     = '4'
char MODERO_BUTTON_LAYER_BORDER[]   = '5'

// Show/Hide button options
char MODERO_BUTTON_HIDE[]   = '0'
char MODERO_BUTTON_SHOW[]   = '1'

// Button text codes
char MODERO_TEXT_FORMATTING_CODE_LEVEL_PERCENTAGE[]         = '$P'
char MODERO_TEXT_FORMATTING_CODE_LEVEL_VALUE[]              = '$V'
char MODERO_TEXT_FORMATTING_CODE_LEVEL_RANGE_LOW_VALUE[]    = '$L'
char MODERO_TEXT_FORMATTING_CODE_LEVEL_RANGE_HIGH_VALUE[]   = '$H'
char MODERO_TEXT_FORMATTING_CODE_CURRENT_STATE[]            = '$S'
char MODERO_TEXT_FORMATTING_CODE_LEVEL_VALUE_ADJUSTED[]     = '$A'  // range low value subtracted from the raw level value
char MODERO_TEXT_FORMATTING_CODE_LEVEL_RANGE[]              = '$R'  // range high minus range low
char MODERO_TEXT_FORMATTING_CODE_DOLLAR_SIGN[]              = '$$'

// bargraph invert options
integer MODERO_BARGRAPH_INVERT_NO   = 0
integer MODERO_BARGRAPH_INVERT_YES  = 1

// joystick axis'
integer MODERO_JOYSTICK_INVERT_NO               = 0
integer MODERO_JOYSTICK_INVERT_HORIZONTAL_AXIS  = 1
integer MODERO_JOYSTICK_INVERT_VERTICAL_AXIS    = 2
integer MODERO_JOYSTICK_INVERT_BOTH_AXIS        = 3

// Virtual PC mouse modes
integer MODERO_VIRTUAL_PC_MOUSE_MODE_NONE           = 0
integer MODERO_VIRTUAL_PC_MOUSE_MODE_LEFT_CLICK     = 1
integer MODERO_VIRTUAL_PC_MOUSE_MODE_RIGHT_CLICK    = 2
integer MODERO_VIRTUAL_PC_MOUSE_MODE_MIDDLE_CLICK   = 3

// Page Flip Actions
char MODERO_PAGE_FLIP_ACTION_STANDARD[]                         = 'Stan'
char MODERO_PAGE_FLIP_ACTION_ANIMATED[]                         = 'StanAni'
char MODERO_PAGE_FLIP_ACTION_PREVIOUS[]                         = 'Prev'
char MODERO_PAGE_FLIP_ACTION_SHOW_POPUP[]                       = 'Show'
char MODERO_PAGE_FLIP_ACTION_HIDE_POPUP[]                       = 'Hide'
char MODERO_PAGE_FLIP_ACTION_TOGGLE_POPUP[]                     = 'Togg'
char MODERO_PAGE_FLIP_ACTION_CLEAR_POPUP_GROUP_FROM_ALL_PAGES[] = 'ClearG'
char MODERO_PAGE_FLIP_ACTION_CLEAR_ALL_POPUPS_FROM_PAGE[]       = 'ClearP'
char MODERO_PAGE_FLIP_ACTION_CLEAR_ALL_POPUPS_FROM_ALL_PAGES[]  = 'ClearA'

// Page flip animations
char MODERO_PAGE_FLIP_ANIMATION_FADE[]						= 'fade,Center'
char MODERO_PAGE_FLIP_ANIMATION_SLIDE_LEFT[]                = 'Slide,Left'
char MODERO_PAGE_FLIP_ANIMATION_SLIDE_RIGHT[]               = 'Slide,Right'
char MODERO_PAGE_FLIP_ANIMATION_SLIDE_TOP[]                 = 'Slide,Top'
char MODERO_PAGE_FLIP_ANIMATION_SLIDE_BOTTOM[]              = 'Slide,Bottom'
char MODERO_PAGE_FLIP_ANIMATION_SLIDE_BOUNCE_LEFT[]         = 'SlideBounce,Left'
char MODERO_PAGE_FLIP_ANIMATION_SLIDE_BOUNCE_RIGHT[]        = 'SlideBounce,Right'
char MODERO_PAGE_FLIP_ANIMATION_SLIDE_BOUNCE_TOP[]          = 'SlideBounce,Top'
char MODERO_PAGE_FLIP_ANIMATION_SLIDE_BOUNCE_BOTTOM[]       = 'SlideBounce,Bottom'
char MODERO_PAGE_FLIP_ANIMATION_CENTER_DOOR_FADE_LEFT[]     = 'cntrDrFade,Left'
char MODERO_PAGE_FLIP_ANIMATION_CENTER_DOOR_FADE_RIGHT[]    = 'cntrDrFade,Right'
char MODERO_PAGE_FLIP_ANIMATION_CENTER_DOOR_FADE_TOP[]      = 'cntrDrFade,Top'
char MODERO_PAGE_FLIP_ANIMATION_CENTER_DOOR_FADE_BOTTOM[]   = 'cntrDrFade,Bottom'
char MODERO_PAGE_FLIP_ANIMATION_DOOR_FADE_LEFT[]            = 'doorFade,Left'
char MODERO_PAGE_FLIP_ANIMATION_DOOR_FADE_RIGHT[]           = 'doorFade,Right'
char MODERO_PAGE_FLIP_ANIMATION_DOOR_FADE_TOP[]             = 'doorFade,Top'
char MODERO_PAGE_FLIP_ANIMATION_DOOR_FADE_BOTTOM[]          = 'doorFade,Bottom'
char MODERO_PAGE_FLIP_ANIMATION_BLACK_GLASS_LEFT[]          = 'blkGlass,Left'
char MODERO_PAGE_FLIP_ANIMATION_BLACK_GLASS_RIGHT[]         = 'blkGlass,Right'
char MODERO_PAGE_FLIP_ANIMATION_PAGE_CURL_LOWER_LEFT[]      = 'pgCurl,LL'
char MODERO_PAGE_FLIP_ANIMATION_PAGE_CURL_LOWER_RIGHT[]     = 'pgCurl,LR'
char MODERO_PAGE_FLIP_ANIMATION_PAGE_CURL_UPPER_LEFT[]      = 'pgCurl,UL'
char MODERO_PAGE_FLIP_ANIMATION_PAGE_CURL_UPPER_RIGHT[]     = 'pgCurl,UR'
// The following page flip animations are only for Modero X-Series panels
char MODERO_PAGE_FLIP_ANIMATION_ZOOM_IN[]                   = 'zoomIn,Center'
char MODERO_PAGE_FLIP_ANIMATION_ZOOM_OUT[]                  = 'zoomOut,Center'
char MODERO_PAGE_FLIP_ANIMATION_IMPLODE[]                   = 'implode,Center'
char MODERO_PAGE_FLIP_ANIMATION_EXPLODE[]                   = 'explore,Center'
char MODERO_PAGE_FLIP_ANIMATION_SPIN_IN[]                   = 'spinIn,Center'
char MODERO_PAGE_FLIP_ANIMATION_SPIN_OUT[]                  = 'spinOut,Center'
char MODERO_PAGE_FLIP_ANIMATION_WAVES[]                     = 'waves,Center'
char MODERO_PAGE_FLIP_ANIMATION_FLIP_CARD_LEFT[]            = 'flipCard,Left'
char MODERO_PAGE_FLIP_ANIMATION_FLIP_CARD_RIGHT[]           = 'flipCard,Right'
char MODERO_PAGE_FLIP_ANIMATION_FLIP_CARD_TOP[]             = 'flipCard,Top'
char MODERO_PAGE_FLIP_ANIMATION_FLIP_CARD_BOTTOM[]          = 'flipCard,Bottom'
char MODERO_PAGE_FLIP_ANIMATION_SLATS_LEFT[]                = 'slats,Left'
char MODERO_PAGE_FLIP_ANIMATION_SLATS_RIGHT[]               = 'slats,Right'
char MODERO_PAGE_FLIP_ANIMATION_SLATS_TOP[]                 = 'slats,Top'
char MODERO_PAGE_FLIP_ANIMATION_SLATS_BOTTOM[]              = 'slats,Bottom'
char MODERO_PAGE_FLIP_ANIMATION_SQUISH_LEFT[]               = 'squish,Left'
char MODERO_PAGE_FLIP_ANIMATION_SQUISH_RIGHT[]              = 'squish,Right'
char MODERO_PAGE_FLIP_ANIMATION_SQUISH_TOP[]                = 'squish,Top'
char MODERO_PAGE_FLIP_ANIMATION_SQUISH_BOTTOM[]             = 'squish,Bottom'
char MODERO_PAGE_FLIP_ANIMATION_TUMBLE_LOWER_LEFT[]         = 'flipCard,LL'
char MODERO_PAGE_FLIP_ANIMATION_TUMBLE_LOWER_RIGHT[]        = 'flipCard,LR'
char MODERO_PAGE_FLIP_ANIMATION_TUMBLE_UPPER_LEFT[]         = 'flipCard,UL'
char MODERO_PAGE_FLIP_ANIMATION_TUMBLE_UPPER_RIGHT[]        = 'flipCard,UR'
char MODERO_PAGE_FLIP_ANIMATION_WIPE_LEFT[]                 = 'wipe,Left'
char MODERO_PAGE_FLIP_ANIMATION_WIPE_RIGHT[]                = 'wipe,Right'
char MODERO_PAGE_FLIP_ANIMATION_WIPE_TOP[]                  = 'wipe,Top'
char MODERO_PAGE_FLIP_ANIMATION_WIPE_BOTTOM[]               = 'wipe,Bottom'

// Text area selection options
integer MODERO_TEXT_AREA_SELECT     = 1
integer MODERO_TEXT_AREA_UNSELECT   = 0

// Touch Output Options
char MODERO_TOUCH_TRACKING_OFF[]                = '0'
char MODERO_TOUCH_TRACKING_PRESS_RELEASE[]      = '1'
char MODERO_TOUCH_TRACKING_MOVE[]               = '2'
char MODERO_TOUCH_TRACKING_PRESS_MOVE_RELEASE[] = '3'

// justifications
integer MODERO_JUSTIFICATION_ABSOLUTE       = 0
integer MODERO_JUSTIFICATION_TOP_LEFT       = 1
integer MODERO_JUSTIFICATION_TOP_MIDDLE     = 2
integer MODERO_JUSTIFICATION_TOP_RIGHT      = 3
integer MODERO_JUSTIFICATION_CENTER_LEFT    = 4
integer MODERO_JUSTIFICATION_CENTER_MIDDLE  = 5
integer MODERO_JUSTIFICATION_CENTER_RIGHT   = 6
integer MODERO_JUSTIFICATION_BOTTOM_LEFT    = 7
integer MODERO_JUSTIFICATION_BOTTOM_MIDDLE  = 8
integer MODERO_JUSTIFICATION_BOTTOM_RIGHT   = 9

// Bargraph slider names
char MODERO_BARGRAPH_SLIDER_NAME_NONE[]             = 'None'
char MODERO_BARGRAPH_SLIDER_NAME_BALL[]             = 'Ball'
char MODERO_BARGRAPH_SLIDER_NAME_CIRCLE_LARGE[]     = 'Circle -L'
char MODERO_BARGRAPH_SLIDER_NAME_CIRCLE_MEDIUM[]    = 'Circle -M'
char MODERO_BARGRAPH_SLIDER_NAME_CIRCLE_SMALL[]     = 'Circle -S'
char MODERO_BARGRAPH_SLIDER_NAME_PRECISION[]        = 'Precision'
char MODERO_BARGRAPH_SLIDER_NAME_RECTANGLE_LARGE[]  = 'Rectangle -L'
char MODERO_BARGRAPH_SLIDER_NAME_RECTANGLE_MEDIUM[] = 'Rectangle -M'
char MODERO_BARGRAPH_SLIDER_NAME_RECTANGLE_SMALL[]  = 'Rectangle -S'
char MODERO_BARGRAPH_SLIDER_NAME_WINDOWS[]          = 'Windows'
char MODERO_BARGRAPH_SLIDER_NAME_WINDOWS_ACTIVE[]   = 'Windows Active'

// Joystick cursor names
char MODERO_JOYSTICK_CURSOR_NAME_NONE[]         = 'None'
char MODERO_JOYSTICK_CURSOR_NAME_ARROW[]        = 'Arrow'
char MODERO_JOYSTICK_CURSOR_NAME_BALL[]         = 'Ball'
char MODERO_JOYSTICK_CURSOR_NAME_CIRCLE[]       = 'Circle'
char MODERO_JOYSTICK_CURSOR_NAME_CROSSHAIRS[]   = 'Crosshairs'
char MODERO_JOYSTICK_CURSOR_NAME_GUNSIGHT[]     = 'Gunsight'
char MODERO_JOYSTICK_CURSOR_NAME_HAND[]         = 'Hand'
char MODERO_JOYSTICK_CURSOR_NAME_METAL[]        = 'Metal'
char MODERO_JOYSTICK_CURSOR_NAME_SPIRAL[]       = 'Spiral'
char MODERO_JOYSTICK_CURSOR_NAME_TARGET[]       = 'Target'
char MODERO_JOYSTICK_CURSOR_NAME_VIEW_FINDER[]  = 'View Finder'

// font id's
integer MODERO_FONT_ID_COURIER_NEW_9    = 1
integer MODERO_FONT_ID_COURIER_NEW_12   = 2
integer MODERO_FONT_ID_COURIER_NEW_18   = 3
integer MODERO_FONT_ID_COURIER_NEW_26   = 4
integer MODERO_FONT_ID_COURIER_NEW_32   = 5
//integer MODERO_FONT_ID_COURIER_NEW_18 = 6
//integer MODERO_FONT_ID_COURIER_NEW_26 = 7
integer MODERO_FONT_ID_COURIER_NEW_34   = 8
integer MODERO_FONT_ID_AMX_BOLD_14      = 9
integer MODERO_FONT_ID_AMX_BOLD_20      = 10
integer MODERO_FONT_ID_AMX_BOLD_36      = 11
integer MODERO_FONT_ID_ARIAL_9          = 19
integer MODERO_FONT_ID_ARIAL_10         = 20
integer MODERO_FONT_ID_ARIAL_12         = 21
integer MODERO_FONT_ID_ARIAL_14         = 22
integer MODERO_FONT_ID_ARIAL_16         = 23
integer MODERO_FONT_ID_ARIAL_18         = 24
integer MODERO_FONT_ID_ARIAL_20         = 25
integer MODERO_FONT_ID_ARIAL_24         = 26
integer MODERO_FONT_ID_ARIAL_36         = 27
integer MODERO_FONT_ID_ARIAL_BOLD_10    = 28
integer MODERO_FONT_ID_ARIAL_BOLD_8     = 29

// Colour names (for all 88 Basic Colours)
char MODERO_COLOUR_NAME_VERY_LIGHT_RED[]        = 'VeryLightRed'
char MODERO_COLOUR_NAME_LIGHT_RED[]             = 'LightRed'
char MODERO_COLOUR_NAME_RED[]                   = 'Red'
char MODERO_COLOUR_NAME_MEDIUM_RED[]            = 'MediumRed'
char MODERO_COLOUR_NAME_DARK_RED[]              = 'DarkRed'
char MODERO_COLOUR_NAME_VERY_DARK_RED[]         = 'VeryDarkRed'
char MODERO_COLOUR_NAME_VERY_LIGHT_ORANGE[]     = 'VeryLightOrange'
char MODERO_COLOUR_NAME_LIGHT_ORANGE[]          = 'LightOrange'
char MODERO_COLOUR_NAME_ORANGE[]                = 'Orange'
char MODERO_COLOUR_NAME_MEDIUM_ORANGE[]         = 'MediumOrange'
char MODERO_COLOUR_NAME_DARK_ORANGE[]           = 'DarkOrange'
char MODERO_COLOUR_NAME_VERY_DARK_ORANGE[]      = 'VeryDarkOrange'
char MODERO_COLOUR_NAME_VERY_LIGHT_YELLOW[]     = 'VeryLightYellow'
char MODERO_COLOUR_NAME_LIGHT_YELLOW[]          = 'LightYellow'
char MODERO_COLOUR_NAME_YELLOW[]                = 'Yellow'
char MODERO_COLOUR_NAME_MEDIUM_YELLOW[]         = 'MediumYellow'
char MODERO_COLOUR_NAME_DARK_YELLOW[]           = 'DarkYellow'
char MODERO_COLOUR_NAME_VERY_DARK_YELLOW[]      = 'VeryDarkYellow'
char MODERO_COLOUR_NAME_VERY_LIGHT_LIME[]       = 'VeryLightLime'
char MODERO_COLOUR_NAME_LIGHT_LIME[]            = 'LightLime'
char MODERO_COLOUR_NAME_LIME[]                  = 'Lime'
char MODERO_COLOUR_NAME_MEDIUM_LIME[]           = 'MediumLime'
char MODERO_COLOUR_NAME_DARK_LIME[]             = 'DarkLime'
char MODERO_COLOUR_NAME_VERY_DARK_LIME[]        = 'VeryDarkLime'
char MODERO_COLOUR_NAME_VERY_LIGHT_GREEN[]      = 'VeryLightGreen'
char MODERO_COLOUR_NAME_LIGHT_GREEN[]           = 'LightGreen'
char MODERO_COLOUR_NAME_GREEN[]                 = 'Green'
char MODERO_COLOUR_NAME_MEDIUM_GREEN[]          = 'MediumGreen'
char MODERO_COLOUR_NAME_DARK_GREEN[]            = 'DarkGreen'
char MODERO_COLOUR_NAME_VERY_DARK_GREEN[]       = 'VeryDarkGreen'
char MODERO_COLOUR_NAME_VERY_LIGHT_MINT[]       = 'VeryLightMint'
char MODERO_COLOUR_NAME_LIGHT_MINT[]            = 'LightMint'
char MODERO_COLOUR_NAME_MINT[]                  = 'Mint'
char MODERO_COLOUR_NAME_MEDIUM_MINT[]           = 'MediumMint'
char MODERO_COLOUR_NAME_DARK_MINT[]             = 'DarkMint'
char MODERO_COLOUR_NAME_VERY_DARK_MINT[]        = 'VeryDarkMint'
char MODERO_COLOUR_NAME_VERY_LIGHT_CYAN[]       = 'VeryLightCyan'
char MODERO_COLOUR_NAME_LIGHT_CYAN[]            = 'LightCyan'
char MODERO_COLOUR_NAME_CYAN[]                  = 'Cyan'
char MODERO_COLOUR_NAME_MEDIUM_CYAN[]           = 'MediumCyan'
char MODERO_COLOUR_NAME_DARK_CYAN[]             = 'DarkCyan'
char MODERO_COLOUR_NAME_VERY_DARK_CYAN[]        = 'VeryDarkCyan'
char MODERO_COLOUR_NAME_VERY_LIGHT_AQUA[]       = 'VeryLightAqua'
char MODERO_COLOUR_NAME_LIGHT_AQUA[]            = 'LightAqua'
char MODERO_COLOUR_NAME_AQUA[]                  = 'Aqua'
char MODERO_COLOUR_NAME_MEDIUM_AQUA[]           = 'MediumAqua'
char MODERO_COLOUR_NAME_DARK_AQUA[]             = 'DarkAqua'
char MODERO_COLOUR_NAME_VERY_DARK_AQUA[]        = 'VeryDarkAqua'
char MODERO_COLOUR_NAME_VERY_LIGHT_BLUE[]       = 'VeryLightBlue'
char MODERO_COLOUR_NAME_LIGHT_BLUE[]            = 'LightBlue'
char MODERO_COLOUR_NAME_BLUE[]                  = 'Blue'
char MODERO_COLOUR_NAME_MEDIUM_BLUE[]           = 'MediumBlue'
char MODERO_COLOUR_NAME_DARK_BLUE[]             = 'DarkBlue'
char MODERO_COLOUR_NAME_VERY_DARK_BLUE[]        = 'VeryDarkBlue'
char MODERO_COLOUR_NAME_VERY_LIGHT_PURPLE[]     = 'LightPurple'
char MODERO_COLOUR_NAME_LIGHT_PURPLE[]          = 'LightPurple'
char MODERO_COLOUR_NAME_PURPLE[]                = 'Purple'
char MODERO_COLOUR_NAME_MEDIUM_PURPLE[]         = 'MediumPurple'
char MODERO_COLOUR_NAME_DARK_PURPLE[]           = 'DarkPurple'
char MODERO_COLOUR_NAME_VERY_DARK_PURPLE[]      = 'VeryDarkPurple'
char MODERO_COLOUR_NAME_VERY_LIGHT_MAGENTA[]    = 'VeryLightMagenta'
char MODERO_COLOUR_NAME_LIGHT_MAGENTA[]         = 'LightMagenta'
char MODERO_COLOUR_NAME_MAGENTA[]               = 'Magenta'
char MODERO_COLOUR_NAME_MEDIUM_MAGENTA[]        = 'MediumMagenta'
char MODERO_COLOUR_NAME_DARK_MAGENTA[]          = 'DarkMagenta'
char MODERO_COLOUR_NAME_VERY_DARK_MAGENTA[]     = 'VeryDarkMagenta'
char MODERO_COLOUR_NAME_VERY_LIGHT_PINK[]       = 'VeryLightPink'
char MODERO_COLOUR_NAME_LIGHT_PINK[]            = 'LightPink'
char MODERO_COLOUR_NAME_PINK[]                  = 'Pink'
char MODERO_COLOUR_NAME_MEDIUM_PINK[]           = 'MediumPink'
char MODERO_COLOUR_NAME_DARK_PINK[]             = 'DarkPink'
char MODERO_COLOUR_NAME_VERY_DARK_PINK[]        = 'VeryDarkPink'
char MODERO_COLOUR_NAME_WHITE[]                 = 'White'
char MODERO_COLOUR_NAME_GREY_1[]                = 'Grey1'
char MODERO_COLOUR_NAME_GREY_2[]                = 'Grey2'
char MODERO_COLOUR_NAME_GREY_3[]                = 'Grey3'
char MODERO_COLOUR_NAME_GREY_4[]                = 'Grey4'
char MODERO_COLOUR_NAME_GREY_5[]                = 'Grey5'
char MODERO_COLOUR_NAME_GREY_6[]                = 'Grey6'
char MODERO_COLOUR_NAME_GREY_7[]                = 'Grey7'
char MODERO_COLOUR_NAME_GREY_8[]                = 'Grey8'
char MODERO_COLOUR_NAME_GREY_9[]                = 'Grey9'
char MODERO_COLOUR_NAME_GREY_10[]               = 'Grey10'
char MODERO_COLOUR_NAME_GREY_11[]               = 'Grey11'
char MODERO_COLOUR_NAME_GREY_12[]               = 'Grey12'
char MODERO_COLOUR_NAME_GREY_13[]               = 'Grey13'
char MODERO_COLOUR_NAME_GREY_14[]               = 'Grey14'
char MODERO_COLOUR_NAME_BLACK[]                 = 'Black'
char MODERO_COLOUR_NAME_TRANSPARENT[]           = 'TRANSPARENT'

// Text effect names
char MODERO_TEXT_EFFECT_NAME_GLOW_SMALL[]                           = 'Glow -S'
char MODERO_TEXT_EFFECT_NAME_GLOW_MEDIUM[]                          = 'Glow -M'
char MODERO_TEXT_EFFECT_NAME_GLOW_LARGE[]                           = 'Glow -L'
char MODERO_TEXT_EFFECT_NAME_GLOW_EXTRA_LARGE[]                     = 'Glow -X'
char MODERO_TEXT_EFFECT_NAME_OUTLINE_SMALL[]                        = 'Outline -S'
char MODERO_TEXT_EFFECT_NAME_OUTLINE_MEDIUM[]                       = 'Outline -M'
char MODERO_TEXT_EFFECT_NAME_OUTLINE_LARGE[]                        = 'Outline -L'
char MODERO_TEXT_EFFECT_NAME_OUTLINE_EXTRA_LARGE[]                  = 'Outline -X'
char MODERO_TEXT_EFFECT_NAME_SOFT_DROP_SHADOW_1[]                   = 'Soft Drop Shadow 1'
char MODERO_TEXT_EFFECT_NAME_SOFT_DROP_SHADOW_2[]                   = 'Soft Drop Shadow 2'
char MODERO_TEXT_EFFECT_NAME_SOFT_DROP_SHADOW_3[]                   = 'Soft Drop Shadow 3'
char MODERO_TEXT_EFFECT_NAME_SOFT_DROP_SHADOW_4[]                   = 'Soft Drop Shadow 4'
char MODERO_TEXT_EFFECT_NAME_SOFT_DROP_SHADOW_5[]                   = 'Soft Drop Shadow 5'
char MODERO_TEXT_EFFECT_NAME_SOFT_DROP_SHADOW_6[]                   = 'Soft Drop Shadow 6'
char MODERO_TEXT_EFFECT_NAME_SOFT_DROP_SHADOW_7[]                   = 'Soft Drop Shadow 7'
char MODERO_TEXT_EFFECT_NAME_SOFT_DROP_SHADOW_8[]                   = 'Soft Drop Shadow 8'
char MODERO_TEXT_EFFECT_NAME_MEDIUM_DROP_SHADOW_1[]                 = 'Medium Drop Shadow 1'
char MODERO_TEXT_EFFECT_NAME_MEDIUM_DROP_SHADOW_2[]                 = 'Medium Drop Shadow 2'
char MODERO_TEXT_EFFECT_NAME_MEDIUM_DROP_SHADOW_3[]                 = 'Medium Drop Shadow 3'
char MODERO_TEXT_EFFECT_NAME_MEDIUM_DROP_SHADOW_4[]                 = 'Medium Drop Shadow 4'
char MODERO_TEXT_EFFECT_NAME_MEDIUM_DROP_SHADOW_5[]                 = 'Medium Drop Shadow 5'
char MODERO_TEXT_EFFECT_NAME_MEDIUM_DROP_SHADOW_6[]                 = 'Medium Drop Shadow 6'
char MODERO_TEXT_EFFECT_NAME_MEDIUM_DROP_SHADOW_7[]                 = 'Medium Drop Shadow 7'
char MODERO_TEXT_EFFECT_NAME_MEDIUM_DROP_SHADOW_8[]                 = 'Medium Drop Shadow 8'
char MODERO_TEXT_EFFECT_NAME_HARD_DROP_SHADOW_1[]                   = 'Hard Drop Shadow 1'
char MODERO_TEXT_EFFECT_NAME_HARD_DROP_SHADOW_2[]                   = 'Hard Drop Shadow 2'
char MODERO_TEXT_EFFECT_NAME_HARD_DROP_SHADOW_3[]                   = 'Hard Drop Shadow 3'
char MODERO_TEXT_EFFECT_NAME_HARD_DROP_SHADOW_4[]                   = 'Hard Drop Shadow 4'
char MODERO_TEXT_EFFECT_NAME_HARD_DROP_SHADOW_5[]                   = 'Hard Drop Shadow 5'
char MODERO_TEXT_EFFECT_NAME_HARD_DROP_SHADOW_6[]                   = 'Hard Drop Shadow 6'
char MODERO_TEXT_EFFECT_NAME_HARD_DROP_SHADOW_7[]                   = 'Hard Drop Shadow 7'
char MODERO_TEXT_EFFECT_NAME_HARD_DROP_SHADOW_8[]                   = 'Hard Drop Shadow 8'
char MODERO_TEXT_EFFECT_NAME_SOFT_DROP_SHADOW_1_WITH_OUTLINE[]      = 'Soft Drop Shadow 1 with outline'
char MODERO_TEXT_EFFECT_NAME_SOFT_DROP_SHADOW_2_WITH_OUTLINE[]      = 'Soft Drop Shadow 2 with outline'
char MODERO_TEXT_EFFECT_NAME_SOFT_DROP_SHADOW_3_WITH_OUTLINE[]      = 'Soft Drop Shadow 3 with outline'
char MODERO_TEXT_EFFECT_NAME_SOFT_DROP_SHADOW_4_WITH_OUTLINE[]      = 'Soft Drop Shadow 4 with outline'
char MODERO_TEXT_EFFECT_NAME_SOFT_DROP_SHADOW_5_WITH_OUTLINE[]      = 'Soft Drop Shadow 5 with outline'
char MODERO_TEXT_EFFECT_NAME_SOFT_DROP_SHADOW_6_WITH_OUTLINE[]      = 'Soft Drop Shadow 6 with outline'
char MODERO_TEXT_EFFECT_NAME_SOFT_DROP_SHADOW_7_WITH_OUTLINE[]      = 'Soft Drop Shadow 7 with outline'
char MODERO_TEXT_EFFECT_NAME_SOFT_DROP_SHADOW_8_WITH_OUTLINE[]      = 'Soft Drop Shadow 8 with outline'
char MODERO_TEXT_EFFECT_NAME_MEDIUM_DROP_SHADOW_1_WITH_OUTLINE[]    = 'Medium Drop Shadow 1 with outline'
char MODERO_TEXT_EFFECT_NAME_MEDIUM_DROP_SHADOW_2_WITH_OUTLINE[]    = 'Medium Drop Shadow 2 with outline'
char MODERO_TEXT_EFFECT_NAME_MEDIUM_DROP_SHADOW_3_WITH_OUTLINE[]    = 'Medium Drop Shadow 3 with outline'
char MODERO_TEXT_EFFECT_NAME_MEDIUM_DROP_SHADOW_4_WITH_OUTLINE[]    = 'Medium Drop Shadow 4 with outline'
char MODERO_TEXT_EFFECT_NAME_MEDIUM_DROP_SHADOW_5_WITH_OUTLINE[]    = 'Medium Drop Shadow 5 with outline'
char MODERO_TEXT_EFFECT_NAME_MEDIUM_DROP_SHADOW_6_WITH_OUTLINE[]    = 'Medium Drop Shadow 6 with outline'
char MODERO_TEXT_EFFECT_NAME_MEDIUM_DROP_SHADOW_7_WITH_OUTLINE[]    = 'Medium Drop Shadow 7 with outline'
char MODERO_TEXT_EFFECT_NAME_MEDIUM_DROP_SHADOW_8_WITH_OUTLINE[]    = 'Medium Drop Shadow 8 with outline'
char MODERO_TEXT_EFFECT_NAME_HARD_DROP_SHADOW_1_WITH_OUTLINE[]      = 'Hard Drop Shadow 1 with outline'
char MODERO_TEXT_EFFECT_NAME_HARD_DROP_SHADOW_2_WITH_OUTLINE[]      = 'Hard Drop Shadow 2 with outline'
char MODERO_TEXT_EFFECT_NAME_HARD_DROP_SHADOW_3_WITH_OUTLINE[]      = 'Hard Drop Shadow 3 with outline'
char MODERO_TEXT_EFFECT_NAME_HARD_DROP_SHADOW_4_WITH_OUTLINE[]      = 'Hard Drop Shadow 4 with outline'
char MODERO_TEXT_EFFECT_NAME_HARD_DROP_SHADOW_5_WITH_OUTLINE[]      = 'Hard Drop Shadow 5 with outline'
char MODERO_TEXT_EFFECT_NAME_HARD_DROP_SHADOW_6_WITH_OUTLINE[]      = 'Hard Drop Shadow 6 with outline'
char MODERO_TEXT_EFFECT_NAME_HARD_DROP_SHADOW_7_WITH_OUTLINE[]      = 'Hard Drop Shadow 7 with outline'
char MODERO_TEXT_EFFECT_NAME_HARD_DROP_SHADOW_8_WITH_OUTLINE[]      = 'Hard Drop Shadow 8 with outline'

// Border Styles
char MODERO_BORDER_STYLE_NAME_NONE[]                            = 'None'
char MODERO_BORDER_STYLE_NAME_AMX_ELITE_LARGE[]                 = 'AMX Elite -L'
char MODERO_BORDER_STYLE_NAME_AMX_ELITE_MEDIUM[]                = 'AMX Elite -M'
char MODERO_BORDER_STYLE_NAME_AMX_ELITE_SMALL[]                 = 'AMX Elite -S'
char MODERO_BORDER_STYLE_NAME_BEVEL_LARGE[]                     = 'Bevel -L'
char MODERO_BORDER_STYLE_NAME_BEVEL_MEDIUM[]                    = 'Bevel -M'
char MODERO_BORDER_STYLE_NAME_BEVEL_SMALL[]                     = 'Bevel -S'
char MODERO_BORDER_STYLE_NAME_CIRCLE_15[]                       = 'Circle 15'
char MODERO_BORDER_STYLE_NAME_CIRCLE_25[]                       = 'Circle 25'
char MODERO_BORDER_STYLE_NAME_CIRCLE_35[]                       = 'Circle 35'
char MODERO_BORDER_STYLE_NAME_CIRCLE_45[]                       = 'Circle 45'
char MODERO_BORDER_STYLE_NAME_CIRCLE_55[]                       = 'Circle 55'
char MODERO_BORDER_STYLE_NAME_CIRCLE_65[]                       = 'Circle 65'
char MODERO_BORDER_STYLE_NAME_CIRCLE_75[]                       = 'Circle 75'
char MODERO_BORDER_STYLE_NAME_CIRCLE_85[]                       = 'Circle 85'
char MODERO_BORDER_STYLE_NAME_CIRCLE_95[]                       = 'Circle 95'
char MODERO_BORDER_STYLE_NAME_CIRCLE_105[]                      = 'Circle 105'
char MODERO_BORDER_STYLE_NAME_CIRCLE_115[]                      = 'Circle 115'
char MODERO_BORDER_STYLE_NAME_CIRCLE_125[]                      = 'Circle 125'
char MODERO_BORDER_STYLE_NAME_CIRCLE_135[]                      = 'Circle 135'
char MODERO_BORDER_STYLE_NAME_CIRCLE_145[]                      = 'Circle 145'
char MODERO_BORDER_STYLE_NAME_CIRCLE_155[]                      = 'Circle 155'
char MODERO_BORDER_STYLE_NAME_CIRCLE_165[]                      = 'Circle 165'
char MODERO_BORDER_STYLE_NAME_CIRCLE_175[]                      = 'Circle 175'
char MODERO_BORDER_STYLE_NAME_CIRCLE_185[]                      = 'Circle 185'
char MODERO_BORDER_STYLE_NAME_CIRCLE_195[]                      = 'Circle 195'
char MODERO_BORDER_STYLE_NAME_CURSOR_BOTTOM[]                   = 'Cursor Bottom'
char MODERO_BORDER_STYLE_NAME_CURSOR_BOTTOM_WITH_HOLE[]         = 'Cursor Bottom with Hole'
char MODERO_BORDER_STYLE_NAME_CURSOR_TOP[]                      = 'Cursor Top'
char MODERO_BORDER_STYLE_NAME_CURSOR_TOP_WITH_HOLE[]            = 'Cursor Top with Hole'
char MODERO_BORDER_STYLE_NAME_CURSOR_LEFT[]                     = 'Cursor Left'
char MODERO_BORDER_STYLE_NAME_CURSOR_LEFT_WITH_HOLE[]           = 'Cursor Left with Hole'
char MODERO_BORDER_STYLE_NAME_CURSOR_RIGHT[]                    = 'Cursor Right'
char MODERO_BORDER_STYLE_NAME_CURSOR_RIGHT_WITH_HOLE[]          = 'Cursor Right with Hole'
char MODERO_BORDER_STYLE_NAME_CUSTOM_FRAME[]                    = 'Custom Frame'
char MODERO_BORDER_STYLE_NAME_DIAMOND_15[]                      = 'Diamond 15'
char MODERO_BORDER_STYLE_NAME_DIAMOND_25[]                      = 'Diamond 25'
char MODERO_BORDER_STYLE_NAME_DIAMOND_35[]                      = 'Diamond 35'
char MODERO_BORDER_STYLE_NAME_DIAMOND_45[]                      = 'Diamond 45'
char MODERO_BORDER_STYLE_NAME_DIAMOND_55[]                      = 'Diamond 55'
char MODERO_BORDER_STYLE_NAME_DIAMOND_65[]                      = 'Diamond 65'
char MODERO_BORDER_STYLE_NAME_DIAMOND_75[]                      = 'Diamond 75'
char MODERO_BORDER_STYLE_NAME_DIAMOND_85[]                      = 'Diamond 85'
char MODERO_BORDER_STYLE_NAME_DIAMOND_95[]                      = 'Diamond 95'
char MODERO_BORDER_STYLE_NAME_DIAMOND_105[]                     = 'Diamond 105'
char MODERO_BORDER_STYLE_NAME_DIAMOND_115[]                     = 'Diamond 115'
char MODERO_BORDER_STYLE_NAME_DIAMOND_125[]                     = 'Diamond 125'
char MODERO_BORDER_STYLE_NAME_DIAMOND_135[]                     = 'Diamond 135'
char MODERO_BORDER_STYLE_NAME_DIAMOND_145[]                     = 'Diamond 145'
char MODERO_BORDER_STYLE_NAME_DIAMOND_155[]                     = 'Diamond 155'
char MODERO_BORDER_STYLE_NAME_DIAMOND_165[]                     = 'Diamond 165'
char MODERO_BORDER_STYLE_NAME_DIAMOND_175[]                     = 'Diamond 175'
char MODERO_BORDER_STYLE_NAME_DIAMOND_185[]                     = 'Diamond 185'
char MODERO_BORDER_STYLE_NAME_DIAMOND_195[]                     = 'Diamond 195'
char MODERO_BORDER_STYLE_NAME_DOUBLE_BEVEL_LARGE[]              = 'Double Bevel -L'
char MODERO_BORDER_STYLE_NAME_DOUBLE_BEVEL_MEDIUM[]             = 'Double Bevel -M'
char MODERO_BORDER_STYLE_NAME_DOUBLE_BEVEL_SMALL[]              = 'Double Bevel -S'
char MODERO_BORDER_STYLE_NAME_FUZZY[]                           = 'Fuzzy'
char MODERO_BORDER_STYLE_NAME_GLOW_LARGE[]                      = 'Glow -L'
char MODERO_BORDER_STYLE_NAME_GLOW_SMALL[]                      = 'Glow -S'
char MODERO_BORDER_STYLE_NAME_HELP_DOWN[]                       = 'Help Down'
char MODERO_BORDER_STYLE_NAME_NEON_ACTIVE_LARGE[]               = 'Neon Active -L'
char MODERO_BORDER_STYLE_NAME_NEON_ACTIVE_SMALL[]               = 'Neon Active -S'
char MODERO_BORDER_STYLE_NAME_NEON_INACTIVE_LARGE[]             = 'Neon Inactive -L'
char MODERO_BORDER_STYLE_NAME_NEON_INACTIVE_SMALL[]             = 'Neon Inactive -S'
char MODERO_BORDER_STYLE_NAME_OVAL_H_60_X_30[]                  = 'Oval H 60x30'
char MODERO_BORDER_STYLE_NAME_OVAL_H_100_X_50[]                 = 'Oval H 100x50'
char MODERO_BORDER_STYLE_NAME_OVAL_H_150_X_75[]                 = 'Oval H 150x75'
char MODERO_BORDER_STYLE_NAME_OVAL_H_200_X_100[]                = 'Oval H 200x100'
char MODERO_BORDER_STYLE_NAME_OVAL_V_30_X_60[]                  = 'Oval V 30x60'
char MODERO_BORDER_STYLE_NAME_OVAL_V_50_X_100[]                 = 'Oval V 50x100'
char MODERO_BORDER_STYLE_NAME_OVAL_V_75_X_150[]                 = 'Oval V 75x150'
char MODERO_BORDER_STYLE_NAME_OVAL_V__100_X_200[]               = 'Oval V 100x200'
char MODERO_BORDER_STYLE_NAME_PICTURE_FRAME[]                   = 'Picture Frame'
char MODERO_BORDER_STYLE_NAME_QUAD_LINE[]                       = 'Quad Line'
char MODERO_BORDER_STYLE_NAME_SINGLE_LINE[]                     = 'Single Line'
char MODERO_BORDER_STYLE_NAME_WINDOWS_STYLE_POPUP[]             = 'Windows Style Popup'
char MODERO_BORDER_STYLE_NAME_WINDOWS_STYLE_POPUP_STATUS_BAR[]  = 'Windows Style Popup (Status Bar)'
char MODERO_BORDER_STYLE_NAME_MENU_BOTTOM_ROUNDED_15[]          = 'Menu Bottom 15'
char MODERO_BORDER_STYLE_NAME_MENU_BOTTOM_ROUNDED_25[]          = 'Menu Bottom 25'
char MODERO_BORDER_STYLE_NAME_MENU_BOTTOM_ROUNDED_35[]          = 'Menu Bottom 35'
char MODERO_BORDER_STYLE_NAME_MENU_BOTTOM_ROUNDED_45[]          = 'Menu Bottom 45'
char MODERO_BORDER_STYLE_NAME_MENU_BOTTOM_ROUNDED_55[]          = 'Menu Bottom 55'
char MODERO_BORDER_STYLE_NAME_MENU_BOTTOM_ROUNDED_65[]          = 'Menu Bottom 65'
char MODERO_BORDER_STYLE_NAME_MENU_BOTTOM_ROUNDED_75[]          = 'Menu Bottom 75'
char MODERO_BORDER_STYLE_NAME_MENU_BOTTOM_ROUNDED_85[]          = 'Menu Bottom 85'
char MODERO_BORDER_STYLE_NAME_MENU_BOTTOM_ROUNDED_95[]          = 'Menu Bottom 95'
char MODERO_BORDER_STYLE_NAME_MENU_BOTTOM_ROUNDED_105[]         = 'Menu Bottom 105'
char MODERO_BORDER_STYLE_NAME_MENU_BOTTOM_ROUNDED_115[]         = 'Menu Bottom 115'
char MODERO_BORDER_STYLE_NAME_MENU_BOTTOM_ROUNDED_125[]         = 'Menu Bottom 125'
char MODERO_BORDER_STYLE_NAME_MENU_BOTTOM_ROUNDED_135[]         = 'Menu Bottom 135'
char MODERO_BORDER_STYLE_NAME_MENU_BOTTOM_ROUNDED_145[]         = 'Menu Bottom 145'
char MODERO_BORDER_STYLE_NAME_MENU_BOTTOM_ROUNDED_155[]         = 'Menu Bottom 155'
char MODERO_BORDER_STYLE_NAME_MENU_BOTTOM_ROUNDED_165[]         = 'Menu Bottom 165'
char MODERO_BORDER_STYLE_NAME_MENU_BOTTOM_ROUNDED_175[]         = 'Menu Bottom 175'
char MODERO_BORDER_STYLE_NAME_MENU_BOTTOM_ROUNDED_185[]         = 'Menu Bottom 185'
char MODERO_BORDER_STYLE_NAME_MENU_BOTTOM_ROUNDED_195[]         = 'Menu Bottom 195'
char MODERO_BORDER_STYLE_NAME_MENU_TOP_ROUNDED_15[]             = 'Menu Top 15'
char MODERO_BORDER_STYLE_NAME_MENU_TOP_ROUNDED_25[]             = 'Menu Top 25'
char MODERO_BORDER_STYLE_NAME_MENU_TOP_ROUNDED_35[]             = 'Menu Top 35'
char MODERO_BORDER_STYLE_NAME_MENU_TOP_ROUNDED_45[]             = 'Menu Top 45'
char MODERO_BORDER_STYLE_NAME_MENU_TOP_ROUNDED_55[]             = 'Menu Top 55'
char MODERO_BORDER_STYLE_NAME_MENU_TOP_ROUNDED_65[]             = 'Menu Top 65'
char MODERO_BORDER_STYLE_NAME_MENU_TOP_ROUNDED_75[]             = 'Menu Top 75'
char MODERO_BORDER_STYLE_NAME_MENU_TOP_ROUNDED_85[]             = 'Menu Top 85'
char MODERO_BORDER_STYLE_NAME_MENU_TOP_ROUNDED_95[]             = 'Menu Top 95'
char MODERO_BORDER_STYLE_NAME_MENU_TOP_ROUNDED_105[]            = 'Menu Top 105'
char MODERO_BORDER_STYLE_NAME_MENU_TOP_ROUNDED_115[]            = 'Menu Top 115'
char MODERO_BORDER_STYLE_NAME_MENU_TOP_ROUNDED_125[]            = 'Menu Top 125'
char MODERO_BORDER_STYLE_NAME_MENU_TOP_ROUNDED_135[]            = 'Menu Top 135'
char MODERO_BORDER_STYLE_NAME_MENU_TOP_ROUNDED_145[]            = 'Menu Top 145'
char MODERO_BORDER_STYLE_NAME_MENU_TOP_ROUNDED_155[]            = 'Menu Top 155'
char MODERO_BORDER_STYLE_NAME_MENU_TOP_ROUNDED_165[]            = 'Menu Top 165'
char MODERO_BORDER_STYLE_NAME_MENU_TOP_ROUNDED_175[]            = 'Menu Top 175'
char MODERO_BORDER_STYLE_NAME_MENU_TOP_ROUNDED_185[]            = 'Menu Top 185'
char MODERO_BORDER_STYLE_NAME_MENU_TOP_ROUNDED_195[]            = 'Menu Top 195'
char MODERO_BORDER_STYLE_NAME_MENU_RIGHT_ROUNDED_15[]           = 'Menu Right 15'
char MODERO_BORDER_STYLE_NAME_MENU_RIGHT_ROUNDED_25[]           = 'Menu Right 25'
char MODERO_BORDER_STYLE_NAME_MENU_RIGHT_ROUNDED_35[]           = 'Menu Right 35'
char MODERO_BORDER_STYLE_NAME_MENU_RIGHT_ROUNDED_45[]           = 'Menu Right 45'
char MODERO_BORDER_STYLE_NAME_MENU_RIGHT_ROUNDED_55[]           = 'Menu Right 55'
char MODERO_BORDER_STYLE_NAME_MENU_RIGHT_ROUNDED_65[]           = 'Menu Right 65'
char MODERO_BORDER_STYLE_NAME_MENU_RIGHT_ROUNDED_75[]           = 'Menu Right 75'
char MODERO_BORDER_STYLE_NAME_MENU_RIGHT_ROUNDED_85[]           = 'Menu Right 85'
char MODERO_BORDER_STYLE_NAME_MENU_RIGHT_ROUNDED_95[]           = 'Menu Right 95'
char MODERO_BORDER_STYLE_NAME_MENU_RIGHT_ROUNDED_105[]          = 'Menu Right 105'
char MODERO_BORDER_STYLE_NAME_MENU_RIGHT_ROUNDED_115[]          = 'Menu Right 115'
char MODERO_BORDER_STYLE_NAME_MENU_RIGHT_ROUNDED_125[]          = 'Menu Right 125'
char MODERO_BORDER_STYLE_NAME_MENU_RIGHT_ROUNDED_135[]          = 'Menu Right 135'
char MODERO_BORDER_STYLE_NAME_MENU_RIGHT_ROUNDED_145[]          = 'Menu Right 145'
char MODERO_BORDER_STYLE_NAME_MENU_RIGHT_ROUNDED_155[]          = 'Menu Right 155'
char MODERO_BORDER_STYLE_NAME_MENU_RIGHT_ROUNDED_165[]          = 'Menu Right 165'
char MODERO_BORDER_STYLE_NAME_MENU_RIGHT_ROUNDED_175[]          = 'Menu Right 175'
char MODERO_BORDER_STYLE_NAME_MENU_RIGHT_ROUNDED_185[]          = 'Menu Right 185'
char MODERO_BORDER_STYLE_NAME_MENU_RIGHT_ROUNDED_195[]          = 'Menu Right 195'
char MODERO_BORDER_STYLE_NAME_MENU_LEFT_ROUNDED_15[]            = 'Menu Left 15'
char MODERO_BORDER_STYLE_NAME_MENU_LEFT_ROUNDED_25[]            = 'Menu Left 25'
char MODERO_BORDER_STYLE_NAME_MENU_LEFT_ROUNDED_35[]            = 'Menu Left 35'
char MODERO_BORDER_STYLE_NAME_MENU_LEFT_ROUNDED_45[]            = 'Menu Left 45'
char MODERO_BORDER_STYLE_NAME_MENU_LEFT_ROUNDED_55[]            = 'Menu Left 55'
char MODERO_BORDER_STYLE_NAME_MENU_LEFT_ROUNDED_65[]            = 'Menu Left 65'
char MODERO_BORDER_STYLE_NAME_MENU_LEFT_ROUNDED_75[]            = 'Menu Left 75'
char MODERO_BORDER_STYLE_NAME_MENU_LEFT_ROUNDED_85[]            = 'Menu Left 85'
char MODERO_BORDER_STYLE_NAME_MENU_LEFT_ROUNDED_95[]            = 'Menu Left 95'
char MODERO_BORDER_STYLE_NAME_MENU_LEFT_ROUNDED_105[]           = 'Menu Left 105'
char MODERO_BORDER_STYLE_NAME_MENU_LEFT_ROUNDED_115[]           = 'Menu Left 115'
char MODERO_BORDER_STYLE_NAME_MENU_LEFT_ROUNDED_125[]           = 'Menu Left 125'
char MODERO_BORDER_STYLE_NAME_MENU_LEFT_ROUNDED_135[]           = 'Menu Left 135'
char MODERO_BORDER_STYLE_NAME_MENU_LEFT_ROUNDED_145[]           = 'Menu Left 145'
char MODERO_BORDER_STYLE_NAME_MENU_LEFT_ROUNDED_155[]           = 'Menu Left 155'
char MODERO_BORDER_STYLE_NAME_MENU_LEFT_ROUNDED_165[]           = 'Menu Left 165'
char MODERO_BORDER_STYLE_NAME_MENU_LEFT_ROUNDED_175[]           = 'Menu Left 175'
char MODERO_BORDER_STYLE_NAME_MENU_LEFT_ROUNDED_185[]           = 'Menu Left 185'
char MODERO_BORDER_STYLE_NAME_MENU_LEFT_ROUNDED_195[]           = 'Menu Left 195'

// Embedded codes
char MODERO_EMBEDDED_CODE_BORDER_STYLE[]                        = '%B'
char MODERO_EMBEDDED_CODE_BORDER_COLOUR[]                       = '%CB'
char MODERO_EMBEDDED_CODE_FILL_COLOUR[]                         = '%CF'
char MODERO_EMBEDDED_CODE_TEXT_COLOUR[]                         = '%CT'
char MODERO_EMBEDDED_CODE_DRAW_ORDER[]                          = '%DO'
char MODERO_EMBEDDED_CODE_TEXT_EFFECT_COLOUR[]                  = '%EC'
char MODERO_EMBEDDED_CODE_TEXT_EFFECT_NAME[]                    = '%EF'
char MODERO_EMBEDDED_CODE_ENABLE_DISABLE[]                      = '%EN'
char MODERO_EMBEDDED_CODE_FONT[]                                = '%F'
char MODERO_EMBEDDED_CODE_BARGRAPH_SLIDER_COLOUR[]              = '%GC'
char MODERO_EMBEDDED_CODE_BARGRAPH_RAMP_DOWN[]                  = '%GD'
char MODERO_EMBEDDED_CODE_BARGRAPH_DRAG_INCREMENT[]             = '%GG'
char MODERO_EMBEDDED_CODE_BARGRAPH_UPPER_LIMIT[]                = '%GH'
char MODERO_EMBEDDED_CODE_BARGRAPH_LOWER_LIMIT[]                = '%GL'
char MODERO_EMBEDDED_CODE_BARGRAPH_INVERT[]                     = '%GI'
char MODERO_EMBEDDED_CODE_BARGRAPH_SLIDER_NAME[]                = '%GN'
char MODERO_EMBEDDED_CODE_BARGRAPH_RAMP_UP[]                    = '%GU'
char MODERO_EMBEDDED_CODE_ICON[]                                = '%I'
//char MODERO_EMBEDDED_CODE_TEXT_ALIGNMENT[]                    = '%J'  // same functionality as '%JT' parameter
char MODERO_EMBEDDED_CODE_BITMAP_ALIGNMENT[]                    = '%JB'
char MODERO_EMBEDDED_CODE_ICON_ALIGNMENT[]                      = '%JI'
char MODERO_EMBEDDED_CODE_TEXT_ALIGNMENT[]                      = '%JT'
char MODERO_EMBEDDED_CODE_LINES_VIDEO_REMOVE[]                  = '%LN'
char MODERO_EMBEDDED_CODE_MASK_IMAGE[]                          = '%MI'
char MODERO_EMBEDDED_CODE_INPUT_MASK[]                          = '%MK'
char MODERO_EMBEDDED_CODE_MAX_TEXT_LENGTH[]                     = '%ML'
char MODERO_EMBEDDED_CODE_OPACITY[]                             = '%OP'
char MODERO_EMBEDDED_CODE_FEEDBACK_TYPE[]                       = '%OT'
char MODERO_EMBEDDED_CODE_BITMAP[]                              = '%P'
char MODERO_EMBEDDED_CODE_LOCATION_AND_SIZE[]                   = '%R'
char MODERO_EMBEDDED_CODE_TEXT_AREA_FOCUS[]                     = '%SF'
char MODERO_EMBEDDED_CODE_SUBMIT_TEXT[]                         = '%SM'
char MODERO_EMBEDDED_CODE_HIT_SOUND[]                           = '%SO'
char MODERO_EMBEDDED_CODE_SHOW_HIDE[]                           = '%SW'
char MODERO_EMBEDDED_CODE_TEXT[]                                = '%T'
char MODERO_EMBEDDED_CODE_UNICODE_TEXT[]                        = '%UN'
char MODERO_EMBEDDED_CODE_VIDEO[]                               = '%VI'
char MODERO_EMBEDDED_CODE_COMPUTER_CONTROL_LOGON_LOGOFF[]       = '%VL'
char MODERO_EMBEDDED_CODE_COMPUTER_CONTROL_NETWORK_NAME[]       = '%VN'
char MODERO_EMBEDDED_CODE_COMPUTER_CONTROL_NETWORK_PASSWORD[]   = '%VP'
char MODERO_EMBEDDED_CODE_WORD_WRAP[]                           = '%WW'

// Gesture types
integer MODERO_GESTURE_TYPE_SWIPE_UP                    = 1
integer MODERO_GESTURE_TYPE_SWIPE_DOWN                  = 2
integer MODERO_GESTURE_TYPE_SWIPE_RIGHT                 = 3
integer MODERO_GESTURE_TYPE_SWIPE_LEFT                  = 4
integer MODERO_GESTURE_TYPE_CLOCKWISE_CIRCLE            = 5
integer MODERO_GESTURE_TYPE_COUNTER_CLOCKWISE_CIRCLE    = 6
integer MODERO_GESTURE_TYPE_DOUBLE_TAP                  = 7
integer MODERO_GESTURE_TYPE_2_FINGER_SWIPE_UP           = 9
integer MODERO_GESTURE_TYPE_2_FINGER_SWIPE_DOWN         = 10
integer MODERO_GESTURE_TYPE_2_FINGER_SWIPE_RIGHT        = 11
integer MODERO_GESTURE_TYPE_2_FINGER_SWIPE_LEFT         = 12

// Gesture simple velocity's
integer MODERO_GESTURE_VELOCITY_FAST    = 1
integer MODERO_GESTURE_VELOCITY_NORMAL  = 2
integer MODERO_GESTURE_VELOCITY_SLOW    = 3
// Gesture notification options
char MODERO_GESTURE_NOTIFICATIONS_ENABLE[]  = 'ON'
char MODERO_GESTURE_NOTIFICATIONS_DISABLE[] = 'OFF'

// SIP parameters
char MODERO_SIP_AUTO_ANSWER[]       = 'AUTOANSWER'
char MODERO_SIP_CALL[]              = 'CALL'
char MODERO_SIP_DECLINE[]           = 'DECLINE'
char MODERO_SIP_INCOMING[]          = 'INCOMING'
char MODERO_SIP_LINESTATE[]         = 'LINESTATE'
char MODERO_SIP_MSG_WAITING[]       = 'MSGWAITING'
char MODERO_SIP_PRIVACY[]           = 'PRIVACY'
char MODERO_SIP_REDIAL[]            = 'REDIAL'
char MODERO_SIP_TRANSFERRED[]       = 'TRANSFERRED'
char MODERO_SIP_ANSWER[]            = 'ANSWER'
char MODERO_SIP_DTMF[]              = 'DTMF'
char MODERO_SIP_HANGUP[]            = 'HANGUP'
char MODERO_SIP_HOLD[]              = 'HOLD'
char MODERO_SIP_TRANSFER[]          = 'TRANSFER'
char MODERO_SIP_SETUP_DOMAIN[]      = 'SETUP-DOMAIN'
char MODERO_SIP_SETUP_ENABLE[]      = 'SETUP-ENABLE'
char MODERO_SIP_SETUP_PASSWORD[]    = 'SETUP-PASSWORD'
char MODERO_SIP_SETUP_PORT[]        = 'SETUP-PORT'
char MODERO_SIP_SETUP_PROXYADDR[]   = 'PROXYADDR'
char MODERO_SIP_SETUP_STUNADDR[]    = 'STUNADDR'
char MODERO_SIP_SETUP_USERNAME[]    = 'USERNAME'

// SIP auto-answer states

char MODERO_SIP_AUTO_ANSWER_ON[]    = '1'
char MODERO_SIP_AUTO_ANSWER_OFF[]   = '0'

// SIP price states
char MODERO_SIP_PRIVACY_ENABLE[]    = '1'
char MODERO_SIP_PRIVACY_DISABLE[]   = '0'

// DTMF codes
char MODERO_SIP_DTMF_0[]        = '0'
char MODERO_SIP_DTMF_1[]        = '1'
char MODERO_SIP_DTMF_2[]        = '2'
char MODERO_SIP_DTMF_3[]        = '3'
char MODERO_SIP_DTMF_4[]        = '4'
char MODERO_SIP_DTMF_5[]        = '5'
char MODERO_SIP_DTMF_6[]        = '6'
char MODERO_SIP_DTMF_7[]        = '7'
char MODERO_SIP_DTMF_8[]        = '8'
char MODERO_SIP_DTMF_9[]        = '9'
char MODERO_SIP_DTMF_POUND[]    = 'POUND'
char MODERO_SIP_DTMF_ASTERISK[] = 'ASTERISK'

// Intercom modes
char MODERO_INTERCOM_MODE_LISTEN[]      = '0'
char MODERO_INTERCOM_MODE_TALK[]        = '1'
char MODERO_INTERCOM_MODE_HANDSFREE[]   = '2'

// Intercom
char MODERO_INTERCOM_LISTEN[]           = 'LISTEN'
char MODERO_INTERCOM_MIC_LEVEL[]        = 'MICLEVEL'
char MODERO_INTERCOM_MUTE_MIC[]         = 'MUTEMIC'
char MODERO_INTERCOM_SPEAKER_LEVEL[]    = 'SPEAKERLEVEL'
char MODERO_INTERCOM_TALK[]             = 'TALK'

// Intercom mute options
char MODERO_INTERCOM_MUTE_ENABLE[]  = '1'
char MODERO_INTERCOM_MUTE_DISABLE[] = '0'

// Opacity levels
integer MODERO_OPACITY_OPAQUE       = 255
integer MODERO_OPACITY_INVISIBLE    = 0

// Resource Embedded Codes
char MODERO_EMBEDDED_CODE_RESOURCE_PARAMETER_PROTOCOL[]     = '%P'
char MODERO_EMBEDDED_CODE_RESOURCE_PARAMETER_USER[]         = '%U'
char MODERO_EMBEDDED_CODE_RESOURCE_PARAMETER_PASSWORD[]     = '%S'
char MODERO_EMBEDDED_CODE_RESOURCE_PARAMETER_HOST[]         = '%H'
char MODERO_EMBEDDED_CODE_RESOURCE_PARAMETER_PATH[]         = '%A'
char MODERO_EMBEDDED_CODE_RESOURCE_PARAMETER_FILE[]         = '%F'
char MODERO_EMBEDDED_CODE_RESOURCE_PARAMETER_REFRESH[]      = '%R'
char MODERO_EMBEDDED_CODE_RESOURCE_PARAMETER_NEWEST[]       = '%N'
char MODERO_EMBEDDED_CODE_RESOURCE_PARAMETER_PRESERVE[]     = '%V'
char MODERO_EMBEDDED_CODE_RESOURCE_PARAMETER_DYNAMO[]       = '%D'
char MODERO_EMBEDDED_CODE_RESOURCE_PARAMETER_NOTIFICATION[] = '%C'

// Resource Parameter values
char MODERO_RESOURCE_PARAMETER_VALUE_PROTOCOL_HTTP[]                = '0'
char MODERO_RESOURCE_PARAMETER_VALUE_PROTOCOL_FTP[]                 = '1'
char MODERO_RESOURCE_PARAMETER_VALUE_NEWEST_DOWNLOAD_ALL[]          = '0'
char MODERO_RESOURCE_PARAMETER_VALUE_NEWEST_DOWNLOAD_MOST_RECENT[]  = '1'
char MODERO_RESOURCE_PARAMETER_VALUE_PRESERVE_RELOAD_ON_VIEW[]      = '0'
char MODERO_RESOURCE_PARAMETER_VALUE_PRESERVE_CACHE[]               = '1'
char MODERO_RESOURCE_PARAMETER_VALUE_NOTIFICATION_ON[]              = 'on'
char MODERO_RESOURCE_PARAMETER_VALUE_NOTIFICATION_OFF[]             = 'off'
char MODERO_RESOURCE_PARAMETER_VALUE_NOTIFICATION_ONCE[]            = 'once'

// Resource notification options
char MODERO_RESOURCE_NOTIFICATION_ON[]      = 'on'
char MODERO_RESOURCE_NOTIFICATION_OFF[]     = 'off'
char MODERO_RESOURCE_NOTIFICATION_ONCE[]    = 'once'

// Virtual keystrokes
char MODERO_KEYSTROKE_BACKSPACE[]       = {$08}
char MODERO_KEYSTROKE_ENTER[]           = {$0D}
char MODERO_KEYSTROKE_ESC[]             = {$27}
char MODERO_KEYSTROKE_CTRL_PRESS[]      = {$80}
char MODERO_KEYSTROKE_ALT_PRESS[]       = {$81}
char MODERO_KEYSTROKE_SHIFT_PRESS[]     = {$82}
char MODERO_KEYSTROKE_F1[]              = {$83}
char MODERO_KEYSTROKE_F2[]              = {$84}
char MODERO_KEYSTROKE_F3[]              = {$85}
char MODERO_KEYSTROKE_F4[]              = {$86}
char MODERO_KEYSTROKE_F5[]              = {$87}
char MODERO_KEYSTROKE_F6[]              = {$88}
char MODERO_KEYSTROKE_F7[]              = {$89}
char MODERO_KEYSTROKE_F8[]              = {$8A}
char MODERO_KEYSTROKE_F9[]              = {$8B}
char MODERO_KEYSTROKE_F10[]             = {$8C}
char MODERO_KEYSTROKE_F11[]             = {$8D}
char MODERO_KEYSTROKE_F12[]             = {$8E}
char MODERO_KEYSTROKE_NUM_LOCK[]        = {$8F}
char MODERO_KEYSTROKE_CAPS_LOCK[]       = {$90}
char MODERO_KEYSTROKE_INSERT[]          = {$91}
char MODERO_KEYSTROKE_DELETE[]          = {$92}
char MODERO_KEYSTROKE_HOME[]            = {$93}
char MODERO_KEYSTROKE_END[]             = {$94}
char MODERO_KEYSTROKE_PAGE_UP[]         = {$95}
char MODERO_KEYSTROKE_PAGE_DOWN[]       = {$96}
char MODERO_KEYSTROKE_SCROLL_LOCK[]     = {$97}
char MODERO_KEYSTROKE_PAUSE[]           = {$98}
char MODERO_KEYSTROKE_BREAK[]           = {$99}
char MODERO_KEYSTROKE_PRINT_SCREEN[]    = {$9A}
char MODERO_KEYSTROKE_SYSRQ[]           = {$9B}
char MODERO_KEYSTROKE_TAB[]             = {$9C}
char MODERO_KEYSTROKE_WINDOWS[]         = {$9D}
char MODERO_KEYSTROKE_MENU[]            = {$9E}
char MODERO_KEYSTROKE_UP_ARROW[]        = {$9F}
char MODERO_KEYSTROKE_DOWN_ARROW[]      = {$A0}
char MODERO_KEYSTROKE_LEFT_ARROW[]      = {$A1}
char MODERO_KEYSTROKE_RIGHT_ARROW[]     = {$A2}
char MODERO_KEYSTROKE_CTRL_RELEASE[]    = {$C0}
char MODERO_KEYSTROKE_ALT_RELEASE[]     = {$C1}
char MODERO_KEYSTROKE_SHIFT_RELEASE[]   = {$C2}

// Word wrap status
integer MODERO_WORD_WRAP_ENABLE     = 1
integer MODERO_WORD_WRAP_DISABLE    = 0

// Mute status
integer MODERO_MUTE_ENABLE  = 1
integer MODERO_MUTE_DISABLE = 0

// Subpage execute push on release states
char MODERO_SUBPAGE_EXECUTE_PUSH_ON_RELEASE_ENABLE[]    = '1'
char MODERO_SUBPAGE_EXECUTE_PUSH_ON_RELEASE_DISABLE[]   = '0'

// Subpage dynamic reordering states
char MODERO_SUBPAGE_DYNAMIC_REORDERING_ENABLE[]     = 'on'
char MODERO_SUBPAGE_DYNAMIC_REORDERING_DISABLE[]    = 'off'

// Streaming values
char MODERO_STREAMING_CAMERA_URL[]              = 'cam://local'
char MODERO_STREAMING_DEVICE_MULTI_PREVIEW[]    = '1'
char MODERO_STREAMING_STOP[]                    = 'stop'

// Streaming notification flags
integer MODERO_STREAMING_NOTIFY_FLAG_START  = 1
integer MODERO_STREAMING_NOTIFY_FLAG_STOP   = 2
integer MODERO_STREAMING_NOTIFY_FLAG_ERROR  = 8

// Bluetooth handset status
integer MODERO_BLUETOOTH_ANSWER         = 1
integer MODERO_BLUETOOTH_REJECT_HANGUP  = 2
integer MODERO_BLUETOOTH_REDIAL         = 4

// Resource Escape Sequences
/*
 * The ^RAF and ^RMF commands support the replacement of any special escape
 * sequences in the filename (specified by the %F embedded code) with the
 * corresponding data obtained from the system.
 *
 * For instance, http://www.amx.com/img.asp?device=$DV
 * would become
 * http://www.amx.com/img.asp?device=10001.
 */
char MODERO_RESOURCE_ESCAPE_SEQUENCE_DEVICE_NUMBER[]    = '$DV'
char MODERO_RESOURCE_ESCAPE_SEQUENCE_SYSTEM_NUMBER[]    = '$SY'
char MODERO_RESOURCE_ESCAPE_SEQUENCE_IP_ADDRESS[]       = '$IP'
char MODERO_RESOURCE_ESCAPE_SEQUENCE_HOSTNAME[]         = '$HN'
char MODERO_RESOURCE_ESCAPE_SEQUENCE_MAC_ADDRESS[]      = '$MC'
char MODERO_RESOURCE_ESCAPE_SEQUENCE_NEURON_ID[]        = '$ID'
char MODERO_RESOURCE_ESCAPE_SEQUENCE_PANEL_WIDTH[]      = '$PX'
char MODERO_RESOURCE_ESCAPE_SEQUENCE_PANEL_HEIGHT[]     = '$PY'
char MODERO_RESOURCE_ESCAPE_SEQUENCE_CURRENT_STATE[]    = '$ST'
char MODERO_RESOURCE_ESCAPE_SEQUENCE_ADDRESS_CODE[]     = '$AC'
char MODERO_RESOURCE_ESCAPE_SEQUENCE_ADDRESS_PORT[]     = '$AP'
char MODERO_RESOURCE_ESCAPE_SEQUENCE_CHANNEL_CODE[]     = '$CC'
char MODERO_RESOURCE_ESCAPE_SEQUENCE_CHANNEL_PORT[]     = '$CP'
char MODERO_RESOURCE_ESCAPE_SEQUENCE_LEVEL_CODE[]       = '$LC'
char MODERO_RESOURCE_ESCAPE_SEQUENCE_LEVEL_PORT[]       = '$LP'
char MODERO_RESOURCE_ESCAPE_SEQUENCE_BUTTON_WIDTH[]     = '$BX'
char MODERO_RESOURCE_ESCAPE_SEQUENCE_BUTTON_HEIGHT[]    = '$BY'
char MODERO_RESOURCE_ESCAPE_SEQUENCE_BUTTON_NAME[]      = '$BN'

// Input Mask Rules
char MODERO_INPUT_MASK_RULE_DIGIT[]                                     = '0'
char MODERO_INPUT_MASK_RULE_DIGIT_OR_SPACE[]                            = '9'
char MODERO_INPUT_MASK_RULE_DIGIT_OR_SPACE_SIGN_ALLOWED[]               = '#'
char MODERO_INPUT_MASK_RULE_LETTER_A_TO_Z_ENTRY_REQUIRED[]              = 'L'
char MODERO_INPUT_MASK_RULE_LETTER_A_TO_Z_ENTRY_OPTIONAL[]              = '?'
char MODERO_INPUT_MASK_RULE_LETTER_OR_DIGIT_ENTRY_REQUIRED[]            = 'A'
char MODERO_INPUT_MASK_RULE_LETTER_OR_DIGIT_ENTRY_OPTIONAL[]            = 'a'
char MODERO_INPUT_MASK_RULE_ANY_CHARACTER_OR_A_SPACE_ENTRY_REQUIRED[]   = '&'
char MODERO_INPUT_MASK_RULE_ANY_CHARACTER_OR_A_SPACE_ENTRY_OPTIONAL[]   = 'C'

// Input Mask Range
char MODERO_INPUT_MASK_RANGE_START[]        = '['
char MODERO_INPUT_MASK_RANGE_END[]          = ']'
char MODERO_INPUT_MASK_RANGE_SEPERATOR[]    = '|'

// Input Mask Field
char MODERO_INPUT_MASK_FIELD_START[]    = '{'
char MODERO_INPUT_MASK_FIELD_END[]      = '}'

// Input Mask Operation
char MODERO_INPUT_MASK_OPERATION_LOWERCASE[]        = '<'
char MODERO_INPUT_MASK_OPERATION_UPPERCASE[]        = '>'
char MODERO_INPUT_MASK_OPERATION_OVERFLOW_FLAG[]    = '^'

// Multi-Preview Command Parameters
char MODERO_MULTI_PREVIEW_VIDEO_MODE[]                  = 'videomode='
char MODERO_MULTI_PREVIEW_REBOOT_FIRMWARE_CURRENT[]     = 'current'
char MODERO_MULTI_PREVIEW_REBOOT_FIRMWARE_PREVIOUS[]    = 'previous'
char MODERO_MULTI_PREVIEW_REBOOT_FIRMWARE_FACTORY[]     = 'factory'
char MODERO_MULTI_PREVIEW_STREAM_VIDEO_ONLY[]           = 'audiovideoenable=video'
char MODERO_MULTI_PREVIEW_STREAM_VIDEO_AND_AUDIO[]      = 'audiovideoenable=both'
char MODERO_MULTI_PREVIEW_VIDEO_INPUT_ENABLE[]          = 'videoinput=on'
char MODERO_MULTI_PREVIEW_VIDEO_INPUT_DISABLE[]         = 'videoinput=off'

// MXA-MP/MPL HDMI Input Formats
char MODERO_MULTI_PREVIEW_INPUT_FORMAT_HDMI[]       = 'hdmi'
char MODERO_MULTI_PREVIEW_INPUT_FORMAT_DVI[]        = 'dvi'
char MODERO_MULTI_PREVIEW_INPUT_FORMAT_VGA[]        = 'vga'
char MODERO_MULTI_PREVIEW_INPUT_FORMAT_SVGA[]       = 'svga'
char MODERO_MULTI_PREVIEW_INPUT_FORMAT_XGA[]        = 'xga'
char MODERO_MULTI_PREVIEW_INPUT_FORMAT_WXGA[]       = 'wxga'
char MODERO_MULTI_PREVIEW_INPUT_FORMAT_COMPONENT[]  = 'component'
char MODERO_MULTI_PREVIEW_INPUT_FORMAT_SVIDEO[]     = 'svideo'
char MODERO_MULTI_PREVIEW_INPUT_FORMAT_COMPOSITE[]  = 'composite'

// MXA-MP/MPL HDMI Input Resolutions
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_HDMI_640x480p30HZ[]      = '640x480p@30'     // can configure MPL to this format/res but not supported
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_HDMI_800x600p30HZ[]      = '800x600p@30'     // can configure MPL to this format/res but not supported
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_HDMI_720x480i30HZ[]      = '720x480i@30'     // can configure MPL to this format/res but not supported
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_HDMI_720x480p30HZ[]      = '720x480p@30'     // can configure MPL to this format/res but not supported
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_HDMI_720x576i30HZ[]      = '720x576i@30'     // can configure MPL to this format/res but not supported
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_HDMI_720x576i50HZ[]      = '720x576i@50'     // can configure MPL to this format/res but not supported
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_HDMI_720x576p25HZ[]      = '720x576p@25'     // can configure MPL to this format/res but not supported
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_HDMI_720x576p50HZ[]      = '720x576p@50'     // can configure MPL to this format/res but not supported
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_HDMI_1024x768p30HZ[]     = '1024x768p@30'
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_HDMI_1280x720p30HZ[]     = '1280x720p@30'    // can configure MPL to this format/res but not supported - works so left uncommented
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_HDMI_1280x768p30HZ[]   = '1280x768p@30'    // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_HDMI_1920x1080p30HZ[]  = '1920x1080p@30'   // can configure MPL to this format/res but not supported

// MXA-MP/MPL DVI Input Resolutions
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_DVI_640x480p30HZ[]       = '640x480p@30'
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_DVI_800x600p30HZ[]       = '800x600p@30'
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_DVI_720x480i30HZ[]       = '720x480i@30'
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_DVI_720x480p30HZ[]       = '720x480p@30'
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_DVI_720x576i30HZ[]       = '720x576i@30'
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_DVI_720x576i50HZ[]       = '720x576i@50'
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_DVI_720x576p25HZ[]       = '720x576p@25'
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_DVI_720x576p50HZ[]       = '720x576p@50'
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_DVI_1024x768p30HZ[]      = '1024x768p@30'
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_DVI_1280x720p30HZ[]      = '1280x720p@30'    // can configure MPL to this format/res but not supported - works so left uncommented
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_DVI_1280x768p30HZ[]    = '1280x768p@30'    // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_DVI_1920x1080p30HZ[]   = '1920x1080p@30'   // can configure MPL to this format/res but not supported

// MXA-MP/MPL VGA Input Resolutions
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_VGA_640x480p30HZ[]       = '640x480p@30'
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_VGA_800x600p30HZ[]     = '800x600p@30'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_VGA_720x480i30HZ[]     = '720x480i@30'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_VGA_720x480p30HZ[]     = '720x480p@30'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_VGA_720x576i30HZ[]     = '720x576i@30'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_VGA_720x576i50HZ[]     = '720x576i@50'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_VGA_720x576p25HZ[]     = '720x576p@25'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_VGA_720x576p50HZ[]     = '720x576p@50'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_VGA_1024x768p30HZ[]    = '1024x768p@30'    // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_VGA_1280x720p30HZ[]    = '1280x720p@30'    // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_VGA_1280x768p30HZ[]    = '1280x768p@30'    // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_VGA_1920x1080p30HZ[]   = '1920x1080p@30'   // can configure MPL to this format/res but not supported

// MXA-MP/MPL SVGA Input Resolutions
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_SVGA_640x480p30HZ[]    = '640x480p@30'     // can configure MPL to this format/res but not supported
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_SVGA_800x600p30HZ[]      = '800x600p@30'
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_SVGA_720x480i30HZ[]    = '720x480i@30'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_SVGA_720x480p30HZ[]    = '720x480p@30'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_SVGA_720x576i30HZ[]    = '720x576i@30'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_SVGA_720x576i50HZ[]    = '720x576i@50'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_SVGA_720x576p25HZ[]    = '720x576p@25'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_SVGA_720x576p50HZ[]    = '720x576p@50'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_SVGA_1024x768p30HZ[]   = '1024x768p@30'    // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_SVGA_1280x720p30HZ[]   = '1280x720p@30'    // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_SVGA_1280x768p30HZ[]   = '1280x768p@30'    // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_SVGA_1920x1080p30HZ[]  = '1920x1080p@30'   // can configure MPL to this format/res but not supported

// MXA-MP/MPL XGA Input Resolutions
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_XGA_640x480p30HZ[]     = '640x480p@30'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_XGA_800x600p30HZ[]     = '800x600p@30'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_XGA_720x480i30HZ[]     = '720x480i@30'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_XGA_720x480p30HZ[]     = '720x480p@30'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_XGA_720x576i30HZ[]     = '720x576i@30'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_XGA_720x576i50HZ[]     = '720x576i@50'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_XGA_720x576p25HZ[]     = '720x576p@25'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_XGA_720x576p50HZ[]     = '720x576p@50'     // can configure MPL to this format/res but not supported
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_XGA_1024x768p30HZ[]      = '1024x768p@30'
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_XGA_1280x720p30HZ[]    = '1280x720p@30'    // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_XGA_1280x768p30HZ[]    = '1280x768p@30'    // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_XGA_1920x1080p30HZ[]   = '1920x1080p@30'   // can configure MPL to this format/res but not supported

// MXA-MP/MPL WXGA Input Resolutions
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_WXGA_640x480p30HZ[]    = '640x480p@30'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_WXGA_800x600p30HZ[]    = '800x600p@30'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_WXGA_720x480i30HZ[]    = '720x480i@30'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_WXGA_720x480p30HZ[]    = '720x480p@30'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_WXGA_720x576i30HZ[]    = '720x576i@30'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_WXGA_720x576i50HZ[]    = '720x576i@50'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_WXGA_720x576p25HZ[]    = '720x576p@25'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_WXGA_720x576p50HZ[]    = '720x576p@50'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_WXGA_1024x768p30HZ[]   = '1024x768p@30'    // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_WXGA_1280x720p30HZ[]   = '1280x720p@30'    // can configure MPL to this format/res but not supported
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_WXGA_1280x768p30HZ[]     = '1280x768p@30'
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_WXGA_1920x1080p30HZ[]  = '1920x1080p@30'   // can configure MPL to this format/res but not supported

// MXA-MP/MPL Component Input Resolutions
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_COMPONENT_640x480p30HZ[]   = '640x480p@30'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_COMPONENT_800x600p30HZ[]   = '800x600p@30'     // can configure MPL to this format/res but not supported
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_COMPONENT_720X480i30HZ[]     = '720x480i@30'
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_COMPONENT_720X480p30HZ[]     = '720x480p@30'
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_COMPONENT_720X576i30HZ[]     = '720x576i@30'
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_COMPONENT_720x576i50HZ[]   = '720x576i@50'     // can configure MPL to this format/res but not supported
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_COMPONENT_720x576p25HZ[]     = '720x576p@25'
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_COMPONENT_720x576p50HZ[]   = '720x576p@50'     // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_COMPONENT_1024x768p30HZ[]  = '1024x768p@30'    // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_COMPONENT_1280x720p30HZ[]  = '1280x720p@30'    // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_COMPONENT_1280x768p30HZ[]  = '1280x768p@30'    // can configure MPL to this format/res but not supported
//char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_COMPONENT_1920x1080p30HZ[] = '1920x1080p@30'   // can configure MPL to this format/res but not supported

// MXA-MP/MPL SVideo Input Resolutions
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_SVIDEO_NTSC[]        = 'ntsc'        // doesn't work - why not? Need to ask Eric. Where is the doco saying this will work?
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_SVIDEO_PAL_M[]       = 'pal-m'       // doesn't work - why not? Need to ask Eric. Where is the doco saying this will work?
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_SVIDEO_PAL_BHID[]    = 'pal-bghid'   // sending '^SLT-1,videomode=svideo,<anything>' sets the MPL to S-Video format with pal-bghid resolution

// MXA-MP/MPL Composite Input Resolutions
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_COMPOSITE_NTSC[]     = 'ntsc'        // doesn't work - why not? Need to ask Eric. Where is the doco saying this will work?
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_COMPOSITE_PAL_M[]    = 'pal-m'       // doesn't work - why not? Need to ask Eric. Where is the doco saying this will work?
char MODERO_MULTI_PREVIEW_INPUT_RESOLUTION_COMPOSITE_PAL_BHID[] = 'pal-bghid'   // sending '^SLT-1,videomode=composite,<anything>' sets the MPL to Composite format with pal-bghid resolution

// Smart Card insert/remove
integer MODERO_SMART_CARD_REMOVE    = 0
integer MODERO_SMART_CARD_INSERT    = 1

// Smart Card Reader insert/remove
integer MODERO_SMART_CARD_READER_REMOVE = 0
integer MODERO_SMART_CARD_READER_INSERT = 1

// LED colours
char MODERO_LED_COLOUR_RED[]    = '0'
char MODERO_LED_COLOUR_GREEN[]  = '2'

// LED states
char MODERO_LED_STATE_OFF[] = '0'
char MODERO_LED_STATE_ON[]  = '1'

// Custom event id's
integer MODERO_CUSTOM_EVENT_ID_GESTURE                          = 600
integer MODERO_CUSTOM_EVENT_ID_NFC_READ_TAG                     = 700
integer MODERO_CUSTOM_EVENT_ID_SMART_CARD_INSERT_REMOVE         = 710
integer MODERO_CUSTOM_EVENT_ID_SMART_CARD_READER_INSERT_REMOVE  = 711
integer MODERO_CUSTOM_EVENT_ID_STREAMING_VIDEO                  = 768
integer MODERO_CUSTOM_EVENT_ID_MULTI_PREVIEW_QUERY_RESPONSE     = 770
integer MODERO_CUSTOM_EVENT_ID_BLUETOOTH_HANDSET                = 790
integer MODERO_CUSTOM_EVENT_ID_BUTTON_TEXT                      = 1001
integer MODERO_CUSTOM_EVENT_ID_BUTTON_BITMAP_NAME               = 1002
integer MODERO_CUSTOM_EVENT_ID_BUTTON_ICON_INDEX                = 1003
integer MODERO_CUSTOM_EVENT_ID_BUTTON_TEXT_JUSTIFICATION        = 1004
integer MODERO_CUSTOM_EVENT_ID_BUTTON_BITMAP_JUSTIFICATION      = 1005
integer MODERO_CUSTOM_EVENT_ID_BUTTON_ICON_JUSTIFICATION        = 1006
integer MODERO_CUSTOM_EVENT_ID_BUTTON_FONT_INDEX                = 1007
integer MODERO_CUSTOM_EVENT_ID_BUTTON_TEXT_EFFECT_NAME          = 1008
integer MODERO_CUSTOM_EVENT_ID_BUTTON_TEXT_EFFECT_COLOUR        = 1009
integer MODERO_CUSTOM_EVENT_ID_BUTTON_WORD_WRAP                 = 1010
integer MODERO_CUSTOM_EVENT_ID_BUTTON_BORDER_COLOUR             = 1011
integer MODERO_CUSTOM_EVENT_ID_BUTTON_FILL_COLOUR               = 1012
integer MODERO_CUSTOM_EVENT_ID_BUTTON_TEXT_COLOUR               = 1013
integer MODERO_CUSTOM_EVENT_ID_BUTTON_BORDER_NAME               = 1014
integer MODERO_CUSTOM_EVENT_ID_BUTTON_OPACITY                   = 1015
integer MODERO_CUSTOM_EVENT_ID_AUDIO_MUTE_STATUS                = 1305
integer MODERO_CUSTOM_EVENT_ID_AUDIO_VOLUME                     = 1306
integer MODERO_CUSTOM_EVENT_ID_POPUP_LOCATION                   = 1323
integer MODERO_CUSTOM_EVENT_ID_POPUP_SIZE                       = 1324
integer MODERO_CUSTOM_EVENT_ID_AUDIO_DEVICE                     = 1325
integer MODERO_CUSTOM_EVENT_ID_RESOURCE_LOAD_NOTIFICATION       = 1400
integer MODERO_CUSTOM_EVENT_ID_SUBPAGE_ANCHOR_NOTIFICATION      = 32001
integer MODERO_CUSTOM_EVENT_ID_SUBPAGE_ONSCREEN_NOTIFICATION    = 32002
integer MODERO_CUSTOM_EVENT_ID_SUBPAGE_OFFSCREEN_NOTIFICATION   = 32003
integer MODERO_CUSTOM_EVENT_ID_SUBPAGE_REORDER_NOTIFICATION     = 32004
integer MODERO_CUSTOM_EVENT_ID_SUBPAGE_DISABLE                  = 0


#end_if