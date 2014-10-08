//
//  XYZDiningHallTableViewController.h
//  Cat Food App
//
//  Created by Andy Bayer on 7/29/14.
//  Copyright (c) 2014 Andy Bayer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XYZDiningHall.h"
#import "XYZHourLoader.h"

@interface XYZDiningHallTableViewController : UITableViewController

@property (weak, nonatomic) IBOutlet XYZDiningHall *allisonHall;
@property (weak, nonatomic) IBOutlet UILabel *allisonLabel;


@property (weak, nonatomic) IBOutlet XYZDiningHall *willardHall;
@property (weak, nonatomic) IBOutlet UILabel *willardLabel;

@property (weak, nonatomic) IBOutlet XYZDiningHall *plexEastHall;
@property (weak, nonatomic) IBOutlet UILabel *plexEastLabel;

@property (weak, nonatomic) IBOutlet XYZDiningHall *plexWestHall;
@property (weak, nonatomic) IBOutlet UILabel *plexWestLabel;


@property (weak, nonatomic) IBOutlet XYZDiningHall *elderHall;
@property (weak, nonatomic) IBOutlet UILabel *elderLabel;


@property (weak, nonatomic) IBOutlet XYZDiningHall *hinmanHall;
@property (weak, nonatomic) IBOutlet UILabel *hinmanLabel;

@property (weak, nonatomic) IBOutlet XYZDiningHall *sargentHall;
@property (weak, nonatomic) IBOutlet UILabel *sargentLabel;

- (void)setBars;
- (void)loadInitialData;

@end
