//
//  NavigationBar.m
//
//  Created by Bhooshan Patil on 06/04/20.
//  Copyright © 2020 Neebal. All rights reserved.
//

#import "NavigationBar.h"

@interface NavigationBar()
@property (strong, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UILabel *titleName;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *backButtonLeadingConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *titleLeadingConstraint;
@property (weak, nonatomic) IBOutlet UIButton *rightBarButton;
@property (nonatomic ,assign) NSString *NIB_NAME;
@end

@implementation NavigationBar

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self customInit];
    }
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self customInit];
    }
    return self;
}
-(void)customInit
{
    
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    [bundle loadNibNamed:@"NavigationBar" owner:self options:nil];
    [self addSubview:self.contentView];
    [self.contentView setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [NSLayoutConstraint activateConstraints:@[[[self.contentView topAnchor] constraintEqualToAnchor:self.topAnchor],
                                              [[self.contentView bottomAnchor] constraintEqualToAnchor:self.bottomAnchor],
                                              [[self.contentView leadingAnchor] constraintEqualToAnchor:self.leadingAnchor],
                                              [[self.contentView trailingAnchor] constraintEqualToAnchor:self.trailingAnchor]]];
}
-(void)setTitle:(NSString *)title{
    [self.titleName setText:title];
}
- (void)setBgColor:(UIColor *)bgColor{
    [self.containerView setBackgroundColor:bgColor];
}
-(void)setHideBackBtn:(BOOL)hideBackBtn{
    [self.backButton setHidden:hideBackBtn];
    [self changePriorities:hideBackBtn];
}
-(void)changePriorities:(BOOL)isHide {
    self.titleLeadingConstraint.priority = isHide ? 999 : 251;
    self.backButtonLeadingConstraint.priority =  isHide ? 251 : 999;
}
-(void)setHideRightBtn:(BOOL)hideRightBtn{
    [self.rightBarButton setHidden:hideRightBtn];
}
- (IBAction)didtapBackButton:(UIButton *)sender {
    
    if ([self.delegate respondsToSelector:@selector(didtapBackBarButton)]) {
        [self.delegate didtapBackBarButton];
    }
}
- (IBAction)didTapRightBarButton:(id)sender {
    if ([self.delegate respondsToSelector:@selector(didtapRightBarButton)]) {
        [self.delegate didtapRightBarButton];
    }
}
@end
