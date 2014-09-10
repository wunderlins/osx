//
//  main.c
//  CFtest
//
//  Created by Simon Wunderlin on 09/09/14.
//  Copyright (c) 2014 ___HACKERSINC___. All rights reserved.
//

#include <CoreFoundation/CoreFoundation.h>

int main(int argc, const char * argv[])
{
	
	CFMutableStringRef hello = CFStringCreateMutable(NULL, 0);
	CFStringAppend(hello, CFSTR("Hello "));
	CFStringAppend(hello, CFSTR("World\n"));
	
	//CFString

	// insert code here...
	CFShow(hello);
	return 0;
}

