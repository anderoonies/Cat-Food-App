//
//  XYZCafesTableViewController.h
//  Cat Food App
//
//  Created by Andy Bayer on 8/2/14.
//  Copyright (c) 2014 Andy Bayer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XYZDiningHall.h"
#import "XYZHourLoader.h"

@interface XYZCafesTableViewController : UITableViewController
@property (weak, nonatomic) IBOutlet XYZDiningHall *crowe;
@property (weak, nonatomic) IBOutlet UILabel *croweLabel;
@property (weak, nonatomic) IBOutlet XYZDiningHall *einstein;
@property (weak, nonatomic) IBOutlet UILabel *einsteinLabel;
@property (weak, nonatomic) IBOutlet XYZDiningHall *frans;
@property (weak, nonatomic) IBOutlet UILabel *fransLabel;
@property (weak, nonatomic) IBOutlet XYZDiningHall *lisas;
@property (weak, nonatomic) IBOutlet UILabel *lisasLabel;
@property (weak, nonatomic) IBOutlet XYZDiningHall *plaza;
@property (weak, nonatomic) IBOutlet UILabel *plazaLabel;
@property (weak, nonatomic) IBOutlet XYZDiningHall *techx;
@property (weak, nonatomic) IBOutlet UILabel *techxLabel;

- (void)loadInitialData;
- (void)setBars;
@end
