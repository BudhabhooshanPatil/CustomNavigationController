//
//  ParentViewController.m
//  CustomNavigationController-Objc
//
//  Created by Bhooshan Patil on 02/01/21.
//

#import "ParentViewController.h"

@interface ParentViewController ()<NavigationBarDelegate>
@property (nonatomic) BOOL viewcontroller_handleback_action;
@end

@implementation ParentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
-(void)viewWillAppear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:self.hidesNavigationBar animated:YES];
    [super viewWillAppear:animated];
}

/// add navigation bar to view controller
/// @param custombar instance of NavigationBar
/// @param handleback YES if wants to handle action in implimented controller itself
-(void)addNavigationBar:(NavigationBar *)custombar backOnTap:(BOOL)handleback{
    [custombar setDelegate:self];
    self.viewcontroller_handleback_action = !handleback;
}
-(void)onBackButtonTap{}
-(void)onRightBarButtonTap{}

#pragma mark - NavigationBarDelegate-methods
-(void)didtapBackBarButton{
    if (self.viewcontroller_handleback_action) {
        [self onBackButtonTap];
    }else{
        [self.navigationController popViewControllerAnimated:YES];
    }
}
-(void)didtapRightBarButton{
    [self onRightBarButtonTap];
}
@end
