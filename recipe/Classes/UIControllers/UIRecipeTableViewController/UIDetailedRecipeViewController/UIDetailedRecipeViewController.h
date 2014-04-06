//
//  UIDetailedRecipeViewCotnroller.h
//  recipe
//
//  Created by Robert on 4/13/13.
//  Copyright (c) 2013 Alex. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ACRecipe.h"
#import <QuartzCore/QuartzCore.h>

@interface UIDetailedRecipeViewController : UIViewController <UIScrollViewAccessibilityDelegate>

@property (nonatomic, strong) ACRecipe *currentRecipe;

@end
