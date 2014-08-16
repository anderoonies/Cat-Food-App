//
//  XYZTimeUtilities.m
//  Cat Food App
//
//  Created by Andy Bayer on 8/1/14.
//  Copyright (c) 2014 Andy Bayer. All rights reserved.
//

#import "XYZTimeUtilities.h"

@implementation XYZTimeUtilities

-(id)init
{
    if (self = [super init])
    {
        NSDate *date = [[NSDate alloc] init];
        NSCalendar *gregorian = [[NSCalendar alloc]
                                 initWithCalendarIdentifier:NSGregorianCalendar];
        unsigned unitFlags =  NSHourCalendarUnit | NSMinuteCalendarUnit | NSWeekdayCalendarUnit;
        NSDateComponents *components = [gregorian components:unitFlags fromDate:date];
        
        self.minutes= 60 * [components hour] + [components minute];
        self.day=[components weekday]-1;
    }
    
    
    
    return self;
}


@end
