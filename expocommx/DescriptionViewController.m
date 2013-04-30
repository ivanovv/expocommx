//
//  expocommFirstViewController.m
//  expocommx
//
//  Created by Victor Ivanov on 4/27/13.
//  Copyright (c) 2013 Victor Ivanov. All rights reserved.
//

#import "DescriptionViewController.h"
#import "KASlideShow.h"

@interface DescriptionViewController ()
    @property (strong,nonatomic) IBOutlet KASlideShow * slideshow;
    @property (strong,nonatomic) IBOutlet UITextView * textView;
    @property (strong,nonatomic) IBOutlet UIScrollView * scrollView;
    @property (strong,nonatomic) IBOutlet UILabel * label;

@end

@implementation DescriptionViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CGRect frame = _textView.frame;
    frame.size.height = _textView.contentSize.height;
    _textView.frame = frame;

    // int contentHeight =_textView.contentSize.height + _slideshow.frame.size.height + _label.frame.size.height;
    int contentHeight = _textView.frame.origin.y + _textView.contentSize.height;
    
    _scrollView.contentSize = CGSizeMake(_scrollView.contentSize.width, contentHeight);

    [_slideshow setDelay:3]; // Delay between transitions
    [_slideshow setTransitionDuration:1]; // Transition duration
    [_slideshow setTransitionType:KASlideShowTransitionSlide]; // Choose a transition type (fade or slide)
    [_slideshow setImagesContentMode:UIViewContentModeScaleAspectFill]; // Choose a content mode for images to display
    [_slideshow addImagesFromResources:@[@"slideshow_01.png",@"slideshow_02.png",@"slideshow_03.png", @"slideshow_04.png", @"slideshow_05.png"]];
    [_slideshow start];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
