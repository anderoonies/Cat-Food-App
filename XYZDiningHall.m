//
//  XYZDiningHall.m
//  Cat Food App
//
//  Created by Andy Bayer on 7/29/14.
//  Copyright (c) 2014 Andy Bayer. All rights reserved.
//

#import "XYZDiningHall.h"

@implementation XYZDiningHall

-(BOOL)getIsOpen
{
    BOOL isOpen = '\0';
    int day = [self getDay];
    int minutes = [self getMinutes];
    
    for (int i=0; i<(int)[[_hours objectAtIndex:day]count]; i++) {
        NSNumber *open = _hours[day][i][0];
        NSNumber *close = _hours[day][i][1];
        
        if ((minutes>=open.intValue)&&(minutes<=close.intValue))
        {
            self.newWidth=(float)(close.intValue-minutes)/120;
            if (self.newWidth<.16)
            {
                self.backgroundColor = [UIColor colorWithRed:(255/255) green:(226/250) blue:(9/255) alpha:0];
            }
        }
        else
            isOpen = false;
            self.newWidth=0;
    }
    return isOpen;
}


- (int)getMinutes
{
    NSDate *date = [[NSDate alloc] init];
    NSCalendar *gregorian = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSGregorianCalendar];
    unsigned unitFlags =  NSHourCalendarUnit | NSMinuteCalendarUnit;
    NSDateComponents *components = [gregorian components:unitFlags fromDate:date];
    
    return 60 * [components hour] + [components minute];
}

- (int)getDay
{
    NSDate *today = [NSDate date];
    NSCalendar *gregorian = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *weekdayComponents =
    [gregorian components:(NSDayCalendarUnit | NSWeekdayCalendarUnit) fromDate:today];
    return [weekdayComponents weekday];;
}

@end

