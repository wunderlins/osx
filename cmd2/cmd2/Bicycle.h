//
//  Bicycle.h
//  cmd2
//
//  Created by Simon Wunderlin on 04/09/14.
//  Copyright (c) 2014 ___HACKERSINC___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StreetLegal.h"

@interface Bicycle : NSObject <StreetLegal>

- (void)startPedaling;
- (void)removeFrontWheel;
- (void)lockToStructure:(id)theStructure;

@end
