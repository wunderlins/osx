//
//  main.c
//  cmd
//
//  Created by Simon Wunderlin on 28/08/14.
//  Copyright (c) 2014 ___HACKERSINC___. All rights reserved.
//

#include <CoreFoundation/CoreFoundation.h>

int main(int argc, const char * argv[])
{
	/*
	//@autoreleasepool {
		Car *honda = [[Car alloc] init];
		[honda startEngine];
		NSLog(@"Running: %d", honda.running);
		honda.running = NO;
	//}
	*/
	
	printf("Hello C\n");
	// insert code here...
	CFShow(CFSTR("Hello, World!\n"));
		
	return 0;
}

