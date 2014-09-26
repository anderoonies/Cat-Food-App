//
//  XYZHourLoader.m
//  Cat Food
//
//  Created by Andy Bayer on 9/15/14.
//  Copyright (c) 2014 Andy Bayer. All rights reserved.
//

#import "XYZHourLoader.h"

@implementation XYZHourLoader

-(id) init {
    
    self=[super init];
        
    return self;

}

-(void) loadHours{
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL
                                                          URLWithString:@"https://raw.githubusercontent.com/anderoonies/Cat-Food-App/master/HoursArray"]];
    NSData *response = [NSURLConnection sendSynchronousRequest:request
                                             returningResponse:nil error:nil];
    
    
    
    if(!response){
        NSLog(@"I made it");
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle: @"Error"
                                                       message: @"Could not establish connection"
                                                      delegate: self
                                             cancelButtonTitle:@"Cancel"
                                             otherButtonTitles:@"OK",nil];
        
        [alert show];
        return;
    }
    
    NSError *e;
    
    
    NSDictionary *jsonArray = [NSJSONSerialization JSONObjectWithData: response options: NSJSONReadingMutableContainers error: &e];
    
    if (!jsonArray) {
        NSLog(@"Error parsing JSON: %@", e);
        
        
    }
    _data=jsonArray;
    
}



@end

