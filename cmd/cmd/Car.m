//
//  Car.m
//  cmd
//
//  Created by Simon Wunderlin on 03/09/14.
//  Copyright (c) 2014 ___HACKERSINC___. All rights reserved.
//

#import "Car.h"

@implementation Car

- (void)startEngine {
	_running = YES;
}
- (void)stopEngine {
	_running = NO;
}

@end
