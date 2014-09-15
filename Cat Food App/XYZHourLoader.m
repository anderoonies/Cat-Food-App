//
//  XYZHourLoader.m
//  Cat Food
//
//  Created by Andy Bayer on 9/15/14.
//  Copyright (c) 2014 Andy Bayer. All rights reserved.
//

#import "XYZHourLoader.h"

@implementation XYZHourLoader

-(void)loadMinutes{
    
    self.data=[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://github.com/anderoonies/Cat-Food-App/blob/master/Cat%20Food%20App/HoursArray.strings"]];
    NSError *error=nil;
    NSDictionary *response=[NSJSONSerialization JSONObjectWithData:_data options:NSJSONReadingMutableContainers error:&error];
    NSLog(@"%@",self.data);
    NSLog(@"%@",response);
}

@end
