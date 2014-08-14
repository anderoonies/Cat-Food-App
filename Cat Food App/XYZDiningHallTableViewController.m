//
//  XYZDiningHallTableViewController.m
//  Cat Food App
//
//  Created by Andy Bayer on 7/29/14.
//  Copyright (c) 2014 Andy Bayer. All rights reserved.
//

#import "XYZDiningHallTableViewController.h"

@interface XYZDiningHallTableViewController ()

@end

@implementation XYZDiningHallTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadInitialData];
    self.edgesForExtendedLayout = UIRectEdgeAll;
    self.tableView.contentInset = UIEdgeInsetsMake(0.0f, 0.0f, CGRectGetHeight(self.tabBarController.tabBar.frame), 0.0f);
    [super viewDidAppear:NO];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidAppear:(BOOL)animated
{
    [self setBars];
    
    NSLog(@"Allison Hall %f", self.allisonHall.frame.size.width);
    NSLog(@"hinman hall %f", self.hinmanHall.frame.size.width);

    NSLog(@"plex east %f", self.plexEastHall.frame.size.width);
    NSLog(@"plex west%f", self.plexWestHall.frame.size.width);
    NSLog(@"elder hall %f", self.elderHall.frame.size.width);
    NSLog(@"sargent %f", self.sargentHall.frame.size.width);
    NSLog(@"willard %f", self.willardHall.frame.size.width);
    NSLog(@"%hhd",self.elderHall.isOpen);

}

