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
    [self.tableView setContentInset:UIEdgeInsetsMake(50,0,0,0)];
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
}

- (void)loadInitialData
{
    self.allisonHall.name = @"Allison Hall";
    self.allisonHall.hours = @[
                               @[
                                   @[@600,@780],
                                   @[@1005,@1170]
                                   ],
                               @[
                                   @[@450,@585],
                                   @[@705,@795],
                                   @[@1005,@1140]
                                   ],
                               @[
                                   @[@450,@585],
                                   @[@705,@795],
                                   @[@1005,@1140]
                                   ],
                               @[
                                   @[@450,@585],
                                   @[@705,@795],
                                   @[@1005,@1140]
                                   ],
                               @[
                                   @[@450,@585],
                                   @[@705,@795],
                                   @[@1005,@1140]
                                   ],
                               @[
                                   @[@450,@585],
                                   @[@705,@795],
                                   @[@1005,@1140]
                                   ],
                               @[
                                   @[@645,@810],
                                   @[@1005,@1170]
                                   ],
                               ];
    
    self.allisonHall.isOpen = self.allisonHall.getIsOpen;
    
    self.hinmanHall.name = @"Hinman Hall";
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
                                    @[@645,@810],
                                    @[@1005,@1140],
                                    ]
                                ];
    
    self.plexEastHall.isOpen = self.plexEastHall.getIsOpen;
    
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
                                    @[@450,@585],
                                    @[@675,@795],
                                    @[@1005,@1140]
                                    ],
                                @[
                                    @[@450,@585],
                                    @[@645,@810],
                                    @[@1305,@1140]
                                    ]
                                ];
    
    self.plexWestHall.isOpen = self.plexWestHall.getIsOpen;
    
    
    self.elderHall.name = @"Elder Hall";
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
    
    self.sargentHall.name = @"Sargent Hall";
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
    
    self.willardHall.name = @"Willard Hall";
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
}

- (void)setBars
{
    CGRect frame = self.allisonHall.frame;
    frame = self.allisonHall.frame;
    frame.size.width = self.allisonHall.frame.size.width*self.allisonHall.newWidth;
    self.allisonHall.frame = frame;
    
    frame = self.willardHall.frame;
    frame = self.willardHall.frame;
    frame.size.width = self.willardHall.frame.size.width*self.willardHall.newWidth;
    self.willardHall.frame = frame;
    
    frame = self.plexEastHall.frame;
    frame = self.plexEastHall.frame;
    frame.size.width = self.plexEastHall.frame.size.width*self.plexEastHall.newWidth;
    self.plexEastHall.frame = frame;
    
    frame = self.plexWestHall.frame;
    frame = self.plexWestHall.frame;
    frame.size.width = self.plexWestHall.frame.size.width*self.plexWestHall.newWidth;
    self.plexWestHall.frame = frame;
    
    frame = self.hinmanHall.frame;
    frame = self.hinmanHall.frame;
    frame.size.width = self.hinmanHall.frame.size.width*self.hinmanHall.newWidth;
    self.hinmanHall.frame = frame;
    
    frame = self.elderHall.frame;
    frame = self.elderHall.frame;
    frame.size.width = self.elderHall.frame.size.width*self.elderHall.newWidth;
    self.elderHall.frame = frame;
    
    frame = self.sargentHall.frame;
    frame = self.sargentHall.frame;
    frame.size.width = self.sargentHall.frame.size.width*self.sargentHall.newWidth;
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
