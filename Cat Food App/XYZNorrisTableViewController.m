//
//  XYZNorrisTableViewController.m
//  Cat Food App
//
//  Created by Andy Bayer on 8/1/14.
//  Copyright (c) 2014 Andy Bayer. All rights reserved.
//

#import "XYZNorrisTableViewController.h"

@interface XYZNorrisTableViewController ()

@end

@implementation XYZNorrisTableViewController

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
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated
{
    
    NSLog(@"ayyy lmao ;)");
    [self setBars];
    NSLog(@"%f", self.dunkin.frame.size.width);
    
}

- (void)loadInitialData
{
    
    self.willies.name=@"Willie's";
    self.willies.hours=@[
                         @[
                             @[@660,@900]
                         ],
                         @[
                             @[@660,@900]
                         ],
                         @[
                             @[@660,@900]
                         ],
                         @[
                             @[@660,@900]
                         ],
                         @[
                             @[@660,@900]
                         ],
                         @[
                             @[@660,@900]
                         ],
                         @[
                             @[@0,@0]
                         ]
                         ];
    
    self.willies.isOpen=self.willies.getIsOpen;
    self.williesLabel.text = [NSString stringWithFormat:@"%@ %@", self.willies.name, self.willies.timeLeft];
    
    self.paws.name=@"Paws 'n Go";
    self.paws.hours=@[
                      @[
                          @[@660,@1380]
                          ],
                      @[
                          @[@480,@1380]
                          ],
                      @[
                          @[@480,@1380]
                          ],
                      @[
                          @[@480,@1380]
                          ],
                      @[
                          @[@480,@1380]
                          ],
                      @[
                          @[@480,@1260]
                          ],
                      @[
                          @[@600,@1380]
                          ]
                      ];
    
    self.paws.isOpen=self.paws.getIsOpen;
    self.pawsLabel.text = [NSString stringWithFormat:@"%@ %@", self.paws.name, self.paws.timeLeft];
    
    self.subway.name=@"Subway";
    self.subway.hours=@[
                        @[
                            @[@660,@1260]
                            ],
                        @[
                            @[@660,@1260]
                            ],
                        @[
                            @[@660,@1260]
                            ],
                        @[
                            @[@660,@1260]
                            ],
                        @[
                            @[@660,@1260]
                            ],
                        @[
                            @[@660,@1260]
                            ],
                        @[
                            @[@660,@1260]
                            ]
                        ];
    
    self.subway.isOpen=self.subway.getIsOpen;
    self.subwayLabel.text = [NSString stringWithFormat:@"%@ %@", self.subway.name, self.subway.timeLeft];
    
    self.dunkin.name=@"Dunkin'";
    self.dunkin.hours=@[
                        @[
                            @[@720,@1425]
                            ],
                        @[
                            @[@480,@1425]
                            ],
                        @[
                            @[@480,@1425]
                            ],
                        @[
                            @[@480,@1425]
                            ],
                        @[
                            @[@480,@1425]
                            ],
                        @[
                            @[@480,@1140]
                            ],
                        @[
                            @[@720,@1140]
                            ]
                        ];
    
    self.dunkin.isOpen=self.dunkin.getIsOpen;
    self.dunkinLabel.text = [NSString stringWithFormat:@"%@ %@", self.dunkin.name, self.dunkin.timeLeft];
    
    self.pizza.name=@"Pizza";
    self.pizza.hours=@[
                       @[
                           @[@660,@1380]
                           ],
                       @[
                           @[@660,@1380]
                           ],
                       @[
                           @[@660,@1380]
                           ],
                       @[
                           @[@660,@1380]
                           ],
                       @[
                           @[@660,@1380]
                           ],
                       @[
                           @[@660,@1260]
                           ],
                       @[
                           @[@660,@1260]
                           ]
                       ];
    
    self.pizza.isOpen=self.pizza.getIsOpen;
    self.pizzaLabel.text = [NSString stringWithFormat:@"%@ %@", self.pizza.name, self.pizza.timeLeft];
    
    self.norbucks.name=@"Starbucks";
    self.norbucks.hours=@[
                          @[
                              @[@600,@1425]
                              ],
                          @[
                              @[@480, @1425]
                              ],
                          @[
                              @[@480, @1425]
                              ],
                          @[
                              @[@480, @1425]
                              ],
                          @[
                              @[@480, @1425]
                              ],
                          @[
                              @[@480, @1260]
                              ],
                          @[
                              @[@540, @1260]
                              ]
                          ];
    
    self.norbucks.isOpen=self.norbucks.getIsOpen;
    self.norbucksLabel.text = [NSString stringWithFormat:@"%@ %@", self.norbucks.name, self.norbucks.timeLeft];
    
    self.frontera.name=@"Frontera";
    self.frontera.hours=@[
                          @[
                              @[@0,@0]
                              ],
                          @[
                              @[@660,@1140]
                              ],
                          @[
                              @[@660,@1140]
                              ],
                          @[
                              @[@660,@1140]
                              ],
                          @[
                              @[@660,@1140]
                              ],
                          @[
                              @[@660,@1140]
                              ],
                          @[
                              @[@660,@900]
                              ]
                          ];
    
    self.frontera.isOpen=self.frontera.getIsOpen;
    self.fronteraLabel.text = [NSString stringWithFormat:@"%@ %@", self.frontera.name, self.frontera.timeLeft];
}

- (void)setBars
{
    CGRect frame = self.paws.frame;
    frame.size.width = 280 * self.paws.newWidth;
    self.paws.frame=frame;
    
    frame = self.willies.frame;
    frame.size.width = 280 * self.willies.newWidth;
    self.willies.frame=frame;
    
    frame = self.subway.frame;
    frame.size.width = 280 * self.subway.newWidth;
    self.subway.frame=frame;
    
    frame = self.dunkin.frame;
    frame.size.width = 280 * self.dunkin.newWidth;
    self.dunkin.frame=frame;
    
    frame = self.pizza.frame;
    frame.size.width = 280 * self.pizza.newWidth;
    self.pizza.frame=frame;
    
    frame = self.norbucks.frame;
    frame.size.width = 280 * self.norbucks.newWidth;
    self.norbucks.frame=frame;
    
    frame = self.frontera.frame;
    frame.size.width = 280 * self.frontera.newWidth;
    self.frontera.frame=frame;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
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
