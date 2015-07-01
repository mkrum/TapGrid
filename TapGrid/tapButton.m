//
//  tapButton.m
//  TapGrid
//
//  Created by Michael Krumdick on 6/30/15.
//  Copyright (c) 2015 apptrocious. All rights reserved.
//

#import "tapButton.h"

@implementation tapButton

-(void)set: (int)number{
    
    [self setTitle:[NSString stringWithFormat:@"%d", number] forState:UIControlStateNormal];
    
}

@end
