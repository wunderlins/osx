//
//  AppDelegate.m
//  combobox
//
//  Created by Simon Wunderlin on 16/08/14.
//  Copyright (c) 2014 ___HACKERSINC___. All rights reserved.
//

#import "AppDelegate.h"
#import "scriptLog.h"

@implementation AppDelegate

-(void) usage
{
    printf("Usage: combobox --options String --delimiter Char [--title String]\n");
}

- (NSString *)getOption:(NSString *)search :(NSArray*)arguments
{
    NSString *result = @"";
    unsigned long arglen = arguments.count;

    NSInteger number = [arguments indexOfObject:search];
    if (number == NSNotFound) {
        number = -1;
        return NULL;
    }
    //NSLog(@"opt pos: %ld", (long)number);
  
		// FIXME: do proper bounds checking with proper return value
    if (number+1 > arglen) {
        [self usage];
        NSLog(@"Error, argument out of range, aborting.");
        exit(254);
    }
    
    result = arguments[number+1];
    
    return result;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    NSArray *arguments = [[NSProcessInfo processInfo] arguments];
    
    NSString *opts = NULL;
    NSString *delimiter = NULL;
    NSString *title = NULL;
    
    /*
    // NSLog(@"Number of arguments: %lu", (unsigned long)arguments.count);
    unsigned long arglen = arguments.count;
    
    //NSNumber *number = [arguments valueForKey: @"--options"];
    NSInteger number = [arguments indexOfObject:@"--options"];
    if (index == NSNotFound) {
        number = -1;
    }
    NSLog(@"opt pos: %d", number);
    
    if (number+1 > arglen) {
        NSLog(@"Error, argument out of range, aborting.");
        exit(254);
    }
    
    options = arguments[number+1];
    NSLog(@"options from searched index: %@", options);
    */
    
    opts = [self getOption:@"--options" :arguments];
    delimiter = [self getOption:@"--delimiter" :arguments];
    title = [self getOption:@"--title" :arguments];
    
    //NSLog(@"options:   %@", options);
    //NSLog(@"delimiter: %@", delimiter);
    if (arguments == NULL || delimiter == NULL){
        NSLog(@"Argument error.");
        exit(1);
    }
    
    if (title == NULL)
        title = @"Select ...";
    
    [self.window setTitle:title];
    //self.mainWindow.setTitle(title);
    //[mainWindow setTitle:@"test string"];
    
    self.options = [opts componentsSeparatedByString:delimiter];
    /*
    for (NSString *l in lines) // fast enumeration
    {
        NSLog(@"opt: %@", l);
    }
    */
    
    [self.combobox addItemsWithObjectValues:self.options];
    //[comboSelect addItemsWithObjectValues:lines];
    
    /*
    NSString *found = NULL;
    for (NSString *arg in arguments) // fast enumeration
    {
        NSLog(@"--> arg: %@", arg);
        if (found != NULL) {
            if ([found isEqual: @"--options"]) {
                options = arg;
                //NSLog(@"options: %@", arg);
                found = NULL;
                continue;
            }
        }
        
        //NSLog(@"Arg: %@", arg);
        
        // remeber option
        if ([arg isEqual: @"--options"]) {
            found = arg;
            // NSLog(@"found: %@", arg);
        }
        
    }
    
    NSLog(@"options: %@", options);
    */
    
}

- (IBAction)cancel:(id)sender {
    printf("%d\n", (int) sender);
    exit(0);
}

- (IBAction)ok:(id)sender {
    // check which value is selected
    NSString *selected = [self.combobox stringValue];
    // NSLog(@"selected: %@", selected);
    
    printf("%s\n", [selected UTF8String]);
    exit(0);
}

- (NSArray*) opts { // scripting interface to get options
	return self.options;
}

- (NSNumber*) ready {
	
	/* output to the log */
	SLOG(@"returning application's ready property");
	
	/* return always ready */
	return [NSNumber numberWithBool:YES];
}
@end
