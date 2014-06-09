//
//  UITween.h
//  UITween
//
//  Created by Cem Olcay on 09/06/14.
//  Copyright (c) 2014 studionord. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UITween : NSObject

//Scale
+ (void)scaleTo:(UIView *)view X:(float)x duration:(float)t complation:(void(^)(void))complation;
+ (void)scaleTo:(UIView *)view Y:(float)y duration:(float)t complation:(void(^)(void))complation;

+ (void)scaleTo:(UIView *)view X:(float)x Y:(float)y duration:(float)t complation:(void(^)(void))complation;

//Rotate
+ (void)rotateTo:(UIView *)view X:(float)x duration:(float)t complation:(void(^)(void))complation;
+ (void)rotateTo:(UIView *)view Y:(float)y duration:(float)t complation:(void(^)(void))complation;
+ (void)rotateTo:(UIView *)view Z:(float)z duration:(float)t complation:(void(^)(void))complation;

+ (void)rotateTo:(UIView *)view X:(float)x Y:(float)y Z:(float)z duration:(float)t complation:(void(^)(void))complation;

//Move
+ (void)moveTo:(UIView *)view X:(float)x duration:(float)t complation:(void(^)(void))complation;
+ (void)moveTo:(UIView *)view Y:(float)y duration:(float)t complation:(void(^)(void))complation;

+ (void)moveTo:(UIView *)view X:(float)x Y:(float)y duration:(float)t complation:(void(^)(void))complation;


@end
