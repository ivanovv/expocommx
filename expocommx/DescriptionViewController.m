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
@end

@implementation DescriptionViewController

//@synthesize slideshow = _slideshow;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //_slideshow = [[KASlideShow alloc] initWithFrame:CGRectMake(0,0,640,750)];
    [_slideshow setDelay:3]; // Delay between transitions
    [_slideshow setTransitionDuration:1]; // Transition duration
    [_slideshow setTransitionType:KASlideShowTransitionSlide]; // Choose a transition type (fade or slide)
    [_slideshow setImagesContentMode:UIViewContentModeScaleAspectFill]; // Choose a content mode for images to display
    [_slideshow addImagesFromResources:@[@"slideshow_01.png",@"slideshow_02.png",@"slideshow_03.png", @"slideshow_04.png", @"slideshow_05.png"]]; // Add images from resources
    [_slideshow next];
    [_slideshow start];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
