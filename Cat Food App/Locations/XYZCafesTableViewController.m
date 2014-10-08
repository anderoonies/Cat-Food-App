//
//  XYZCafesTableViewController.m
//  Cat Food App
//
//  Created by Andy Bayer on 8/2/14.
//  Copyright (c) 2014 Andy Bayer. All rights reserved.
//

#import "XYZCafesTableViewController.h"

@interface XYZCafesTableViewController ()

@end

@implementation XYZCafesTableViewController

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

- (void)setBars
{
    
    int fullWidth=280;
    
    if ( UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad )
    {
        fullWidth=728;
    }
    
    CGRect frame = self.crowe.frame;
    frame.size.width = fullWidth*self.crowe.newWidth;
    self.crowe.frame=frame;
    
    frame = self.einstein.frame;
    frame.size.width=fullWidth*self.einstein.newWidth;
    self.einstein.frame=frame;
    
    frame = self.frans.frame;
    frame.size.width=fullWidth*self.frans.newWidth;
    self.frans.frame=frame;
    
    frame = self.lisas.frame;
    frame.size.width=fullWidth*self.lisas.newWidth;
    self.lisas.frame=frame;
    
    frame = self.plaza.frame;
    frame.size.width=fullWidth*self.plaza.newWidth;
    self.plaza.frame=frame;
    
    frame = self.techx.frame;
    frame.size.width=fullWidth*self.techx.newWidth;
    self.techx.frame=frame;
    
    
}

- (void)loadInitialData
{
    XYZHourLoader *hoursLoader = [[XYZHourLoader alloc] init];
    [hoursLoader loadHours];

    NSDictionary *data = hoursLoader.data;
    self.crowe.name = @"Crowe";
//    self.crowe.hours=@[
//                       @[
//                           @[@0,@0]
//                           ],
//                       @[
//                           @[@480,@1020]
//                           ],
//                       @[
//                           @[@480,@1020]
//                           ],
//                       @[
//                           @[@480,@1020]
//                           ],
//                       @[
//                           @[@480,@1020]
//                           ],
//                       @[
//                           @[@480,@900]
//                           ],
//                       @[
//                           @[@0,@0]
//                           ]
//                       ];
//
    self.crowe.hours=[data objectForKey:@"crowe"];
    self.crowe.isOpen=self.crowe.getIsOpen;
    self.croweLabel.text = [NSString stringWithFormat:@"%@ %@", self.crowe.name, self.crowe.timeLeft];
    
    
    self.einstein.name=@"Einstein";
//    self.einstein.hours=@[
//                          @[
//                              @[@0,@0]
//                              ],
//                          @[
//                              @[@480,@960]
//                              ],
//                          @[
//                              @[@480,@960]
//                              ],
//                          @[
//                              @[@480,@960]
//                              ],
//                          @[
//                              @[@480,@960]
//                              ],
//                          @[
//                              @[@480,@900]
//                              ],
//                          @[
//                              @[@0,@0]
//                              ]
//                          ];
//
    self.einstein.hours=[data objectForKey:@"einstein"];
    self.einstein.isOpen=self.einstein.getIsOpen;
    self.einsteinLabel.text = [NSString stringWithFormat:@"%@ %@", self.einstein.name, self.einstein.timeLeft];
    
    self.frans.name=@"Fran's";
//    self.frans.hours=@[
//                       @[
//                           @[@1140,@1440]
//                       ],
//                       @[
//                           @[@1,@120],
//                           @[@1200,@1440]
//                       ],
//                       @[
//                           @[@1,@120],
//                           @[@1200,@1440]
//                       ],
//                       @[
//                           @[@1,@120],
//                           @[@1200,@1440]
//                       ],
//                       @[
//                           @[@1,@120],
//                           @[@1200,@1440]
//                       ],
//                       @[
//                           @[@1,@120]
//                       ],
//                       @[
//                           @[@0,@0]
//                       ]
//                       ];
//
    self.frans.hours=[data objectForKey:@"frans"];
    self.frans.isOpen=self.frans.getIsOpen;
    self.fransLabel.text = [NSString stringWithFormat:@"%@ %@", self.frans.name, self.frans.timeLeft];
    
    self.lisas.name=@"Lisa's";
//    self.lisas.hours=@[
//                       @[
//                           @[@1,@120],
//                           @[@720,@1440]
//                       ],
//                       @[
//                           @[@1,@120],
//                           @[@660,@1440]
//                       ],
//                       @[
//                           @[@1,@120],
//                           @[@660,@1440]
//                       ],
//                       @[
//                           @[@1,@120],
//                           @[@660,@1440]
//                       ],
//                       @[
//                           @[@1,@120],
//                           @[@660,@1440]
//                       ],
//                       @[
//                           @[@1,@120],
//                           @[@660,@1440]
//                       ],
//                       @[
//                           @[@1,@120],
//                           @[@660,@1440]
//                       ]
//                       ];
//
    self.lisas.hours=[data objectForKey:@"lisas"];
    self.lisas.isOpen=self.lisas.getIsOpen;
    self.lisasLabel.text=[NSString stringWithFormat:@"%@ %@", self.lisas.name, self.lisas.timeLeft];
    
    self.plaza.name=@"Plaza";
//    self.plaza.hours=@[
//                       @[
//                           @[@1020,@1440]
//                       ],
//                       @[
//                           @[@510,@1440]
//                       ],
//                       @[
//                           @[@510,@1440]
//                       ],
//                       @[
//                           @[@510,@1440]
//                       ],
//                       @[
//                           @[@510,@1440]
//                       ],
//                       @[
//                           @[@510,@900]
//                       ],
//                       @[
//                           @[@720,@960]
//                       ]
//                       ];
//
    self.plaza.hours=[data objectForKey:@"plaza"];
    self.plaza.isOpen=self.plaza.getIsOpen;
    self.plazaLabel.text=[NSString stringWithFormat:@"%@ %@", self.plaza.name, self.plaza.timeLeft];
    
    self.techx.name=@"Tech";
//    self.techx.hours=@[
//                       @[
//                           @[@0,@0]
//                       ],
//                       @[
//                           @[@450,@1110]
//                       ],
//                       @[
//                           @[@450,@1110]
//                       ],
//                       @[
//                           @[@450,@1110]
//                       ],
//                       @[
//                           @[@450,@1110]
//                       ],
//                       @[
//                           @[@450,@900]
//                       ],
//                       @[
//                           @[@0,@0]
//                       ]
//                       ];
//
    self.techx.hours=[data objectForKey:@"techx"];
    self.techx.isOpen=self.techx.getIsOpen;
    self.techxLabel.text = [NSString stringWithFormat:@"%@ %@", self.techx.name, self.techx.timeLeft];
    
    
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
    return 6;
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
