//
//  XYZDiningHallTableViewController.h
//  Cat Food App
//
//  Created by Andy Bayer on 7/29/14.
//  Copyright (c) 2014 Andy Bayer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XYZDiningHall.h"

@interface XYZDiningHallTableViewController : UITableViewController
@property (weak, nonatomic) IBOutlet XYZDiningHall *allisonHall;

@property (weak, nonatomic) IBOutlet XYZDiningHall *willardHall;

@property (weak, nonatomic) IBOutlet XYZDiningHall *plexEastHall;

@property (weak, nonatomic) IBOutlet XYZDiningHall *plexWestHall;

@property (weak, nonatomic) IBOutlet XYZDiningHall *elderHall;

@property (weak, nonatomic) IBOutlet XYZDiningHall *hinmanHall;

@property (weak, nonatomic) IBOutlet XYZDiningHall *sargentHall;

- (void)setBars;
- (void)loadInitialData;

@end
