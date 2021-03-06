//
//  Car.h
//  cmd2
//
//  Created by Simon Wunderlin on 03/09/14.
//  Copyright (c) 2014 ___HACKERSINC___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StreetLegal.h"

@interface Car : NSObject <StreetLegal>

@property (getter=isRunning, readonly) BOOL running;

- (void)startEngine;
- (void)stopEngine;

@end
