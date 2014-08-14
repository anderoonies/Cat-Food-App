//
//  XYZDiningHall.h
//  Cat Food App
//
//  Created by Andy Bayer on 7/29/14.
//  Copyright (c) 2014 Andy Bayer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XYZTimeUtilities.h"

@interface XYZDiningHall : UIImageView

@property NSString *name;
@property NSArray* hours;
@property double newWidth;
@property NSString* timeLeft;
@property BOOL isOpen;

-(BOOL)getIsOpen;
-(NSString*)toTime:(int)minutes;
//-(int)getMinutes;
//-(int)getDay;


@end
