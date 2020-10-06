ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AppearanceSelectionTableCellDemo

AppearanceSelectionTableCellDemo_FILES = Tweak.x
AppearanceSelectionTableCellDemo_CFLAGS = -fobjc-arc

SUBPROJECTS += Prefs

include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
