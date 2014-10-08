//
//  XYZNorrisTableViewController.h
//  Cat Food App
//
//  Created by Andy Bayer on 8/1/14.
//  Copyright (c) 2014 Andy Bayer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XYZDiningHall.h"
#import "XYZHourLoader.h"

@interface XYZNorrisTableViewController : UITableViewController
@property (weak, nonatomic) IBOutlet XYZDiningHall *willies;
@property (weak, nonatomic) IBOutlet UILabel *williesLabel;
@property (weak, nonatomic) IBOutlet XYZDiningHall *paws;
@property (weak, nonatomic) IBOutlet UILabel *pawsLabel;
@property (weak, nonatomic) IBOutlet XYZDiningHall *subway;
@property (weak, nonatomic) IBOutlet UILabel *subwayLabel;
@property (weak, nonatomic) IBOutlet XYZDiningHall *dunkin;
@property (weak, nonatomic) IBOutlet UILabel *dunkinLabel;
@property (weak, nonatomic) IBOutlet XYZDiningHall *pizza;
@property (weak, nonatomic) IBOutlet UILabel *pizzaLabel;
@property (weak, nonatomic) IBOutlet XYZDiningHall *norbucks;
@property (weak, nonatomic) IBOutlet UILabel *norbucksLabel;
@property (weak, nonatomic) IBOutlet XYZDiningHall *frontera;
@property (weak, nonatomic) IBOutlet UILabel *fronteraLabel;

- (void)setBars;
- (void)loadInitialData;

@end
