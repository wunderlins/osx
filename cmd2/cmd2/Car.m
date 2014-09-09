//
//  Car.m
//  cmd2
//
//  Created by Simon Wunderlin on 03/09/14.
//  Copyright (c) 2014 ___HACKERSINC___. All rights reserved.
//

#import "Car.h"

@implementation Car

@synthesize running = _running;    // Optional for Xcode 4.4+

- (void)startEngine {
	NSLog(@"Vrooom");
	_running = YES;
}
- (void)stopEngine {
	_running = NO;
}

- (void)signalStop {
	NSLog(@"Bending left arm downwards");
}

- (void)signalLeftTurn {
	NSLog(@"Extending left arm outwards");
}

- (void)signalRightTurn {
	NSLog(@"Bending left arm upwards");
}

@end
