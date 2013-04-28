//
//  expocommSchemaViewController.m
//  expocommx
//
//  Created by Victor Ivanov on 4/27/13.
//  Copyright (c) 2013 Victor Ivanov. All rights reserved.
//

#import "SchemaViewController.h"

@interface SchemaViewController ()

@end

@implementation SchemaViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    /*
    [scrollView setBackgroundColor:[UIColor blackColor]];
    [scrollView setCanCancelContentTouches:NO];
    scrollView.clipsToBounds = YES; // default is NO, we want to restrict drawing within our scrollview
    scrollView.indicatorStyle = UIScrollViewIndicatorStyleWhite;
    demoImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"PDF-icon.png"]];
    [scrollView addSubview:imageView];
    [scrollView setContentSize:CGSizeMake(imageView.frame.size.width, imageView.frame.size.height)];
    scrollView.minimumZoomScale = 1;
    scrollView.maximumZoomScale = 3;
    scrollView.delegate = self;
    [scrollView setScrollEnabled:YES];
     */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
    - (void)scrollViewDidZoom:(UIScrollView *)aScrollView {
    CGFloat offsetX = (scrollView.bounds.size.width > scrollView.contentSize.width)? 
                      (scrollView.bounds.size.width - scrollView.contentSize.width) * 0.5 : 0.0;
    CGFloat offsetY = (scrollView.bounds.size.height > scrollView.contentSize.height)? 
                      (scrollView.bounds.size.height - scrollView.contentSize.height) * 0.5 : 0.0;
    mySubView.center = CGPointMake(scrollView.contentSize.width * 0.5 + offsetX, 
                                   scrollView.contentSize.height * 0.5 + offsetY);
}*/

@end
