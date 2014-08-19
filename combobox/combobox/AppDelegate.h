//
//  AppDelegate.h
//  combobox
//
//  Created by Simon Wunderlin on 16/08/14.
//  Copyright (c) 2014 ___HACKERSINC___. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>


@property (assign) IBOutlet NSWindow *window;

- (IBAction)cancel:(id)sender;
- (IBAction)ok:(id)sender;
@property (weak) IBOutlet NSComboBox *combobox;
@property (unsafe_unretained) IBOutlet NSWindow *mainWindow;

@end
