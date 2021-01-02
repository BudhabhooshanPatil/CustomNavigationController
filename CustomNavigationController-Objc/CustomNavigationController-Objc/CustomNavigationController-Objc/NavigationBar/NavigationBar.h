//
// NavigationBar.h
//
//  Created by Bhooshan Patil on 06/04/20.
//  Copyright © 2020 Neebal. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NavigationBarDelegate <NSObject>
-(void)didtapBackBarButton;
@optional
-(void)didtapRightBarButton;
@end

NS_ASSUME_NONNULL_BEGIN

IB_DESIGNABLE

@interface NavigationBar : UIView
@property (nonatomic ,assign ) IBInspectable NSString *title;
@property (nonatomic ,assign ) IBInspectable UIColor *bgColor;
@property (nonatomic) IBInspectable BOOL hideBackBtn;
@property (strong, nonatomic) IBOutlet UIButton *backButton;
@property (nonatomic ,assign) IBInspectable BOOL hideRightBtn;
@property (nonatomic, weak) id<NavigationBarDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