- (void)loadInitialData
{
    self.allisonHall.name = @"Allison";
    self.allisonHall.hours = @[
                               @[
                                   @[@600,@780],
                                   @[@1005,@1170]
                                   ],
                               @[
                                   @[@450,@585],
                                   @[@675,@795],
                                   @[@1005,@1140]
                                   ],
                               @[
                                   @[@450,@585],
                                   @[@675,@795],
                                   @[@1005,@1140]
                                   ],
                               @[
                                   @[@450,@585],
                                   @[@675,@795],
                                   @[@1005,@1140]
                                   ],
                               @[
                                   @[@450,@585],
                                   @[@675,@795],
                                   @[@1005,@1140]
                                   ],
                               @[
                                   @[@450,@585],
                                   @[@675,@795],
                                   @[@1005,@1140]
                                   ],
                               @[
                                   @[@645,@810],
                                   @[@1005,@1170]
                                   ],
                               ];
    
    self.allisonHall.isOpen = self.allisonHall.getIsOpen;
    self.allisonLabel.text = [NSString stringWithFormat:@"%@ %@", self.allisonHall.name, self.allisonHall.timeLeft];
    
    
    self.hinmanHall.name = @"Hinman";
    self.hinmanHall.hours =@[
                             @[
                                 @[@0,@0]
                                 ],
                             @[
                                 @[@450,@585],
                                 @[@645,@1200]
                                 ],
                             @[
                                 @[@450,@585],
                                 @[@645,@1200]
                                 ],
                             @[
                                 @[@450,@585],
                                 @[@645,@1200]
                                 ],
                             @[
                                 @[@450,@585],
                                 @[@645,@1200]
                                 ],
                             @[
                                 @[@450,@585],
                                 @[@645,@1140]
                                 ],
                             @[
                                 @[@0,@0]
                                 ],
                             ];
    
    self.hinmanHall.isOpen = self.hinmanHall.getIsOpen;
    self.hinmanLabel.text = [NSString stringWithFormat:@"%@ %@", self.hinmanHall.name, self.hinmanHall.timeLeft];


    
    self.plexEastHall.name = @"Plex East";
    self.plexEastHall.hours = @[
                                @[
                                    @[@660,@840],
                                    @[@1005,@1140]
                                    ],
                                @[
                                    @[@645,@795],
                                    @[@1005,@1200]
                                    ],
                                @[
                                    @[@645,@795],
                                    @[@1005,@1200]
                                    ],
                                @[
                                    @[@645,@795],
                                    @[@1005,@1200]
                                    ],
                                @[
                                    @[@645,@795],
                                    @[@1005,@1200]
                                    ],
                                @[
                                    @[@645,@795],
                                    @[@1005,@1200]
                                    ],
                                @[
                                    @[@645,@810],
                                    @[@1005,@1140],
                                    ]
                                ];
    
    self.plexEastHall.isOpen = self.plexEastHall.getIsOpen;
    self.plexEastLabel.text = [NSString stringWithFormat:@"%@ %@", self.plexEastHall.name, self.plexEastHall.timeLeft];

    
    self.plexWestHall.name = @"Plex West";
    self.plexWestHall.hours = @[
                                @[
                                    @[@660,@840],
                                    @[@1005,@1170]
                                    ],
                                @[
                                    @[@450,@645],
                                    @[@705,@1005],
                                    @[@1035,@1170],
                                    @[@1200,@1410]
                                    ],
                                @[
                                    @[@450,@645],
                                    @[@705,@1005],
                                    @[@1035,@1170],
                                    @[@1200,@1410]
                                    ],
                                @[
                                    @[@450,@645],
                                    @[@705,@1005],
                                    @[@1035,@1170],
                                    @[@1200,@1410]
                                    ],
                                @[
                                    @[@450,@645],
                                    @[@705,@1005],
                                    @[@1035,@1170],
                                    @[@1200,@1410]
                                    ],
                                @[
                                    @[@450,@645],
                                    @[@705,@1005],
                                    @[@1035,@1140]
                                    ],
                                @[
                                    @[@450,@585],
                                    @[@645,@810],
                                    @[@1305,@1140]
                                    ]
                                ];
    
    self.plexWestHall.isOpen = self.plexWestHall.getIsOpen;
    self.plexWestLabel.text = [NSString stringWithFormat:@"%@ %@", self.plexWestHall.name, self.plexWestHall.timeLeft];

    
    
    self.elderHall.name = @"Elder";
    self.elderHall.hours = @[
                             @[
                                 @[@0,@0]
                                 ],
                             @[
                                 @[@675,@795],
                                 @[@1005,@1140]
                                 ],
                             @[
                                 @[@675,@795],
                                 @[@1005,@1140]
                                 ],
                             @[
                                 @[@675,@795],
                                 @[@1005,@1140]
                                 ],
                             @[
                                 @[@675,@795],
                                 @[@1005,@1140]
                                 ],
                             @[
                                 @[@675,@795],
                                 @[@1005,@1140]
                                 ],
                             @[
                                 @[@0,@0]
                                 ],
                             ];
    
    self.elderHall.isOpen = self.elderHall.getIsOpen;
    self.elderLabel.text = [NSString stringWithFormat:@"%@ %@", self.elderHall.name, self.elderHall.timeLeft];

    
    self.sargentHall.name = @"Sargent";
    self.sargentHall.hours = @[
                               @[
                                   @[@660,@840],
                                   @[@1005,@1170]
                                   ],
                               @[
                                   @[@450,@645],
                                   @[@645,@1200]
                                   ],
                               @[
                                   @[@450,@645],
                                   @[@645,@1200]
                                   ],
                               @[
                                   @[@450,@645],
                                   @[@645,@1200]
                                   ],
                               @[
                                   @[@450,@645],
                                   @[@645,@1200]
                                   ],
                               @[
                                   @[@450,@645],
                                   @[@645,@1200]
                                   ],
                               @[
                                   @[@450,@585],
                                   @[@645,@810]
                                   ],
                               ];
    
    self.sargentHall.isOpen = self.sargentHall.getIsOpen;
    self.sargentLabel.text = [NSString stringWithFormat:@"%@ %@", self.sargentHall.name, self.sargentHall.timeLeft];

    
    self.willardHall.name = @"Willard";
    self.willardHall.hours = @[
                               @[
                                   @[@0,@0]
                                   ],
                               @[
                                   @[@675,@795],
                                   @[@1005,@1140]
                                   ],
                               @[
                                   @[@675,@795],
                                   @[@1005,@1140]
                                   ],
                               @[
                                   @[@675,@795],
                                   @[@1005,@1140]
                                   ],
                               @[
                                   @[@675,@795],
                                   @[@1005,@1140]
                                   ],
                               @[
                                   @[@675,@795],
                                   @[@1005,@1140]
                                   ],
                               @[
                                   @[@0,@0]
                                   ],
                               ];
    self.willardHall.isOpen = self.willardHall.getIsOpen;
    self.willardLabel.text = [NSString stringWithFormat:@"%@ %@", self.willardHall.name, self.willardHall.timeLeft];


}

- (void)setBars
{
    CGRect frame = self.allisonHall.frame;
    frame = self.allisonHall.frame;
    frame.size.width = 280*self.allisonHall.newWidth;
    self.allisonHall.frame = frame;
    
    
    frame = self.willardHall.frame;
    frame.size.width = 280*self.willardHall.newWidth;
    self.willardHall.frame = frame;
    
    
    frame = self.plexEastHall.frame;
    frame.size.width = 280*self.plexEastHall.newWidth;
    self.plexEastHall.frame = frame;
    
    frame = self.plexWestHall.frame;
    frame.size.width = 280*self.plexWestHall.newWidth;
    self.plexWestHall.frame = frame;
    
    frame = self.hinmanHall.frame;
    frame.size.width = 280*self.hinmanHall.newWidth;
    self.hinmanHall.frame = frame;
    
    frame = self.elderHall.frame;
    frame.size.width = 280*self.elderHall.newWidth;
    self.elderHall.frame = frame;
    
    frame = self.sargentHall.frame;
    frame.size.width = 280*self.sargentHall.newWidth;
    self.sargentHall.frame = frame;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 7;
}

/*
 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
 {
 UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
 
 // Configure the cell...
 
 return cell;
 }
 */

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
