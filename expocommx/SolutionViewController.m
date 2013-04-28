//
//  expocommSecondViewController.m
//  expocommx
//
//  Created by Victor Ivanov on 4/27/13.
//  Copyright (c) 2013 Victor Ivanov. All rights reserved.
//

#import "SolutionViewController.h"
#import "Description.h"

@interface SolutionViewController ()
    @property (strong,nonatomic) IBOutlet UITextView * textView;
    @property (strong,nonatomic) IBOutlet UILabel * label;
    @property (strong,nonatomic) IBOutlet UIImageView * imageView;
    @property (strong,nonatomic) IBOutlet UIScrollView * scrollView;
@end

@implementation SolutionViewController

    Description *myDescription;

    -(void)setDescription:(Description *)description {
        myDescription = description;
        _label.text = myDescription.title;
        _textView.text = myDescription.description;
    }


- (void)viewDidLoad
{
    [super viewDidLoad];

    _label.text = myDescription.title;
    _textView.text = myDescription.description;
    
    CGRect frame = _textView.frame;
    frame.size.height = _textView.contentSize.height;
    _textView.frame = frame;
    
    int contentHeight = _textView.contentSize.height + _imageView.frame.size.height;
    
    _scrollView.contentSize = CGSizeMake(_scrollView.contentSize.width, contentHeight);
    
}

@end
