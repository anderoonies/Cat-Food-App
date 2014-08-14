//
//  XYZCStoreTableViewController.h
//  Cat Food App
//
//  Created by Andy Bayer on 7/30/14.
//  Copyright (c) 2014 Andy Bayer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XYZDiningHall.h"

@interface XYZCStoreTableViewController : UITableViewController

@property (weak, nonatomic) IBOutlet XYZDiningHall *willardCStore;
@property (weak, nonatomic) IBOutlet UILabel *willardLabel;

@property (weak, nonatomic) IBOutlet XYZDiningHall *plexCStore;
@property (weak, nonatomic) IBOutlet UILabel *plexLabel;

@property (weak, nonatomic) IBOutlet XYZDiningHall *hinmanCStore;
@property (weak, nonatomic) IBOutlet UILabel *hinmanLabel;

@property (weak, nonatomic) IBOutlet UILabel *eqLabel;

- (void)setBars;
- (void)loadInitialData;

@end
