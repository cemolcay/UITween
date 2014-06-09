//
//  UITween.m
//  UITween
//
//  Created by Cem Olcay on 09/06/14.
//  Copyright (c) 2014 studionord. All rights reserved.
//

#import "UITween.h"

#define DEGREES_TO_RADIANS(angle) ((angle) / 180.0 * M_PI)
#define RADIANS_TO_DEGREES(radians) ((radians) * (180.0 / M_PI))

@implementation UITween

#pragma mark - Scale
#pragma mark With Animation
+ (void)scaleTo:(UIView *)view X:(float)x duration:(float)t complation:(void(^)(void))complation {
    [UIView animateWithDuration:t animations:^{
        [view setTransform:CGAffineTransformMakeScale(x, view.transform.d)];
    } completion:^(BOOL finished) {
        if (finished)
            complation ();
    }];
}

+ (void)scaleTo:(UIView *)view Y:(float)y duration:(float)t complation:(void(^)(void))complation {
    [UIView animateWithDuration:t animations:^{
        [view setTransform:CGAffineTransformMakeScale(view.transform.a, y)];
    } completion:^(BOOL finished) {
        if (finished)
            complation ();
    }];
}

+ (void)scaleTo:(UIView *)view X:(float)x Y:(float)y duration:(float)t complation:(void(^)(void))complation {
    [UIView animateWithDuration:t animations:^{
        [view setTransform:CGAffineTransformMakeScale(x, y)];
    } completion:^(BOOL finished) {
        if (finished)
            complation ();
    }];
}

#pragma mark Without Animation
+ (void)scale:(UIView *)view X:(float)x {
    [view setTransform:CGAffineTransformMakeScale(x, view.transform.d)];
}

+ (void)scale:(UIView *)view Y:(float)y {
    [view setTransform:CGAffineTransformMakeScale(view.transform.a, y)];
}

+ (void)scale:(UIView *)view X:(float)x Y:(float)y {
    [view setTransform:CGAffineTransformMakeScale(x, y)];
}


#pragma mark - Rotate
#pragma mark With Animation
+ (void)rotateTo:(UIView *)view X:(float)x duration:(float)t complation:(void(^)(void))complation {
    CATransform3D rotationAndPerspectiveTransform = CATransform3DIdentity;
    rotationAndPerspectiveTransform.m34 = 1.0 / -1000.0;
    rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, DEGREES_TO_RADIANS(x), 1.0f, 0.0f, 0.0f);
    [UIView animateWithDuration:1.0 animations:^{
        view.layer.transform = rotationAndPerspectiveTransform;
    } completion:^(BOOL finished){
        complation ();
    }];
}

+ (void)rotateTo:(UIView *)view Y:(float)y duration:(float)t complation:(void(^)(void))complation {
    CATransform3D rotationAndPerspectiveTransform = CATransform3DIdentity;
    rotationAndPerspectiveTransform.m34 = 1.0 / -1000.0;
    rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, DEGREES_TO_RADIANS(y), 0.0f, 1.0f, 0.0f);
    [UIView animateWithDuration:1.0 animations:^{
        view.layer.transform = rotationAndPerspectiveTransform;
    } completion:^(BOOL finished){
        complation ();
    }];
}

+ (void)rotateTo:(UIView *)view Z:(float)z duration:(float)t complation:(void(^)(void))complation {
    CATransform3D rotationAndPerspectiveTransform = CATransform3DIdentity;
    rotationAndPerspectiveTransform.m34 = 1.0 / -1000.0;
    rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, DEGREES_TO_RADIANS(z), 0.0f, 0.0f, 1.0f);
    [UIView animateWithDuration:1.0 animations:^{
        view.layer.transform = rotationAndPerspectiveTransform;
    } completion:^(BOOL finished){
        complation ();
    }];
}

