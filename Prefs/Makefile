ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = AppearanceSelectionTableCellDemoPrefs

AppearanceSelectionTableCellDemoPrefs_FILES = ASTRootListController.m $(wildcard libappearancecell/AppearanceCell/*.m)
AppearanceSelectionTableCellDemoPrefs_FRAMEWORKS = UIKit
AppearanceSelectionTableCellDemoPrefs_PRIVATE_FRAMEWORKS = Preferences
AppearanceSelectionTableCellDemoPrefs_INSTALL_PATH = /Library/PreferenceBundles
AppearanceSelectionTableCellDemoPrefs_CFLAGS = -fobjc-arc -Wno-deprecated-declarations -Wno-implicit-function-declaration -Wno-int-conversion -Wno-unguarded-availability-new

include $(THEOS_MAKE_PATH)/bundle.mk
