//
//  Map1ViewController.m
//  expocommx
//
//  Created by Victor Ivanov on 4/28/13.
//  Copyright (c) 2013 Victor Ivanov. All rights reserved.
//

#import "Map1ViewController.h"

@interface Map1ViewController ()

@property (nonatomic) IBOutlet UIScrollView* scrollView;
@property (nonatomic) IBOutlet UIImageView* imageView;

@end

@implementation Map1ViewController

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
	// Do any additional setup after loading the view.
    CGSize contentSize = self.imageView.frame.size;
    self.scrollView.contentSize = contentSize;
    self.scrollView.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIView*)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.imageView;
}

@end
