//
//  ParentViewController.h
//  CustomNavigationController-Objc
//
//  Created by Bhooshan Patil on 02/01/21.
//

#import <UIKit/UIKit.h>
#import "NavigationBar.h"

NS_ASSUME_NONNULL_BEGIN

IB_DESIGNABLE
@interface ParentViewController : UIViewController
@property (assign,nonatomic) IBInspectable BOOL hidesNavigationBar;
-(void)addNavigationBar:(NavigationBar*)custombar backOnTap:(BOOL)handleback;
-(void)onBackButtonTap;
-(void)onRightBarButtonTap;
@end

NS_ASSUME_NONNULL_END
