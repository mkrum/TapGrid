//
//  tapButton.h
//  TapGrid
//
//  Created by Michael Krumdick on 6/30/15.
//  Copyright (c) 2015 apptrocious. All rights reserved.
//

#import <UIKit/UIKit.h>
#include <stdlib.h>

@interface tapButton : UIButton
@property NSNumber* number; //literally the number

-(void)set: (NSNumber*) number;
-(NSNumber*)getNumber;
-(void)increase: (NSNumber *) add;



@end
