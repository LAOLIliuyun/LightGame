//
//  ViewController.m
//  game(lightgame)
//
//  Created by Macx on 16/5/31.
//  Copyright © 2016年 Macx. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
        UIButton *button;
}
@property (nonatomic,strong)NSString *mm;
@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mm = @"";
    for (int i = 0; i < 5; i++) {
         for (int j = 0; j < 5; j++) {
        button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.frame = CGRectMake(15 + 60 * j , 50 + 60 *i, 50, 50);
        [button setBackgroundImage:[UIImage imageNamed:@"friend_unselected@2x副本"] forState:UIControlStateNormal];
            
        [button setBackgroundImage:[UIImage imageNamed:@"friend_selected@2x副本"] forState:UIControlStateSelected];
            
        
        [button addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
        button.tag = 120 + 10 * i + j;
        [self.view addSubview:button];
        
             
             
             
             
        }
    }
    [self addObserver:self forKeyPath:@"mm" options:NSKeyValueObservingOptionNew context:nil];
 }



- (void)click:(UIButton *)btn

{
        
    btn.selected = !btn.selected;
    
    UIButton *upButton = [self.view viewWithTag:btn.tag - 10];
    
    upButton.selected = !upButton.selected;
    
    UIButton *downButton = [self.view viewWithTag:btn.tag + 10];
    
    downButton.selected = !downButton.selected;
    
    UIButton *leftButton = [self.view viewWithTag:btn.tag - 1];
    
    leftButton.selected = !leftButton.selected;
    
    UIButton *rightButton = [self.view viewWithTag:btn.tag + 1];
    
        rightButton.selected = !rightButton.selected;
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
