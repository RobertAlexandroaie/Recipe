//
//  MainViewController.m
//  recipe
//
//  Created by Alex on 4/6/13.
//  Copyright (c) 2013 Alex. All rights reserved.
//

#import "UIAboutViewController.h"
#import "UIRecipeTableViewController.h"

@implementation UIAboutViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    CGRect labeFrame = CGRectMake(10, 10, 200, 30);
    UILabel *myLabel = [[UILabel alloc] initWithFrame:labeFrame];
    myLabel.text = @"MyFirstLabel";
    [self.view addSubview:myLabel];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(10, 100, 200, 44);
    button.tag = 1001;
    [button setTitle:NSLocalizedString(@"kButtonStatusFirst", @"sfdgf") forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)buttonPressed:(id)sender{
    UIButton *button = (UIButton *) [self.view viewWithTag:1001];
    [button setTitle:NSLocalizedString(@"kButtonStatusPressed", @"sfdgf") forState:UIControlStateNormal];
    
    UIRecipeTableViewController *recipeTableVC = [[UIRecipeTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    [self.navigationController pushViewController:recipeTableVC animated:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
