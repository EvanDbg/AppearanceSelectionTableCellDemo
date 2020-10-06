NSUserDefaults *defaults;
BOOL enabled;
int appearance;
int appearanceTint;

void ReloadPrefs() {
    defaults = [[NSUserDefaults alloc] initWithSuiteName:@"fun.yfyf.appearanceselectiontablecelldemo.prefs"];
    [defaults registerDefaults:@{ @"enabled" : @YES }];
    [defaults registerDefaults:@{ @"appearance" : @0 }];
    [defaults registerDefaults:@{ @"appearanceTint" : @0 }];
    
    enabled = [[defaults objectForKey:@"enabled"] boolValue];
    appearance = [[defaults objectForKey:@"appearance"] intValue];
    appearanceTint = [[defaults objectForKey:@"appearanceTint"] intValue];
}

%ctor {
    ReloadPrefs();
    CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)ReloadPrefs, CFSTR("fun.yfyf.appearanceselectiontablecelldemo/ReloadPreferences"), NULL, kNilOptions);

    %init;
}