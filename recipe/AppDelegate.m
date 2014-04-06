//
//  AppDelegate.m
//  recipe
//
//  Created by Alex on 4/6/13.
//  Copyright (c) 2013 Alex. All rights reserved.
//

#import "AppDelegate.h"
#import "UIAboutViewController.h"
#import "UIRecipeTableViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UITabBarItem *recipeBarItem = [[UITabBarItem alloc] initWithTitle: NSLocalizedString(@"kRecipes", @"asfgdfgh") image:[UIImage imageNamed: NSLocalizedString(@"kRecipeIcon", @"sfgdg") ] tag:1000];
    UITabBarItem *aboutBarItem = [[UITabBarItem alloc] initWithTitle: NSLocalizedString(@"kAbout", @"cvhgf") image:[UIImage imageNamed: NSLocalizedString(@"kHomeIcon", @"dgf") ] tag: 1001];
    
    
    UIRecipeTableViewController *recipeTableViewController = [[UIRecipeTableViewController alloc] initWithStyle:UITableViewStylePlain];
    UINavigationController *recipeNavigationController =[[UINavigationController alloc] initWithRootViewController:recipeTableViewController];
    recipeNavigationController.tabBarItem = recipeBarItem;
    
    UIAboutViewController *aboutViewController = [[UIAboutViewController alloc] init];
    UINavigationController *aboutNavigationController = [[UINavigationController alloc] initWithRootViewController:aboutViewController];
    aboutNavigationController.tabBarItem = aboutBarItem;
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = @[aboutNavigationController, recipeNavigationController];
    
    self.window.rootViewController = tabBarController;
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor lightGrayColor];
    [self.window makeKeyAndVisible];
    self.test = @"Test";
    
    NSLog(@"Log:%@",_test);
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
