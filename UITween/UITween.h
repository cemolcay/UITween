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

//With Animation
+ (void)scaleTo:(UIView *)view X:(float)x duration:(float)t delay:(float)delay complation:(void(^)(void))complation;
+ (void)scaleTo:(UIView *)view Y:(float)y duration:(float)t delay:(float)delay complation:(void(^)(void))complation;

+ (void)scaleTo:(UIView *)view X:(float)x Y:(float)y duration:(float)t delay:(float)delay complation:(void(^)(void))complation;

//With Spring
+ (void)scaleTo:(UIView *)view X:(float)x springDamping:(float)damping springVelocity:(float)velocity duration:(float)t delay:(float)delay complation:(void (^)(void))complation;
+ (void)scaleTo:(UIView *)view Y:(float)y springDamping:(float)damping springVelocity:(float)velocity duration:(float)t delay:(float)delay complation:(void (^)(void))complation;
+ (void)scaleTo:(UIView *)view X:(float)x Y:(float)y springDamping:(float)damping springVelocity:(float)velocity duration:(float)t delay:(float)delay complation:(void (^)(void))complation;

//Without Animation
+ (void)scale:(UIView *)view X:(float)x;
+ (void)scale:(UIView *)view Y:(float)y;

+ (void)scale:(UIView *)view X:(float)x Y:(float)y;

//Rotate

//With Animation
+ (void)rotateTo:(UIView *)view X:(float)x duration:(float)t delay:(float)delay complation:(void(^)(void))complation;
+ (void)rotateTo:(UIView *)view Y:(float)y duration:(float)t delay:(float)delay complation:(void(^)(void))complation;
+ (void)rotateTo:(UIView *)view Z:(float)z duration:(float)t delay:(float)delay complation:(void(^)(void))complation;

+ (void)rotateTo:(UIView *)view X:(float)x Y:(float)y Z:(float)z duration:(float)t delay:(float)delay complation:(void(^)(void))complation;

//With Spring
+ (void)rotateTo:(UIView *)view X:(float)x springDamping:(float)damping springVelocity:(float)velocity duration:(float)t delay:(float)delay complation:(void(^)(void))complation;
+ (void)rotateTo:(UIView *)view Y:(float)y springDamping:(float)damping springVelocity:(float)velocity duration:(float)t delay:(float)delay complation:(void(^)(void))complation;
+ (void)rotateTo:(UIView *)view Z:(float)z springDamping:(float)damping springVelocity:(float)velocity duration:(float)t delay:(float)delay complation:(void(^)(void))complation;

+ (void)rotateTo:(UIView *)view X:(float)x Y:(float)y Z:(float)z springDamping:(float)damping springVelocity:(float)velocity duration:(float)t delay:(float)delay complation:(void(^)(void))complation;

//Without Animation
+(void)rotate:(UIView *)view X:(float)x;
+(void)rotate:(UIView *)view Y:(float)y;
+(void)rotate:(UIView *)view Z:(float)z;

+(void)rotate:(UIView *)view X:(float)x Y:(float)y Z:(float)z;

//Move

//With Animation
+ (void)moveTo:(UIView *)view X:(float)x duration:(float)t delay:(float)delay complation:(void(^)(void))complation;
+ (void)moveTo:(UIView *)view Y:(float)y duration:(float)t delay:(float)delay complation:(void(^)(void))complation;

+ (void)moveTo:(UIView *)view X:(float)x Y:(float)y duration:(float)t delay:(float)delay complation:(void(^)(void))complation;

//With Spring
+ (void)moveTo:(UIView *)view X:(float)x  springDamping:(float)damping springVelocity:(float)velocity duration:(float)t delay:(float)delay complation:(void (^)(void))complation;
+ (void)moveTo:(UIView *)view Y:(float)y  springDamping:(float)damping springVelocity:(float)velocity duration:(float)t delay:(float)delay complation:(void (^)(void))complation;

+ (void)moveTo:(UIView *)view X:(float)x Y:(float)y  springDamping:(float)damping springVelocity:(float)velocity duration:(float)t delay:(float)delay complation:(void (^)(void))complation;

//Without Animation
+ (void)move:(UIView *)view X:(float)x;
+ (void)move:(UIView *)view Y:(float)y;

+ (void)move:(UIView *)view X:(float)x Y:(float)y;

@end
