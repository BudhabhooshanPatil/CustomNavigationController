//
//  ViewController.m
//  CustomNavigationController-Objc
//
//  Created by Bhooshan Patil on 02/01/21.
//

#import "ViewController.h"
#import "A-ViewController/AViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)onPushBtnAction:(UIButton *)sender {
    
    AViewController *contr = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"aViewController"];
    [self.navigationController pushViewController:contr animated:YES];
    
}
@end
