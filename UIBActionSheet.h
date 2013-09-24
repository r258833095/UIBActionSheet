//
//  UIBActionSheet.h
//  mobilePortal
//
//  Created by 斌 on 13-9-24.
//  Copyright (c) 2013年 斌. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBActionSheet : UIActionSheet{
    
    float customViewHeight;
    
    UIView *customView;
    NSString *customTitle;
}
@property (nonatomic, retain) UIView *customView;

-(id)initWithSheetTitle:(NSString *)title withViewHeight:(float)height;

@end
