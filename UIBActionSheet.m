//
//  UIBActionSheet.m
//  mobilePortal
//
//  Created by 斌 on 13-9-24.
//  Copyright (c) 2013年 斌. All rights reserved.
//

#import "UIBActionSheet.h"

#define NavBarHeight 45
#define ViewHeight [[UIScreen mainScreen] bounds].size.height

@implementation UIBActionSheet
@synthesize customView;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(id)initWithSheetTitle:(NSString *)title withViewHeight:(float)height{
    self = [super init];
    if (self) {
        customViewHeight = height;
        customTitle = title;
        customView = [[UIView alloc] initWithFrame:CGRectMake( 0, ViewHeight - customViewHeight, 320, customViewHeight)];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    
    UINavigationBar *navBar = [[UINavigationBar alloc] initWithFrame:CGRectMake( 0, ViewHeight - customViewHeight - NavBarHeight, 320, NavBarHeight)];
    navBar.barStyle = UIBarStyleBlackOpaque;
    UINavigationItem *navItem = [[UINavigationItem alloc] initWithTitle:customTitle];
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithTitle:@"取消" style:UIBarButtonItemStyleBordered target:self action:@selector(cancel)];
    navItem.leftBarButtonItem = leftButton;
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"确定" style:UIBarButtonItemStyleDone target:self action:@selector(done)];
    navItem.rightBarButtonItem = rightButton;
    NSArray *array = [[NSArray alloc] initWithObjects:navItem, nil];
    [navBar setItems:array];
    
    [self.superview addSubview:navBar];
    
    [self.superview addSubview:customView];
    
}

- (void) cancel{
    [self dismissWithClickedButtonIndex:0 animated:YES];
    [self.delegate actionSheet:self clickedButtonAtIndex:0];
}

- (void) done{
    [self dismissWithClickedButtonIndex:1 animated:YES];
    [self.delegate actionSheet:self clickedButtonAtIndex:1];
}


@end
