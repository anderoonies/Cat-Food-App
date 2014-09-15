//
//  XYZDiningHall.m
//  Cat Food App
//
//  Created by Andy Bayer on 7/29/14.
//  Copyright (c) 2014 Andy Bayer. All rights reserved.
//

#import "XYZDiningHall.h"

@implementation XYZDiningHall

-(NSArray*)parseTimes
{
    XYZTimeUtilities *time = [[XYZTimeUtilities alloc]init];

    NSLog(@";) %@", [self.hours objectForKey:@"Monday"]);
    if (time.day==1) {
        self.todayHours=[self.hours objectForKey:@"Monday"];
    } else if (time.day==2){
        self.todayHours=[self.hours objectForKey:@"Tuesday"];
    } else if (time.day==3){
        self.todayHours=[self.hours objectForKey:@"Wednesday"];
    } else if (time.day==4){
        self.todayHours=[self.hours objectForKey:@"Thursday"];
    } else if (time.day==5){
        self.todayHours=[self.hours objectForKey:@"Friday"];
    } else if (time.day==6){
        self.todayHours=[self.hours objectForKey:@"Saturday"];
    } else
        self.todayHours=[self.hours objectForKey:@"Sunday"];
    
    NSLog(@"%@", self.todayHours);
    return self.todayHours;
}

-(BOOL)getIsOpen
{

    XYZTimeUtilities *time = [[XYZTimeUtilities alloc]init];
    self.todayHours=[self parseTimes];
    BOOL isOpen = false;
    for (int i=0; i<(int)[self.todayHours count]; i++) {
        NSNumber* open = self.todayHours[i][0];
        NSNumber* close = self.todayHours[i][1];
        
        if ((time.minutes>=open.intValue)&&(time.minutes<=close.intValue))
        {
            double ratio = (double)(close.intValue-time.minutes)/120;
            if (ratio>=1)
            {
                self.newWidth=1;
            }
            else
            {
                self.newWidth=ratio;
            }
            if (self.newWidth<.16)
            {
                self.backgroundColor = [UIColor colorWithRed:(255/255.0) green:(166/250.0) blue:(50/255.0) alpha:1];
            }
            
            self.timeLeft = [NSString stringWithFormat:@"%@ %@", @"closes at", [self toTime:close.intValue]];
            
            return isOpen=true;
        }
    }
    self.timeLeft = @"is closed for the day";
    self.newWidth=0;
    for (int i=0; i<(int)[self.todayHours count]; i++)
    {
        NSNumber* open = self.todayHours[i][0];
        if (time.minutes<open.intValue)
        {
            self.timeLeft = [NSString stringWithFormat:@"%@ %@", @"opens at", [self toTime:open.intValue]];
            return isOpen;
        }
    }
    return isOpen;
}


-(NSString*)toTime:(int)rawMinutes
{
    NSString* hours = [@((((rawMinutes/60)%24)%12)) stringValue];
    NSString* minutes = [@(rawMinutes%60) stringValue];
    if ([hours isEqual:@"0"]) {
        hours=@"12";
    }
    if ([minutes isEqual:@"0"]) {
        minutes=@"00";
    }
    
    NSString* time = [NSString stringWithFormat:@"%@:%@", hours, minutes];
    
    return time;
}



//- (int)getMinutes
//{
//    NSDate *date = [[NSDate alloc] init];
//    NSCalendar *gregorian = [[NSCalendar alloc]
//                             initWithCalendarIdentifier:NSGregorianCalendar];
//    unsigned unitFlags =  NSHourCalendarUnit | NSMinuteCalendarUnit;
//    NSDateComponents *components = [gregorian components:unitFlags fromDate:date];
//    
//    return 60 * [components hour] + [components minute];
//}
//
//- (int)getDay
//{
//    NSDate *today = [NSDate date];
//    NSCalendar *gregorian = [[NSCalendar alloc]
//                             initWithCalendarIdentifier:NSGregorianCalendar];
//    NSDateComponents *weekdayComponents =
//    [gregorian components:(NSDayCalendarUnit | NSWeekdayCalendarUnit) fromDate:today];
//    return [weekdayComponents weekday]-1;
//}

@end

