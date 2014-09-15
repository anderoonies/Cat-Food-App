//
//  XYZCStoreTableViewController.m
//  Cat Food App
//
//  Created by Andy Bayer on 7/30/14.
//  Copyright (c) 2014 Andy Bayer. All rights reserved.
//

#import "XYZCStoreTableViewController.h"
#import "XYZTimeUtilities.h"
#import "XYZHourLoader.h"

@interface XYZCStoreTableViewController ()

@end

@implementation XYZCStoreTableViewController

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
    XYZTimeUtilities *timer = [[XYZTimeUtilities alloc] init];
    if (450 <= timer.minutes && timer.minutes <= 645) {
        self.eqLabel.text = @"Equivalencies: $5.00";
    } else if (1005 < timer.minutes && timer.minutes <= 1170) {
        self.eqLabel.text = @"Equivalencies: $9.00";
    } else
    self.eqLabel.text = @"Equivalencies: $7.00";

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)viewDidAppear:(BOOL)animated
{
    [self.tableView setContentOffset:CGPointMake(self.tableView.contentOffset.x, -self.tableView.contentInset.top) animated:YES];
    [self setBars];
    
}

- (void)loadInitialData
{
    XYZHourLoader *hoursLoader = [[XYZHourLoader alloc] init];
    NSDictionary *data = hoursLoader.data;
    self.willardCStore.name = @"Willard";
    self.willardCStore.hours = @[
                               @[
                                   @[@0,@0]
                                   ],
                               @[
                                   @[@675,@795],
                                   @[@1005,@1440],
                                   @[@0,@120]
                                   ],
                               @[
                                   @[@675,@795],
                                   @[@1005,@1440],
                                   @[@0,@120]
                                   ],
                               @[
                                   @[@675,@795],
                                   @[@1005,@1440],
                                   @[@0,@120]
                                   ],
                               @[
                                   @[@675,@795],
                                   @[@1005,@1440],
                                   @[@0,@120]
                                   ],
                               @[
                                   @[@675,@795],
                                   @[@1005,@1440],
                                   @[@0,@120]
                                   ],
                               @[
                                   @[@0,@0]
                                   ]
                               ];
    
    self.willardCStore.hours=[data objectForKey:@"willardCStore"];
    self.willardCStore.isOpen = self.willardCStore.getIsOpen;
    self.willardLabel.text = [NSString stringWithFormat:@"%@ %@", self.willardCStore.name, self.willardCStore.timeLeft];


    
    self.plexCStore.name = @"Plex";
//    self.plexCStore.hours =@[
//                             @[
//                                 @[@660,@1440]
//                                 ],
//                             @[
//                                 @[@450,@1440]
//                                 ],
//                             @[
//                                 @[@450,@1440]
//                                 ],
//                             @[
//                                 @[@450,@1440]
//                                 ],
//                             @[
//                                 @[@450,@1440]
//                                 ],
//                             @[
//                                 @[@450,@1140]
//                                 ],
//                             @[
//                                 @[@450,@1140]
//                                 ],
//                             ];
    self.plexCStore.hours=[data objectForKey:@"plexCStore"];
    self.plexCStore.isOpen = self.plexCStore.getIsOpen;
    self.plexLabel.text = [NSString stringWithFormat:@"%@ %@", self.plexCStore.name, self.plexCStore.timeLeft];

    
    self.hinmanCStore.name = @"Hinman";
//    self.hinmanCStore.hours = @[
//                                @[
//                                    @[@660,@1440]
//                                    ],
//                                @[
//                                    @[@450,@1440]
//                                    ],
//                                @[
//                                    @[@450,@1440]
//                                    ],
//                                @[
//                                    @[@450,@1440]
//                                    ],
//                                @[
//                                    @[@450,@1440]
//                                    ],
//                                @[
//                                    @[@450,@1140]
//                                    ],
//                                @[
//                                    @[@645,@1140]
//                                    ]
//                                ];
//
    self.hinmanCStore.hours=[data objectForKey:@"hinmanCStore"];
    self.hinmanCStore.isOpen = self.hinmanCStore.getIsOpen;
    self.hinmanLabel.text = [NSString stringWithFormat:@"%@ %@", self.hinmanCStore.name, self.hinmanCStore.timeLeft];

}

- (void)setBars
{
    int fullWidth=280;
    
    if ( UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad )
    {
        fullWidth=728;
    }
    
    CGRect frame = self.willardCStore.frame;
    frame = self.willardCStore.frame;
    frame.size.width = fullWidth*self.willardCStore.newWidth;
    self.willardCStore.frame = frame;
    
    
    frame = self.plexCStore.frame;
    frame.size.width = fullWidth*self.plexCStore.newWidth;
    self.plexCStore.frame = frame;
    
    
    frame = self.hinmanCStore.frame;
    frame.size.width = fullWidth*self.hinmanCStore.newWidth;
    self.hinmanCStore.frame = frame;

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
    return 4;
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
