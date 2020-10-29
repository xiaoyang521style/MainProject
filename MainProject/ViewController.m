//
//  ViewController.m
//  MainProject
//
//  Created by Apple on 2020/10/28.
//

#import "ViewController.h"
#import "ZYMediator+ZYLoginModule.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UIViewController *VC = [[ZYMediator sharedInstance]LoginModule_viewControllerWithParam:@{} callback:^(NSString * _Nonnull result) {
        NSLog(@"resultA: --- %@", result);
    }];
    [self.navigationController pushViewController:VC animated:YES];
}

@end
