//
//  AViewController.m
//  CustomNavigationController-Objc
//
//  Created by Bhooshan Patil on 02/01/21.
//

#import "AViewController.h"
#import "NavigationBar.h"

@interface AViewController ()
@property (weak, nonatomic) IBOutlet NavigationBar *navigationBar;
@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /**
     -IMP
     - backOnTap => YES if you go back directly
     - backOnTap => NO if you want to handle back action
     */
    [self addNavigationBar:_navigationBar backOnTap:YES];
}

-(void)onBackButtonTap{
    /**
     - this methd will get called if you passed NO in `backOnTap`
     - controller will not get popped , you have to handle it manually
     -  do your back button code ,like showing alert, and then use [self.navigationController popViewControllerAnimated:YES] to go back
     */
    NSLog(@"you pressed back button");
}
-(void)onRightBarButtonTap{
    
    /**
     - this method will get called if you tap right bar button
     - do your on right bar button tap code
     */
    NSLog(@"you pressed right bar button");
}


@end
