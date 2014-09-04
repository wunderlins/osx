//
//  main.m
//  cmd2
//
//  Created by Simon Wunderlin on 03/09/14.
//  Copyright (c) 2014 ___HACKERSINC___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Bicycle.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool {
		Bicycle *bike = [[Bicycle alloc] init];
		[bike startPedaling];
		[bike signalLeftTurn];
		[bike signalStop];
		[bike lockToStructure:nil];
	}
	
	/*
	@autoreleasepool {
	   
		Car *honda = [[Car alloc] init];
		[honda startEngine];
		NSLog(@"Running: %d", honda.running);
		//honda.running = NO;                      // Error: read-only property
	   
	}
	 */
	return 0;
}