+ (void)rotateTo:(UIView *)view X:(float)x Y:(float)y Z:(float)z duration:(float)t complation:(void(^)(void))complation {
    CATransform3D rotationAndPerspectiveTransform = CATransform3DIdentity;
    rotationAndPerspectiveTransform.m34 = 1.0 / -1000.0;
    rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, DEGREES_TO_RADIANS(x), 1.0f, 0.0f, 0.0f);
    rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, DEGREES_TO_RADIANS(y), 0.0f, 1.0f, 0.0f);
    rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, DEGREES_TO_RADIANS(z), 0.0f, 0.0f, 1.0f);
    [UIView animateWithDuration:1.0 animations:^{
        view.layer.transform = rotationAndPerspectiveTransform;
    } completion:^(BOOL finished){
        complation ();
    }];
}

#pragma mark Without Animation
+ (void)rotate:(UIView *)view X:(float)x {
    CATransform3D rotationAndPerspectiveTransform = CATransform3DIdentity;
    rotationAndPerspectiveTransform.m34 = 1.0 / -1000.0;
    rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, DEGREES_TO_RADIANS(x), 1.0f, 0.0f, 0.0f);
    view.layer.transform = rotationAndPerspectiveTransform;
}

+ (void)rotate:(UIView *)view Y:(float)y {
    CATransform3D rotationAndPerspectiveTransform = CATransform3DIdentity;
    rotationAndPerspectiveTransform.m34 = 1.0 / -1000.0;
    rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, DEGREES_TO_RADIANS(y), 0.0f, 1.0f, 0.0f);
    view.layer.transform = rotationAndPerspectiveTransform;
}

+ (void)rotate:(UIView *)view Z:(float)z {
    CATransform3D rotationAndPerspectiveTransform = CATransform3DIdentity;
    rotationAndPerspectiveTransform.m34 = 1.0 / -1000.0;
    rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, DEGREES_TO_RADIANS(z), 0.0f, 0.0f, 1.0f);
    view.layer.transform = rotationAndPerspectiveTransform;
}

+ (void)rotate:(UIView *)view X:(float)x Y:(float)y Z:(float)z {
    CATransform3D rotationAndPerspectiveTransform = CATransform3DIdentity;
    rotationAndPerspectiveTransform.m34 = 1.0 / -1000.0;
    
    rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, DEGREES_TO_RADIANS(x), 1.0f, 0.0f, 0.0f);
    rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, DEGREES_TO_RADIANS(y), 0.0f, 1.0f, 0.0f);
    rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, DEGREES_TO_RADIANS(z), 0.0f, 0.0f, 1.0f);

    view.layer.transform = rotationAndPerspectiveTransform;
}

#pragma mark - Move
#pragma mark With Animation
+ (void)moveTo:(UIView *)view X:(float)x duration:(float)t complation:(void(^)(void))complation {
    [UIView animateWithDuration:t animations:^{
        [view setFrame:CGRectMake(x, view.frame.origin.y, view.frame.size.width, view.frame.size.height)];
    } completion:^(BOOL finished) {
        if (finished)
            complation ();
    }];
}

+ (void)moveTo:(UIView *)view Y:(float)y duration:(float)t complation:(void(^)(void))complation {
    [UIView animateWithDuration:t animations:^{
        [view setFrame:CGRectMake(view.frame.origin.x, y, view.frame.size.width, view.frame.size.height)];
    } completion:^(BOOL finished) {
        if (finished)
            complation ();
    }];
}

+ (void)moveTo:(UIView *)view X:(float)x Y:(float)y duration:(float)t complation:(void(^)(void))complation {
    [UIView animateWithDuration:t animations:^{
        [view setFrame:CGRectMake(x, y, view.frame.size.width, view.frame.size.height)];
    } completion:^(BOOL finished) {
        if (finished)
            complation ();
    }];
}

#pragma mark Without Animation
+ (void)move:(UIView *)view X:(float)x {
    [view setFrame:CGRectMake(x, view.frame.origin.y, view.frame.size.width, view.frame.size.height)];
}

+ (void)move:(UIView *)view Y:(float)y {
    [view setFrame:CGRectMake(view.frame.origin.x, y, view.frame.size.width, view.frame.size.height)];
}

+ (void)move:(UIView *)view X:(float)x Y:(float)y {
    
    [view setFrame:CGRectMake(x, y, view.frame.size.width, view.frame.size.height)];
}


@end
