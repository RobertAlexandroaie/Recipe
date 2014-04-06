//
//  UIDetailedRecipeViewCotnroller.m
//  recipe
//
//  Created by Robert on 4/13/13.
//  Copyright (c) 2013 Alex. All rights reserved.
//

#import "UIDetailedRecipeViewController.h"


#define kPadding 5

@interface UIDetailedRecipeViewController () {
    UIImageView *imageView;
    UIScrollView *scrollView;
    UITextView *textView;
}

@end

@implementation UIDetailedRecipeViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

#pragma mark - ViewSetup

- (UIScrollView *)createScrollView {
    UIScrollView *returnedScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(kPadding, kPadding, self.view.frame.size.width - 2*kPadding, 200)];
    returnedScrollView.scrollEnabled = YES;
    returnedScrollView.maximumZoomScale = 2.0;
    returnedScrollView.minimumZoomScale = 0.1;
    returnedScrollView.zoomScale = 0.3;
    returnedScrollView.delegate = self;
    return returnedScrollView;
}

- (UIImageView *)createImageViewInScrollView:(UIScrollView *)aScrollView withImage:(UIImage *)aImage{
    UIImageView *returnedImageView = [[UIImageView alloc] initWithImage: aImage];
    [aScrollView addSubview:returnedImageView];
    aScrollView.contentSize = returnedImageView.frame.size;
    return returnedImageView;
    
}

- (UITextView *)createTextViewWithText:(NSString *)aText andFrame:(CGRect)frame {
    UITextView *returnedTextView = [[UITextView alloc]initWithFrame:frame];
    returnedTextView.text = aText;
    returnedTextView.textColor = [UIColor whiteColor];
    returnedTextView.backgroundColor = [UIColor darkGrayColor];
    returnedTextView.editable = NO;
    returnedTextView.scrollEnabled = YES;
    returnedTextView.layer.borderColor = [[UIColor whiteColor] CGColor];
    returnedTextView.layer.borderWidth = 1;
    returnedTextView.layer.cornerRadius = 4;
    return returnedTextView;
}

#pragma mark - ViewLifeCircle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    scrollView = [self createScrollView];
    [self.view addSubview:scrollView];
    imageView = [self createImageViewInScrollView:scrollView withImage:[UIImage imageNamed:_currentRecipe.photoName]];
    
    CGFloat textViewYValue= scrollView.frame.size.height+scrollView.frame.origin.y+kPadding;
    CGRect textViewFrame = CGRectMake(kPadding, textViewYValue, self.view.frame.size.width - (2*kPadding), 150);
    textView = [self createTextViewWithText:_currentRecipe.description andFrame:textViewFrame];
    [self.view addSubview:textView];    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - ScrollViewDelegates

- (UIView *) viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return imageView;
}


@end
