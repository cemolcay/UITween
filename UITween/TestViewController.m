//
//  TestViewController.m
//  UITween
//
//  Created by Cem Olcay on 09/06/14.
//  Copyright (c) 2014 studionord. All rights reserved.
//

#import "TestViewController.h"
#import "UITween.h"

@implementation TestViewController

- (instancetype) init {
    if ((self = [super init])) {
        
    }
    return self;
}

- (void)viewDidLoad {
    UIView *v = [[UIView alloc] initWithFrame:CGRectMake(0, 100, 120, 120)];
    [v setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:v];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap:)];
    [tap setNumberOfTapsRequired:1];
    [v addGestureRecognizer:tap];
}

//testing
- (void)tap:(UITapGestureRecognizer *)t {
    
//   Animated
//
//    scale
//    
//    [UITween scaleTo:t.view X:2 duration:2 delay:0 complation:^{
//        NSLog(@"scale comp");
//    }];
//
//    [UITween scaleTo:t.view Y:2 duration:2 delay:0 complation:^{
//        NSLog(@"scale comp");
//    }];
//    
//    [UITween scaleTo:t.view X:2 Y:2 duration:2 delay:0 complation:^{
//        NSLog(@"scale comp");
//    }];
//    
//    
//    move
//    
//    [UITween moveTo:t.view X:30 duration:2 delay:0 complation:^{
//        NSLog(@"move comp");
//    }];
//    
//    [UITween moveTo:t.view Y:30 duration:2 delay:0 complation:^{
//        NSLog(@"move comp");
//    }];
//    
//    [UITween moveTo:t.view X:30 Y:30 duration:2 delay:0 complation:^{
//        NSLog(@"move comp");
//    }];
//    
//    
//    rotation
//    
//    [UITween rotateTo:t.view X:-45 duration:2 delay:0 complation:^{
//        NSLog(@"rot comp");
//    }];
//
//    [UITween rotateTo:t.view Y:45 duration:2 delay:0 complation:^{
//        NSLog(@"rot comp");
//    }];
//    
//    [UITween rotateTo:t.view Z:45 duration:2 delay:0 complation:^{
//        NSLog(@"rot comp");
//    }];
//    
//    [UITween rotateTo:t.view X:45 Y:45 Z:90 duration:2 delay:0 complation:^{
//        NSLog(@"rot comp");
//    }];
//
//    
//
//    Not Animated
//    
//    scale
//    [UITween scale:t.view X:2];
//    [UITween scale:t.view Y:2];
//    [UITween scale:t.view X:2 Y:2];
//    
//    rotate
//    [UITween rotate:t.view X:45];
//    [UITween rotate:t.view Y:45];
//    [UITween rotate:t.view Z:45];
//    [UITween rotate:t.view X:45 Y:45 Z:45];
//
//    move
//    [UITween move:t.view X:30];
//    [UITween move:t.view Y:30];
//    [UITween move:t.view X:30 Y:30];
//
//
//    Spring
//    
//    scale
//    [UITween scaleTo:t.view X:2 springDamping:100 springVelocity:10 duration:2 delay:0 complation:nil];
//    [UITween scaleTo:t.view Y:2 springDamping:100 springVelocity:10 duration:2 delay:0 complation:nil];
//    [UITween scaleTo:t.view X:2 Y:2 springDamping:100 springVelocity:10 duration:2 delay:0 complation:nil];
//    
//    rotate
//    [UITween rotateTo:t.view X:40 springDamping:100 springVelocity:10 duration:2 delay:0 complation:nil];
//    [UITween rotateTo:t.view Y:40 springDamping:100 springVelocity:10 duration:2 delay:0 complation:nil];
//    [UITween rotateTo:t.view Z:40 springDamping:100 springVelocity:10 duration:2 delay:0 complation:nil];
//    [UITween rotateTo:t.view X:40 Y:40 Z:40 springDamping:100 springVelocity:10 duration:2 delay:0 complation:nil];
//
//    move
//    [UITween moveTo:t.view X:30 springDamping:100 springVelocity:10 duration:2 delay:0 complation:nil];
//    [UITween moveTo:t.view Y:30 springDamping:100 springVelocity:10 duration:2 delay:0 complation:nil];
//    [UITween moveTo:t.view X:30 Y:30 springDamping:100 springVelocity:10 duration:2 delay:0 complation:nil];
//
}

@end
