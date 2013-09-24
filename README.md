UIBActionSheet
==============

自定义ActionSheet，放Picker用


使用方法：
引入头

    UIBActionSheet *myActionSheet = [[UIBActionSheet alloc]initWithSheetTitle:@"test" withViewHeight:216];
    [myActionSheet.customView addSubview:picker];
    myActionSheet.delegate = self;
    [myActionSheet showInView:self.view];

回调：
    - (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{}
    buttonIndex = 0 //取消 ，1 为 完成
