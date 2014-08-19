//
//  AppDelegate.m
//  combobox
//
//  Created by Simon Wunderlin on 16/08/14.
//  Copyright (c) 2014 ___HACKERSINC___. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (NSString *)getOption:(NSString *)search :(NSArray*)arguments
{
    NSString *result = @"";
    unsigned long arglen = arguments.count;

    NSInteger number = [arguments indexOfObject:search];
    if (number == NSNotFound) {
        number = -1;
        return NULL;
    }
    NSLog(@"opt pos: %ld", (long)number);
    
    if (number+1 > arglen) {
        NSLog(@"Error, argument out of range, aborting.");
        exit(254);
    }

    if (number+1 > arglen) {
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
    
    NSString *options = NULL;
    NSString *delimiter = NULL;
    
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
    
    options = [self getOption:@"--options" :arguments];
    delimiter = [self getOption:@"--delimiter" :arguments];
    
    NSLog(@"options:   %@", options);
    NSLog(@"delimiter: %@", delimiter);
    if (arguments == NULL || delimiter == NULL){
        NSLog(@"Argument error.");
        exit(1);
    }
    
    
    
    NSArray *lines = [options componentsSeparatedByString:delimiter];
    for (NSString *l in lines) // fast enumeration
    {
        NSLog(@"opt: %@", l);
    }
    
    [self.combobox addItemsWithObjectValues:lines];
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
}
@end
