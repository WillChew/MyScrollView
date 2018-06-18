//
//  MyScrollView.h
//  MyScrollView
//
//  Created by Will Chew on 2018-06-18.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView

@property (nonatomic) CGSize contentSize;
@property (nonatomic) UIPanGestureRecognizer *panGesture;

@end
