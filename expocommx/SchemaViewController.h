//
//  expocommSchemaViewController.h
//  expocommx
//
//  Created by Victor Ivanov on 4/27/13.
//  Copyright (c) 2013 Victor Ivanov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SchemaViewController : UIViewController<UIScrollViewDelegate>
  
  @property (nonatomic, retain) IBOutlet UIImageView * imageView;
  @property (nonatomic, retain) IBOutlet UIScrollView *scrollView;

@end
