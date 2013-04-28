//
//  BaseMapViewController.h
//  expocommx
//
//  Created by Victor Ivanov on 4/28/13.
//  Copyright (c) 2013 Victor Ivanov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseMapViewController : UIViewController<UIScrollViewDelegate>

@property (nonatomic) IBOutlet UIScrollView* scrollView;
@property (nonatomic) IBOutlet UIImageView* imageView;

@end
