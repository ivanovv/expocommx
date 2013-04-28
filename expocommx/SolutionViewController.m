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

@end

@implementation SolutionViewController

    Description *myDescription;
    -(void)setDescription:(Description *)description {
        myDescription = description;
        _label.text = myDescription.title;
        _textView.text = myDescription.description;
    }
@end
